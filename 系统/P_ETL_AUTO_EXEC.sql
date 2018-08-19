CREATE OR REPLACE PROCEDURE PUB_SYS.P_ETL_AUTO_EXEC(O_N_CODE       OUT INT,
                                                    O_S_NOTE       OUT VARCHAR2,
                                                    I_N_TJRQ       IN NUMBER,
                                                    I_S_EXEC_OWNER IN VARCHAR2,
                                                    I_N_REDO       IN NUMBER DEFAULT 0,
                                                    I_N_PROCNO     IN NUMBER := 0)
/*-----------------------------------------------------------------------
         项目名称：   NDSC-数据服务中心
         用户名：     PUB_SYS
         过程名称:    ETL自动总调程序
         功能简述：
         参数：
                  英文名称            中文名称                可能取值
                  O_N_CODE            返回代码                0 正常；-1 异常
                  O_S_NOTE            返回信息                字符串信息
                  I_N_STATDATE        统计日期
                  I_S_EXEC_OWNER      调度方案
                  I_N_REDO            重做标识                0：不重做    1：重做   2:初始化
                  i_n_procno          主要用于调试            0：全部，其它则是具体的procno
         返回：
         算法：
         注意事项：
             注意：
             1、本表为历史表，如需重跑（REDO=1）只能在数据出错的那天重跑，如果隔了几天才发现
             则不能使用重跑功能，需人为介入手工处理。
             2、日志编码PROC_NO=000010
             3、如果因为某些原因存在其它“ETL_DSC_”的任务，则可能调度上会存在一些问题，所以应该避免这种情况。
            目前严格限制PROC_NAME必须是过程名称，但没有限定是独立的过程还是属于包括中过程
            目前也只是接受这两种类型，其它，暂时不接受.所以需要根据proc_name来判断类型，
            凡是带有点号的就认为是包裹中的过程.
         数据源：
             PUB_SYS.T_ETL_PROC_MANAGE
         修改记录;
         ------------------------------------------------------------------------
         操作人        操作时间                   操作
         胡阳明        2011/11/21                 创建
         胡阳明        2012/04/01                 修改：增加进行过程无效编译，
                                                        如果编译失败直接置运行完成，写失败日志
         LZF           2012/09/17                 修改，判断的标识不合理，导致有些过程会重复调度或者某些日期会遗漏。
                                                  为了严格规范，采用拓展exec_flag而不是利用exec_tjrq的方式
         lzf           2013/06/26                 修改，过程参数不再指定名称，但对格式还是有要求：CODE,NOTE,TJRJ/（KSRQ,JSRQ),REDO
         lzf           2013/09/17                 修改，解决一个严重的bug，由于在job内容中没有提交，可能导致死循环.
                                                  同时调整任务的脚本使得看起来更美观一些。
         lzf           2013/09/26                 修改，解决无法编译所带来的异常.
         lzf           2013/10/23                 修改，解决RAC下并发失控的问题 ，同时为了避免job_name可能重名带来的副作用(名称的前面一部分不能重复）
                                                  任务名称使用ETL_DSC_||PROC_NO,以后查看任务名称看COMMENT
         LZF           2013/11/20                 修改，判断并发的存在问题，在内存，并不表示就是在执行. 并取消一个重复计算的部分。
         LZF           2014/08/07                 修改，并发控制通过数组和日志控制，而不是scheduler等有关视图。
         lzf           2015/01/27                 修改，I_S_EXEC_OWNER不再表示OWNER而是PRJ_CODE
         胡丹丹        2016/02/24                 修改：1)每个过程执行前加一层判断处理，先判断JOB是否已经存在，如果已经存在的话，就要执行删除操作
                                                        2)更新判断过程是否执行完的条件
         胡丹丹        2016/04/14                 修改：1）同一层中，如果某过程执行失败，依赖于它的过程则不调度
                                                        2）获取需要执行的过程的信息，只取用户调度顺序表中有效的用户
    */
 IS
    VS_PROC_NAME          VARCHAR2(100); --过程名
    VN_LOGID              INT; --LOG 表记录ID
    VN_LOGID_WAIT         INT;
    VN_TJRQ               NUMBER(8) := I_N_TJRQ; --统计日期
    VS_PROC               VARCHAR2(20500);
    VN_MAX_BFS            NUMBER; --系统参数中允许的最大并发数
    VN_EXEC_BFS           NUMBER := 0; --运行时候并发数
    VN_SLEEPTIME          NUMBER; --睡眠时间
    VN_TIME_OUT           NUMBER; --超时限制
    VN_DEBUG_AE_RUN_ORDER INT; --记录信息到T_ETL_RUN_ORDER_DEBUG
    VN_EXEC_FLAG          NUMBER := 0;
    VN_CN_RELY            NUMBER := 0; --依赖
    VD_STARTIME           DATE := SYSDATE;
    --
    VD_BEGIN_TIME    DATE := SYSDATE;
    VT_BEING_WAIT    TIMESTAMP;
    VN_PROC_NO       PUB_SYS.T_ETL_PROC_MANAGE.PROC_NO%TYPE;
    VN_PROC_NO_PARAM PUB_SYS.T_ETL_PROC_MANAGE.PROC_NO%TYPE := NVL(I_N_PROCNO, 0);
    --VN_JOB_CNT      INT;
    VS_JOB_PREFIX   VARCHAR2(10) := 'ETL_DSC_'; --作业名称前缀
    VS_PROC_STAT    INT; --过程状态
    VN_DOT_POS      PLS_INTEGER;
    VN_YM_JYR       NUMBER(8) := DSC_CFG.F_GET_JYR_DATE(VN_TJRQ, 9999);
    VN_YM_EXEC_FLAG INT := 0;
    VN_STEP  PLS_INTEGER;
    VS_USER  VARCHAR2(30) := 'PUB_SYS';
    VN_COUNT PLS_INTEGER;
    VS_MSG   T_PROC_LOG_DETAIL.CHANGE_DESC%TYPE;
    --
    VS_JOBNAME    USER_SCHEDULER_JOBS.JOB_NAME%TYPE;
    VS_JOBCOMMENT USER_SCHEDULER_JOBS.COMMENTS%TYPE;
    --TYPE TA_PROC    IS TABLE OF t_Etl_Proc_Manage%rowtype;
    VA_PROCS        TYPE_ARR_AE := TYPE_ARR_AE();
    VA_PROCS_RUN    TYPE_ARR_AE := TYPE_ARR_AE();
    J               PLS_INTEGER;
    VN_RUN_ORDER    PLS_INTEGER;
    VS_COMPILE_NAME VARCHAR2(60); --调用编译过程时候所需要的对象名称
    VS_OBJECT_TYPE  VARCHAR2(30); --编译类型
    EXP_RUN_TOO_LONG EXCEPTION;
    VS_IS_TRAN_YL_EXEC VARCHAR2(2);
    PRAGMA EXCEPTION_INIT(EXP_RUN_TOO_LONG, -20100);
    FUNCTION F_EAE_SUB_GETUNRUNCOUNT RETURN PLS_INTEGER IS
        /*
          计算尚未执行的过程个数
        */
        VN_RUNCOUNT PLS_INTEGER := 0;
        VN_KEY      PLS_INTEGER;
    BEGIN
        FOR VN_KEY IN 1 .. VA_PROCS_RUN.COUNT LOOP
            IF VA_PROCS_RUN(VN_KEY).EXEC_FLAG = 0 THEN
                VN_RUNCOUNT := VN_RUNCOUNT + 1;
            END IF;
        END LOOP;
        RETURN VN_RUNCOUNT;
    END;
    FUNCTION F_EAE_SUB_GETRUNCOUNT RETURN PLS_INTEGER IS
        /*
          计算已经在队列中的过程,正在执行的状态为2.
        */
        VN_RUNCOUNT PLS_INTEGER := 0;
        VN_KEY      PLS_INTEGER;
    BEGIN
        FOR VN_KEY IN 1 .. VA_PROCS_RUN.COUNT LOOP
            IF VA_PROCS_RUN(VN_KEY).EXEC_FLAG = 2 THEN
                VN_RUNCOUNT := VN_RUNCOUNT + 1;
            END IF;
        END LOOP;
        RETURN VN_RUNCOUNT;
    END;
    PROCEDURE P_EAE_SUB_SET_RUN_STATUS(I_N_PROC_NO IN NUMBER, I_N_RUN_STATUS IN INT) IS
        /*
         设置单个过程的执行状态为1-正在执行，或者执行完成。
        */
        VN_KEY PLS_INTEGER;
    BEGIN
        FOR VN_KEY IN 1 .. VA_PROCS_RUN.COUNT LOOP
            IF VA_PROCS_RUN(VN_KEY).PROC_NO = I_N_PROC_NO THEN
                VA_PROCS_RUN(VN_KEY).EXEC_FLAG := I_N_RUN_STATUS;
                RETURN;
            END IF;
        END LOOP;
    END;
    PROCEDURE P_EAE_SUB_REFRESH_STATUS IS
        /*
          设置所有过程的执行状态为1-正在执行，或者执行完成。
          但在va_procs_RUN中2是表示正在执行，1表示完成
        */
        VN_KEY        PLS_INTEGER;
        VN_RUN_STATUS INT;
    BEGIN
        FOR VN_KEY IN 1 .. VA_PROCS_RUN.COUNT LOOP
            IF VA_PROCS_RUN(VN_KEY).EXEC_FLAG = 2 THEN
                BEGIN
                    --成功或者失败都是完成，其它就是正在运行
                    --没有查到就是异常，不更新。
                    SELECT CASE
                               WHEN RET_CODE IN (0, -1) THEN
                                1 --完成
                               ELSE
                                2 --正在执行
                           END
                      INTO VN_RUN_STATUS
                      FROM PUB_SYS.T_PROC_LOG T
                     WHERE T.LOG_ID = (SELECT MAX(LOG_ID)
                                         FROM PUB_SYS.T_PROC_LOG Y
                                        WHERE Y.PROC_NO = VA_PROCS_RUN(VN_KEY).PROC_NO
                                          AND Y.TJRQ = I_N_TJRQ
                                          AND Y.BEGIN_TIME >= VD_STARTIME);
                    VA_PROCS_RUN(VN_KEY).EXEC_FLAG := VN_RUN_STATUS;
                EXCEPTION
                    --其它如尚未生成日志等等，都当作正在执行
                    WHEN OTHERS THEN
                        NULL;
                END;
            END IF;
        END LOOP;
    END;
BEGIN
    --存储过程开始
    --变量初始化
    SELECT PUB_SYS.SEQ_T_PROC_LOG.NEXTVAL INTO VN_LOGID FROM DUAL;
    VS_PROC_NAME := 'P_ETL_AUTO_EXEC';
    O_N_CODE     := PKG_GCONST.PROCRUNRESULTSUCCESSFUL;
    O_S_NOTE     := '运行正常';
    VN_PROC_NO   := 900010;
    --记录日志
    PUB_SYS.P_LOG_PROC(VN_PROC_NO,
                       VN_LOGID,
                       'PUB_SYS',
                       VS_PROC_NAME,
                       VN_TJRQ,
                       1,
                       '正在运行',
                       I_N_REDO,
                       0);
    --1.0获取各种参数
    --获取ETL并发数，及睡眠参数,超时限制 ，记录运行顺序
    VN_MAX_BFS            := PUB_SYS.F_GET_PARAMVALUE(I_S_KIND_CODE       => '01',
                                                      I_S_PARAM_CODE      => 'BFS',
                                                      I_S_DEF_VALUE       => '5',
                                                      I_N_CHECK_DATA_TYPE => 1);
    VN_SLEEPTIME          := PUB_SYS.F_GET_PARAMVALUE(I_S_KIND_CODE       => '01',
                                                      I_S_PARAM_CODE      => 'SLEEPTIME',
                                                      I_S_DEF_VALUE       => '1',
                                                      I_N_CHECK_DATA_TYPE => 1);
    VN_TIME_OUT           := PUB_SYS.F_GET_PARAMVALUE(I_S_KIND_CODE       => '01',
                                                      I_S_PARAM_CODE      => 'TIME_OUT',
                                                      I_S_DEF_VALUE       => '420',
                                                      I_N_CHECK_DATA_TYPE => 1);
    VN_DEBUG_AE_RUN_ORDER := PUB_SYS.F_GET_PARAMVALUE(I_S_KIND_CODE       => '01',
                                                      I_S_PARAM_CODE      => 'DEBUG_AE_RUN_ORDER',
                                                      I_S_DEF_VALUE       => '0',
                                                      I_N_CHECK_DATA_TYPE => 1);
    --月末是否运行标志
    IF VN_YM_JYR = VN_TJRQ THEN
        VN_YM_EXEC_FLAG := 1;
    END IF;
    --2.0初始化
    --调度前，先将需要调度的ETL置为未调度
    UPDATE PUB_SYS.T_ETL_PROC_MANAGE A
       SET EXEC_FLAG = 0, EXEC_TJRQ = NULL
     WHERE EXISTS (SELECT 1
              FROM PUB_SYS.T_ETL_LVL_RUN_ORDER B
             WHERE B.OWNER = A.PROC_OWNER
               AND B.ISVALID = 1
               AND B.PRJ_CODE = I_S_EXEC_OWNER)
          --A.PROC_OWNER = I_S_EXEC_OWNER
       AND (A.EXEC_FLAG = 1 OR A.EXEC_FLAG = 2)
       AND A.IS_VALID = 1
       AND A.IS_EXEC = 1
       AND (VN_YM_EXEC_FLAG = 1 OR EXEC_CYCLE <> 'Y')
       AND (VN_PROC_NO_PARAM = 0 OR A.PROC_NO = VN_PROC_NO_PARAM);
    COMMIT;
    --获取需要执行的过程的信息
    --2.1用于控制并发
    SELECT TYPE_REC_AE(A.PROC_OWNER, A.PROC_NAME, A.PROC_NO, 0, EXEC_RQ_MODE) BULK COLLECT
      INTO VA_PROCS_RUN
      FROM PUB_SYS.T_ETL_PROC_MANAGE A
      JOIN PUB_SYS.T_ETL_LVL_RUN_ORDER R
        ON R.OWNER = A.PROC_OWNER
       AND R.ISVALID = 1
       AND R.PRJ_CODE = I_S_EXEC_OWNER
     WHERE A.IS_VALID = 1
       AND A.IS_EXEC = 1
       AND (VN_YM_EXEC_FLAG = 1 OR EXEC_CYCLE <> 'Y')
       AND (VN_PROC_NO_PARAM = 0 OR A.PROC_NO = VN_PROC_NO_PARAM);
    VN_STEP := 0;
    --3.0 检查过程情况
    --检查是否存在错误配置的过程
    VN_STEP := VN_STEP + 1;
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '检查是否存在错误配置的过程',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '正在运行！',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    --3.1主要是检查:是否有过程名称写错的，以及过程是否状态无效等等,检查是否配置错误了
    SELECT COUNT(*)
      INTO VN_COUNT
      FROM T_ETL_PROC_MANAGE A
      JOIN PUB_SYS.T_ETL_LVL_RUN_ORDER R
        ON R.OWNER = A.PROC_OWNER
       AND R.ISVALID = 1
       AND R.PRJ_CODE = I_S_EXEC_OWNER
     WHERE A.EXEC_FLAG = 0
       AND A.IS_VALID = 1
       AND A.IS_EXEC = 1
       AND (VN_YM_EXEC_FLAG = 1 OR EXEC_CYCLE <> 'Y')
       AND (VN_PROC_NO_PARAM = 0 OR A.PROC_NO = VN_PROC_NO_PARAM)
       AND NOT EXISTS
     (SELECT 1
              FROM ALL_PROCEDURES B
             WHERE B.OWNER = A.PROC_OWNER
               AND (B.OBJECT_NAME = A.PROC_NAME OR
                   B.OBJECT_NAME || '.' || B.PROCEDURE_NAME = A.PROC_NAME));
    VS_MSG := I_S_EXEC_OWNER || '名称写错的过程个数:' || VN_COUNT;
    --3.2检查状态有问题的过程
    SELECT COUNT(*)
      INTO VN_COUNT
      FROM T_ETL_PROC_MANAGE A
      JOIN PUB_SYS.T_ETL_LVL_RUN_ORDER R
        ON R.OWNER = A.PROC_OWNER
       AND R.ISVALID = 1
       AND R.PRJ_CODE = I_S_EXEC_OWNER
     WHERE A.EXEC_FLAG = 0
       AND A.IS_VALID = 1
       AND A.IS_EXEC = 1
       AND (VN_YM_EXEC_FLAG = 1 OR EXEC_CYCLE <> 'Y')
       AND (VN_PROC_NO_PARAM = 0 OR A.PROC_NO = VN_PROC_NO_PARAM)
       AND EXISTS
     (SELECT 1
              FROM ALL_OBJECTS B
             WHERE B.OBJECT_TYPE IN ('PROCEDURE', 'FUNCTION', 'PACKAGE BODY')
               AND B.OWNER = A.PROC_OWNER
               AND B.STATUS = 'INVALID'
               AND (B.OBJECT_NAME = A.PROC_NAME OR
                   (INSTR(A.PROC_NAME, '.') > 0 AND
                   B.OBJECT_NAME = SUBSTR(A.PROC_NAME, 1, INSTR(A.PROC_NAME, '.') - 1))));
    VS_MSG := VS_MSG || CHR(10);
    VS_MSG := VS_MSG || I_S_EXEC_OWNER || '状体不可用的过程个数:' || VN_COUNT;
    O_S_NOTE := '运行正常';
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '检查是否存在错误配置的过程',
                              I_S_CHANGEDESC     => VS_MSG,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);
    --4.0循环执行
    VN_RUN_ORDER := 0;
    --进入调度总循环
    LOOP
        --20150128,由于不再使用t_etl_proc_manage控制，原有注释简化
        VA_PROCS := VA_PROCS_RUN;
        EXIT WHEN F_EAE_SUB_GETUNRUNCOUNT = 0;
        FOR J IN 1 .. VA_PROCS.COUNT LOOP
            --只处理那些尚未执行的
            IF VA_PROCS(J).EXEC_FLAG <> 0 THEN
                GOTO NEXT_PROC;
            END IF;
            --设置作业名称
            VS_JOBNAME    := VS_JOB_PREFIX || VA_PROCS(J).PROC_NO;
            VS_JOBCOMMENT := VA_PROCS(J).PROC_NAME;
            --调度过程前检查依赖的过程是否运行完成
            SELECT COUNT(1)
              INTO VN_CN_RELY
              FROM PUB_SYS.T_ETL_PROC_MANAGE T
             WHERE T.IS_EXEC = 1
               AND T.IS_VALID = 1 --只检查有运行，以阻止没有正确地设置rely
               AND (T.EXEC_FLAG = 0 --未开始运行
                   OR T.EXEC_FLAG = 2 --还在运行
                   )
               AND T.PROC_NO IN (SELECT A.RELY_PROC_NO
                                   FROM PUB_SYS.T_ETL_PROC_MANAGE_RELY A
                                  WHERE A.IS_VALID = 1
                                    AND A.PROC_NO = VA_PROCS(J).PROC_NO);
            --刷新状态
            P_EAE_SUB_REFRESH_STATUS;
            --获取并发任务数目
            VN_EXEC_BFS := F_EAE_SUB_GETRUNCOUNT;
            --如果不存在依赖、且没有达到并发上限、且当前过程的代码尚未执行，且当前代码的任务不存在，则运行
            --反之，转到下一个步骤
            IF NOT (VN_CN_RELY = 0 AND VN_MAX_BFS > VN_EXEC_BFS) THEN
                GOTO NEXT_PROC;
            END IF;
            --运行的作业对象状态
            VS_PROC_STAT := F_GET_OBJ_STATE(I_S_OWNER     => VA_PROCS(J).PROC_OWNER,
                                            I_S_PROC_NAME => VA_PROCS(J).PROC_NAME);
            IF VS_PROC_STAT = -1 THEN
                --重新编译对象
                VN_DOT_POS := INSTR(VA_PROCS(J).PROC_NAME, '.');
                IF VN_DOT_POS > 0 THEN
                    VS_OBJECT_TYPE  := 'PACKAGE BODY';
                    VS_COMPILE_NAME := SUBSTR(VA_PROCS(J).PROC_NAME, 1, VN_DOT_POS - 1);
                ELSE
                    VS_OBJECT_TYPE  := 'PROCEDURE';
                    VS_COMPILE_NAME := VA_PROCS(J).PROC_NAME;
                END IF;
                BEGIN
                    DBMS_DDL.ALTER_COMPILE(TYPE   => VS_OBJECT_TYPE,
                                           SCHEMA => VA_PROCS(J).PROC_OWNER,
                                           NAME   => VS_COMPILE_NAME);
                EXCEPTION
                    WHEN OTHERS THEN
                        --可能存在编译失败的情况
                        NULL;
                END;
            END IF;
            VS_PROC_STAT := F_GET_OBJ_STATE(I_S_OWNER     => VA_PROCS(J).PROC_OWNER,
                                            I_S_PROC_NAME => VA_PROCS(J).PROC_NAME);
            IF VS_PROC_STAT = -1 THEN
                --对象编译不通过直接置运行完成，写失败日志,并假设已经执行了
                UPDATE PUB_SYS.T_ETL_PROC_MANAGE A
                   SET EXEC_FLAG = 1, EXEC_TJRQ = VN_TJRQ
                 WHERE A.PROC_NO = VA_PROCS(J).PROC_NO;
                COMMIT;
                --设置为运行完成
                P_EAE_SUB_SET_RUN_STATUS(VA_PROCS(J).PROC_NO, 1);
                PUB_SYS.P_ETL_ERROR(O_N_CODE  => O_N_CODE,
                                    O_S_NOTE  => O_S_NOTE,
                                    I_N_TJRQ  => VN_TJRQ,
                                    I_N_PRONO => VA_PROCS(J).PROC_NO,
                                    I_N_REDO  => 1);
                GOTO NEXT_PROC;
            END IF;
            --检查依赖的过程是否执行正常
            BEGIN
                SELECT A.PARAM_VAL
                  INTO VS_IS_TRAN_YL_EXEC
                  FROM PUB_SYS.T_SYS_PARAM A
                 WHERE A.PARAM_KIND = '01'
                   AND A.PARAM_CODE = 'IS_TRAN_YL_EXEC';
            EXCEPTION
                WHEN OTHERS THEN
                    VS_IS_TRAN_YL_EXEC := 0;
            END;
            IF VS_IS_TRAN_YL_EXEC = 1 THEN
                SELECT COUNT(1)
                  INTO VN_CN_RELY
                  FROM PUB_SYS.T_PROC_LOG_ADV T
                 WHERE T.TJRQ = VN_TJRQ
                   AND T.RET_CODE <> 0
                   AND T.PROC_NO IN (SELECT A.RELY_PROC_NO
                                       FROM PUB_SYS.T_ETL_PROC_MANAGE_RELY A
                                      WHERE A.IS_VALID = 1
                                        AND A.PROC_NO = VA_PROCS(J).PROC_NO);
                IF VN_CN_RELY > 0 THEN
                    --对象编译不通过直接置运行完成，写失败日志,并假设已经执行了
                    UPDATE PUB_SYS.T_ETL_PROC_MANAGE A
                       SET EXEC_FLAG = 1, EXEC_TJRQ = VN_TJRQ
                     WHERE A.PROC_NO = VA_PROCS(J).PROC_NO;
                    COMMIT;
                    --设置为运行完成
                    P_EAE_SUB_SET_RUN_STATUS(VA_PROCS(J).PROC_NO, 1);
                    PUB_SYS.P_ETL_ERROR(O_N_CODE  => O_N_CODE,
                                        O_S_NOTE  => O_S_NOTE,
                                        I_N_TJRQ  => VN_TJRQ,
                                        I_N_PRONO => VA_PROCS(J).PROC_NO,
                                        I_N_REDO  => 1);
                    GOTO NEXT_PROC;
                END IF;
            END IF;
            -----------------------------------------------------------------------------------------------
            -- 正常情况
            -- 调度主体
            VS_PROC := '';
            VS_PROC := VS_PROC || CHR(10) || 'DECLARE  ';
            VS_PROC := VS_PROC || CHR(10) || '    O_N_CODE  INT; ';
            VS_PROC := VS_PROC || CHR(10) || '    O_S_NOTE  VARCHAR2(4000);';
            VS_PROC := VS_PROC || CHR(10) || '    I_N_REDO  NUMBER; --重做 ';
            VS_PROC := VS_PROC || CHR(10) || 'BEGIN ';
            VS_PROC := VS_PROC || CHR(10) || '    --为了防止重复运行，以及遗漏运行，需要在执行前设置下标志';
            VS_PROC := VS_PROC || CHR(10) || '    --把过程状态设置为2(正在执行....) ';
            VS_PROC := VS_PROC || CHR(10) || '    UPDATE PUB_SYS.T_ETL_PROC_MANAGE A';
            VS_PROC := VS_PROC || CHR(10) || '       SET EXEC_FLAG = 2,EXEC_TJRQ=' ||
                       VN_TJRQ;
            VS_PROC := VS_PROC || CHR(10) || '       WHERE A.PROC_NO = ' || VA_PROCS(J)
                      .PROC_NO;
            VS_PROC := VS_PROC || CHR(10) || '       AND EXEC_FLAG = 0;';
            VS_PROC := VS_PROC || CHR(10) || '    --务必提交，以防被调用的过程没有执行任意的脚本而直接退出 ';
            VS_PROC := VS_PROC || CHR(10) || '    --从而导致后面的 exec_flag=2的条件不成立，最终陷入死循环 ';
            VS_PROC := VS_PROC || CHR(10) || '    COMMIT; ';
            VS_PROC := VS_PROC || CHR(10) || '    BEGIN';
            --执行主体
            VS_PROC := VS_PROC || CHR(10) || '         ' || VA_PROCS(J).PROC_OWNER || '.' || VA_PROCS(J)
                      .PROC_NAME || '(O_N_CODE,O_S_NOTE,' || VN_TJRQ || CASE
                           WHEN VA_PROCS(J).EXEC_RQ_MODE = 1 THEN
                            NULL --单日模式
                           ELSE
                            ',' || VN_TJRQ --双日模式
                       END || ',' || I_N_REDO || ');';
            --运行成功将PUB_SYS.T_ETL_PROC_MANAGE.exec_flag相关标志置为1
            VS_PROC := VS_PROC || CHR(10) || '    EXCEPTION ';
            VS_PROC := VS_PROC || CHR(10) || '          WHEN OTHERS THEN ';
            VS_PROC := VS_PROC || CHR(10) || '              NULL; ';
            VS_PROC := VS_PROC || CHR(10) || '    END; ';
            VS_PROC := VS_PROC || CHR(10) ||
                       '    --运行成功将PUB_SYS.T_ETL_PROC_MANAGE.exec_flag相关标志置为1 ';
            VS_PROC := VS_PROC || CHR(10) || '    --这意味这无论程序是否成功，只要调度过都会设置为1，以便后续继续执行。 ';
            VS_PROC := VS_PROC || CHR(10) || '    UPDATE PUB_SYS.T_ETL_PROC_MANAGE A  ';
            VS_PROC := VS_PROC || CHR(10) || '         SET EXEC_FLAG = 1,EXEC_TJRQ=' ||
                       VN_TJRQ;
            VS_PROC := VS_PROC || CHR(10) || '         WHERE A.PROC_NO = ' || VA_PROCS(J)
                      .PROC_NO;
            VS_PROC := VS_PROC || CHR(10) || '         AND EXEC_FLAG = 2;';
            VS_PROC := VS_PROC || CHR(10) || '    COMMIT;';
            VS_PROC := VS_PROC || CHR(10) || 'END;';
            ---记录监测信息
            VN_RUN_ORDER := VN_RUN_ORDER + 1;
            IF VN_DEBUG_AE_RUN_ORDER = 1 THEN
                INSERT INTO T_ETL_RUN_ORDER_DEBUG
                    (OWNER, PROC_NAME, OPTIME, TJRQ, RUN_ORDER)
                VALUES
                    (I_S_EXEC_OWNER,
                     VA_PROCS(J).PROC_NAME,
                     SYSDATE,
                     VN_TJRQ,
                     VN_RUN_ORDER);
                COMMIT;
            END IF;
            --设置过程执行标记为正在执行
            P_EAE_SUB_SET_RUN_STATUS(VA_PROCS(J).PROC_NO, 2);
            --加一层判断处理，先判断JOB是否已经存在，如果已经存在的话，就要执行删除操作
            SELECT COUNT(*)
              INTO VN_COUNT
              FROM USER_SCHEDULER_JOBS
             WHERE JOB_NAME = VS_JOBNAME;
            IF VN_COUNT > 0 THEN
                SELECT COUNT(*)
                  INTO VN_COUNT
                  FROM USER_SCHEDULER_JOBS
                 WHERE JOB_NAME = VS_JOBNAME
                   AND STATE = 'RUNNING';
                IF VN_COUNT > 0 THEN
                    DBMS_SCHEDULER.STOP_JOB(JOB_NAME => VS_JOBNAME, FORCE => TRUE);
                END IF;
                SELECT COUNT(*)
                  INTO VN_COUNT
                  FROM USER_SCHEDULER_JOBS
                 WHERE JOB_NAME = VS_JOBNAME;
                IF VN_COUNT > 0 THEN
                    DBMS_SCHEDULER.DROP_JOB(JOB_NAME => VS_JOBNAME, FORCE => TRUE);
                END IF;
            END IF;
            --创建作业
            DBMS_SCHEDULER.CREATE_JOB(JOB_NAME   => VS_JOBNAME,
                                      JOB_TYPE   => 'PLSQL_BLOCK',
                                      JOB_ACTION => VS_PROC,
                                      ENABLED    => TRUE,
                                      AUTO_DROP  => TRUE, --必须自动drop，否则前面代码要修改
                                      COMMENTS   => VS_JOBCOMMENT);
            -----------------------------------------------------------------------------------------------
            <<NEXT_PROC>>
            NULL;
        END LOOP;
        --检查是否超时
        --避免单个过程运行过分久的情况
        IF ((SYSDATE - VD_BEGIN_TIME) * 24 * 60) > VN_TIME_OUT THEN
            RAISE EXP_RUN_TOO_LONG;
        END IF;
        DBMS_LOCK.SLEEP(VN_SLEEPTIME); --睡眠
    END LOOP;
    --5.0等待过程的完成
    VT_BEING_WAIT := SYSTIMESTAMP;
    SELECT SEQ_T_PROC_LOG.NEXTVAL INTO VN_LOGID_WAIT FROM DUAL;
    INSERT INTO T_PROC_LOG
        (LOG_ID, PROC_USER, RET_NOTE, TJRQ, BEGIN_TIME)
    VALUES
        (VN_LOGID_WAIT, I_S_EXEC_OWNER, '等待中...', VN_TJRQ, SYSDATE);
    COMMIT;
    LOOP
        --统计未完成的个数
        SELECT COUNT(1)
          INTO VN_EXEC_FLAG
          FROM PUB_SYS.T_ETL_PROC_MANAGE A
          JOIN PUB_SYS.T_ETL_LVL_RUN_ORDER R
            ON R.OWNER = A.PROC_OWNER
           AND R.ISVALID = 1
           AND R.PRJ_CODE = I_S_EXEC_OWNER
         WHERE (A.EXEC_FLAG = 2 OR A.EXEC_FLAG = 0 OR A.EXEC_FLAG IS NULL)
           AND A.IS_VALID = 1
           AND A.IS_EXEC = 1
           AND (VN_YM_EXEC_FLAG = 1 OR EXEC_CYCLE <> 'Y')
           AND (VN_PROC_NO_PARAM = 0 OR A.PROC_NO = VN_PROC_NO_PARAM);
        --退出循环条件：运行时间 > TIME_OUT
        IF ((SYSDATE - VD_BEGIN_TIME) * 24 * 60) > VN_TIME_OUT THEN
            RAISE EXP_RUN_TOO_LONG;
        ELSIF VN_EXEC_FLAG = 0 THEN
            EXIT;
        END IF;
    END LOOP;
    UPDATE T_PROC_LOG A
       SET A.RET_NOTE = '结束等待，调度完成！',
           A.END_TIME = SYSDATE,
           A.RET_CODE = PKG_GCONST.PROCRUNRESULTSUCCESSFUL,
           A.COST_DUR = F_INTERVAL(VT_BEING_WAIT, SYSTIMESTAMP)
     WHERE LOG_ID = VN_LOGID_WAIT;
    COMMIT;
    --记录日志——成功结束
    PUB_SYS.P_LOG_PROC(VN_PROC_NO,
                       VN_LOGID,
                       'PUB_SYS',
                       VS_PROC_NAME,
                       VN_TJRQ,
                       O_N_CODE,
                       O_S_NOTE,
                       I_N_REDO,
                       1);
EXCEPTION
    WHEN EXP_RUN_TOO_LONG THEN
        O_N_CODE := PKG_GCONST.PROCRUNRESULTFAILED;
        O_S_NOTE := '等待时间太长';
        ROLLBACK;
        --记录日志——失败结束
        PUB_SYS.P_LOG_PROC(VN_PROC_NO,
                           VN_LOGID,
                           'PUB_SYS',
                           VS_PROC_NAME,
                           VN_TJRQ,
                           O_N_CODE,
                           O_S_NOTE,
                           I_N_REDO,
                           1);
    WHEN OTHERS THEN
        O_N_CODE := PKG_GCONST.PROCRUNRESULTFAILED;
        O_S_NOTE := SQLERRM;
        ROLLBACK;
        --记录日志——失败结束
        PUB_SYS.P_LOG_PROC(VN_PROC_NO,
                           VN_LOGID,
                           'PUB_SYS',
                           VS_PROC_NAME,
                           VN_TJRQ,
                           O_N_CODE,
                           O_S_NOTE,
                           I_N_REDO,
                           1);
END P_ETL_AUTO_EXEC;