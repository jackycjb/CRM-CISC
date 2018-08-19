CREATE OR REPLACE PROCEDURE PUB_SYS.P_ETL_AUTO_EXEC(O_N_CODE       OUT INT,
                                                    O_S_NOTE       OUT VARCHAR2,
                                                    I_N_TJRQ       IN NUMBER,
                                                    I_S_EXEC_OWNER IN VARCHAR2,
                                                    I_N_REDO       IN NUMBER DEFAULT 0,
                                                    I_N_PROCNO     IN NUMBER := 0)
/*-----------------------------------------------------------------------
         ��Ŀ���ƣ�   NDSC-���ݷ�������
         �û�����     PUB_SYS
         ��������:    ETL�Զ��ܵ�����
         ���ܼ�����
         ������
                  Ӣ������            ��������                ����ȡֵ
                  O_N_CODE            ���ش���                0 ������-1 �쳣
                  O_S_NOTE            ������Ϣ                �ַ�����Ϣ
                  I_N_STATDATE        ͳ������
                  I_S_EXEC_OWNER      ���ȷ���
                  I_N_REDO            ������ʶ                0��������    1������   2:��ʼ��
                  i_n_procno          ��Ҫ���ڵ���            0��ȫ�����������Ǿ����procno
         ���أ�
         �㷨��
         ע�����
             ע�⣺
             1������Ϊ��ʷ���������ܣ�REDO=1��ֻ�������ݳ�����������ܣ�������˼���ŷ���
             ����ʹ�����ܹ��ܣ�����Ϊ�����ֹ�����
             2����־����PROC_NO=000010
             3�������ΪĳЩԭ�����������ETL_DSC_������������ܵ����ϻ����һЩ���⣬����Ӧ�ñ������������
            Ŀǰ�ϸ�����PROC_NAME�����ǹ������ƣ���û���޶��Ƕ����Ĺ��̻������ڰ����й���
            ĿǰҲֻ�ǽ������������ͣ���������ʱ������.������Ҫ����proc_name���ж����ͣ�
            ���Ǵ��е�ŵľ���Ϊ�ǰ����еĹ���.
         ����Դ��
             PUB_SYS.T_ETL_PROC_MANAGE
         �޸ļ�¼;
         ------------------------------------------------------------------------
         ������        ����ʱ��                   ����
         ������        2011/11/21                 ����
         ������        2012/04/01                 �޸ģ����ӽ��й�����Ч���룬
                                                        �������ʧ��ֱ����������ɣ�дʧ����־
         LZF           2012/09/17                 �޸ģ��жϵı�ʶ������������Щ���̻��ظ����Ȼ���ĳЩ���ڻ���©��
                                                  Ϊ���ϸ�淶��������չexec_flag����������exec_tjrq�ķ�ʽ
         lzf           2013/06/26                 �޸ģ����̲�������ָ�����ƣ����Ը�ʽ������Ҫ��CODE,NOTE,TJRJ/��KSRQ,JSRQ),REDO
         lzf           2013/09/17                 �޸ģ����һ�����ص�bug��������job������û���ύ�����ܵ�����ѭ��.
                                                  ͬʱ��������Ľű�ʹ�ÿ�����������һЩ��
         lzf           2013/09/26                 �޸ģ�����޷��������������쳣.
         lzf           2013/10/23                 �޸ģ����RAC�²���ʧ�ص����� ��ͬʱΪ�˱���job_name�������������ĸ�����(���Ƶ�ǰ��һ���ֲ����ظ���
                                                  ��������ʹ��ETL_DSC_||PROC_NO,�Ժ�鿴�������ƿ�COMMENT
         LZF           2013/11/20                 �޸ģ��жϲ����Ĵ������⣬���ڴ棬������ʾ������ִ��. ��ȡ��һ���ظ�����Ĳ��֡�
         LZF           2014/08/07                 �޸ģ���������ͨ���������־���ƣ�������scheduler���й���ͼ��
         lzf           2015/01/27                 �޸ģ�I_S_EXEC_OWNER���ٱ�ʾOWNER����PRJ_CODE
         ������        2016/02/24                 �޸ģ�1)ÿ������ִ��ǰ��һ���жϴ������ж�JOB�Ƿ��Ѿ����ڣ�����Ѿ����ڵĻ�����Ҫִ��ɾ������
                                                        2)�����жϹ����Ƿ�ִ���������
         ������        2016/04/14                 �޸ģ�1��ͬһ���У����ĳ����ִ��ʧ�ܣ����������Ĺ����򲻵���
                                                        2����ȡ��Ҫִ�еĹ��̵���Ϣ��ֻȡ�û�����˳�������Ч���û�
    */
 IS
    VS_PROC_NAME          VARCHAR2(100); --������
    VN_LOGID              INT; --LOG ���¼ID
    VN_LOGID_WAIT         INT;
    VN_TJRQ               NUMBER(8) := I_N_TJRQ; --ͳ������
    VS_PROC               VARCHAR2(20500);
    VN_MAX_BFS            NUMBER; --ϵͳ�������������󲢷���
    VN_EXEC_BFS           NUMBER := 0; --����ʱ�򲢷���
    VN_SLEEPTIME          NUMBER; --˯��ʱ��
    VN_TIME_OUT           NUMBER; --��ʱ����
    VN_DEBUG_AE_RUN_ORDER INT; --��¼��Ϣ��T_ETL_RUN_ORDER_DEBUG
    VN_EXEC_FLAG          NUMBER := 0;
    VN_CN_RELY            NUMBER := 0; --����
    VD_STARTIME           DATE := SYSDATE;
    --
    VD_BEGIN_TIME    DATE := SYSDATE;
    VT_BEING_WAIT    TIMESTAMP;
    VN_PROC_NO       PUB_SYS.T_ETL_PROC_MANAGE.PROC_NO%TYPE;
    VN_PROC_NO_PARAM PUB_SYS.T_ETL_PROC_MANAGE.PROC_NO%TYPE := NVL(I_N_PROCNO, 0);
    --VN_JOB_CNT      INT;
    VS_JOB_PREFIX   VARCHAR2(10) := 'ETL_DSC_'; --��ҵ����ǰ׺
    VS_PROC_STAT    INT; --����״̬
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
    VS_COMPILE_NAME VARCHAR2(60); --���ñ������ʱ������Ҫ�Ķ�������
    VS_OBJECT_TYPE  VARCHAR2(30); --��������
    EXP_RUN_TOO_LONG EXCEPTION;
    VS_IS_TRAN_YL_EXEC VARCHAR2(2);
    PRAGMA EXCEPTION_INIT(EXP_RUN_TOO_LONG, -20100);
    FUNCTION F_EAE_SUB_GETUNRUNCOUNT RETURN PLS_INTEGER IS
        /*
          ������δִ�еĹ��̸���
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
          �����Ѿ��ڶ����еĹ���,����ִ�е�״̬Ϊ2.
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
         ���õ������̵�ִ��״̬Ϊ1-����ִ�У�����ִ����ɡ�
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
          �������й��̵�ִ��״̬Ϊ1-����ִ�У�����ִ����ɡ�
          ����va_procs_RUN��2�Ǳ�ʾ����ִ�У�1��ʾ���
        */
        VN_KEY        PLS_INTEGER;
        VN_RUN_STATUS INT;
    BEGIN
        FOR VN_KEY IN 1 .. VA_PROCS_RUN.COUNT LOOP
            IF VA_PROCS_RUN(VN_KEY).EXEC_FLAG = 2 THEN
                BEGIN
                    --�ɹ�����ʧ�ܶ�����ɣ�����������������
                    --û�в鵽�����쳣�������¡�
                    SELECT CASE
                               WHEN RET_CODE IN (0, -1) THEN
                                1 --���
                               ELSE
                                2 --����ִ��
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
                    --��������δ������־�ȵȣ�����������ִ��
                    WHEN OTHERS THEN
                        NULL;
                END;
            END IF;
        END LOOP;
    END;
BEGIN
    --�洢���̿�ʼ
    --������ʼ��
    SELECT PUB_SYS.SEQ_T_PROC_LOG.NEXTVAL INTO VN_LOGID FROM DUAL;
    VS_PROC_NAME := 'P_ETL_AUTO_EXEC';
    O_N_CODE     := PKG_GCONST.PROCRUNRESULTSUCCESSFUL;
    O_S_NOTE     := '��������';
    VN_PROC_NO   := 900010;
    --��¼��־
    PUB_SYS.P_LOG_PROC(VN_PROC_NO,
                       VN_LOGID,
                       'PUB_SYS',
                       VS_PROC_NAME,
                       VN_TJRQ,
                       1,
                       '��������',
                       I_N_REDO,
                       0);
    --1.0��ȡ���ֲ���
    --��ȡETL����������˯�߲���,��ʱ���� ����¼����˳��
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
    --��ĩ�Ƿ����б�־
    IF VN_YM_JYR = VN_TJRQ THEN
        VN_YM_EXEC_FLAG := 1;
    END IF;
    --2.0��ʼ��
    --����ǰ���Ƚ���Ҫ���ȵ�ETL��Ϊδ����
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
    --��ȡ��Ҫִ�еĹ��̵���Ϣ
    --2.1���ڿ��Ʋ���
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
    --3.0 ���������
    --����Ƿ���ڴ������õĹ���
    VN_STEP := VN_STEP + 1;
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '����Ƿ���ڴ������õĹ���',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '�������У�',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    --3.1��Ҫ�Ǽ��:�Ƿ��й�������д��ģ��Լ������Ƿ�״̬��Ч�ȵ�,����Ƿ����ô�����
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
    VS_MSG := I_S_EXEC_OWNER || '����д��Ĺ��̸���:' || VN_COUNT;
    --3.2���״̬������Ĺ���
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
    VS_MSG := VS_MSG || I_S_EXEC_OWNER || '״�岻���õĹ��̸���:' || VN_COUNT;
    O_S_NOTE := '��������';
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '����Ƿ���ڴ������õĹ���',
                              I_S_CHANGEDESC     => VS_MSG,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);
    --4.0ѭ��ִ��
    VN_RUN_ORDER := 0;
    --���������ѭ��
    LOOP
        --20150128,���ڲ���ʹ��t_etl_proc_manage���ƣ�ԭ��ע�ͼ�
        VA_PROCS := VA_PROCS_RUN;
        EXIT WHEN F_EAE_SUB_GETUNRUNCOUNT = 0;
        FOR J IN 1 .. VA_PROCS.COUNT LOOP
            --ֻ������Щ��δִ�е�
            IF VA_PROCS(J).EXEC_FLAG <> 0 THEN
                GOTO NEXT_PROC;
            END IF;
            --������ҵ����
            VS_JOBNAME    := VS_JOB_PREFIX || VA_PROCS(J).PROC_NO;
            VS_JOBCOMMENT := VA_PROCS(J).PROC_NAME;
            --���ȹ���ǰ��������Ĺ����Ƿ��������
            SELECT COUNT(1)
              INTO VN_CN_RELY
              FROM PUB_SYS.T_ETL_PROC_MANAGE T
             WHERE T.IS_EXEC = 1
               AND T.IS_VALID = 1 --ֻ��������У�����ֹû����ȷ������rely
               AND (T.EXEC_FLAG = 0 --δ��ʼ����
                   OR T.EXEC_FLAG = 2 --��������
                   )
               AND T.PROC_NO IN (SELECT A.RELY_PROC_NO
                                   FROM PUB_SYS.T_ETL_PROC_MANAGE_RELY A
                                  WHERE A.IS_VALID = 1
                                    AND A.PROC_NO = VA_PROCS(J).PROC_NO);
            --ˢ��״̬
            P_EAE_SUB_REFRESH_STATUS;
            --��ȡ����������Ŀ
            VN_EXEC_BFS := F_EAE_SUB_GETRUNCOUNT;
            --�����������������û�дﵽ�������ޡ��ҵ�ǰ���̵Ĵ�����δִ�У��ҵ�ǰ��������񲻴��ڣ�������
            --��֮��ת����һ������
            IF NOT (VN_CN_RELY = 0 AND VN_MAX_BFS > VN_EXEC_BFS) THEN
                GOTO NEXT_PROC;
            END IF;
            --���е���ҵ����״̬
            VS_PROC_STAT := F_GET_OBJ_STATE(I_S_OWNER     => VA_PROCS(J).PROC_OWNER,
                                            I_S_PROC_NAME => VA_PROCS(J).PROC_NAME);
            IF VS_PROC_STAT = -1 THEN
                --���±������
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
                        --���ܴ��ڱ���ʧ�ܵ����
                        NULL;
                END;
            END IF;
            VS_PROC_STAT := F_GET_OBJ_STATE(I_S_OWNER     => VA_PROCS(J).PROC_OWNER,
                                            I_S_PROC_NAME => VA_PROCS(J).PROC_NAME);
            IF VS_PROC_STAT = -1 THEN
                --������벻ͨ��ֱ����������ɣ�дʧ����־,�������Ѿ�ִ����
                UPDATE PUB_SYS.T_ETL_PROC_MANAGE A
                   SET EXEC_FLAG = 1, EXEC_TJRQ = VN_TJRQ
                 WHERE A.PROC_NO = VA_PROCS(J).PROC_NO;
                COMMIT;
                --����Ϊ�������
                P_EAE_SUB_SET_RUN_STATUS(VA_PROCS(J).PROC_NO, 1);
                PUB_SYS.P_ETL_ERROR(O_N_CODE  => O_N_CODE,
                                    O_S_NOTE  => O_S_NOTE,
                                    I_N_TJRQ  => VN_TJRQ,
                                    I_N_PRONO => VA_PROCS(J).PROC_NO,
                                    I_N_REDO  => 1);
                GOTO NEXT_PROC;
            END IF;
            --��������Ĺ����Ƿ�ִ������
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
                    --������벻ͨ��ֱ����������ɣ�дʧ����־,�������Ѿ�ִ����
                    UPDATE PUB_SYS.T_ETL_PROC_MANAGE A
                       SET EXEC_FLAG = 1, EXEC_TJRQ = VN_TJRQ
                     WHERE A.PROC_NO = VA_PROCS(J).PROC_NO;
                    COMMIT;
                    --����Ϊ�������
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
            -- �������
            -- ��������
            VS_PROC := '';
            VS_PROC := VS_PROC || CHR(10) || 'DECLARE  ';
            VS_PROC := VS_PROC || CHR(10) || '    O_N_CODE  INT; ';
            VS_PROC := VS_PROC || CHR(10) || '    O_S_NOTE  VARCHAR2(4000);';
            VS_PROC := VS_PROC || CHR(10) || '    I_N_REDO  NUMBER; --���� ';
            VS_PROC := VS_PROC || CHR(10) || 'BEGIN ';
            VS_PROC := VS_PROC || CHR(10) || '    --Ϊ�˷�ֹ�ظ����У��Լ���©���У���Ҫ��ִ��ǰ�����±�־';
            VS_PROC := VS_PROC || CHR(10) || '    --�ѹ���״̬����Ϊ2(����ִ��....) ';
            VS_PROC := VS_PROC || CHR(10) || '    UPDATE PUB_SYS.T_ETL_PROC_MANAGE A';
            VS_PROC := VS_PROC || CHR(10) || '       SET EXEC_FLAG = 2,EXEC_TJRQ=' ||
                       VN_TJRQ;
            VS_PROC := VS_PROC || CHR(10) || '       WHERE A.PROC_NO = ' || VA_PROCS(J)
                      .PROC_NO;
            VS_PROC := VS_PROC || CHR(10) || '       AND EXEC_FLAG = 0;';
            VS_PROC := VS_PROC || CHR(10) || '    --����ύ���Է������õĹ���û��ִ������Ľű���ֱ���˳� ';
            VS_PROC := VS_PROC || CHR(10) || '    --�Ӷ����º���� exec_flag=2������������������������ѭ�� ';
            VS_PROC := VS_PROC || CHR(10) || '    COMMIT; ';
            VS_PROC := VS_PROC || CHR(10) || '    BEGIN';
            --ִ������
            VS_PROC := VS_PROC || CHR(10) || '         ' || VA_PROCS(J).PROC_OWNER || '.' || VA_PROCS(J)
                      .PROC_NAME || '(O_N_CODE,O_S_NOTE,' || VN_TJRQ || CASE
                           WHEN VA_PROCS(J).EXEC_RQ_MODE = 1 THEN
                            NULL --����ģʽ
                           ELSE
                            ',' || VN_TJRQ --˫��ģʽ
                       END || ',' || I_N_REDO || ');';
            --���гɹ���PUB_SYS.T_ETL_PROC_MANAGE.exec_flag��ر�־��Ϊ1
            VS_PROC := VS_PROC || CHR(10) || '    EXCEPTION ';
            VS_PROC := VS_PROC || CHR(10) || '          WHEN OTHERS THEN ';
            VS_PROC := VS_PROC || CHR(10) || '              NULL; ';
            VS_PROC := VS_PROC || CHR(10) || '    END; ';
            VS_PROC := VS_PROC || CHR(10) ||
                       '    --���гɹ���PUB_SYS.T_ETL_PROC_MANAGE.exec_flag��ر�־��Ϊ1 ';
            VS_PROC := VS_PROC || CHR(10) || '    --����ζ�����۳����Ƿ�ɹ���ֻҪ���ȹ���������Ϊ1���Ա��������ִ�С� ';
            VS_PROC := VS_PROC || CHR(10) || '    UPDATE PUB_SYS.T_ETL_PROC_MANAGE A  ';
            VS_PROC := VS_PROC || CHR(10) || '         SET EXEC_FLAG = 1,EXEC_TJRQ=' ||
                       VN_TJRQ;
            VS_PROC := VS_PROC || CHR(10) || '         WHERE A.PROC_NO = ' || VA_PROCS(J)
                      .PROC_NO;
            VS_PROC := VS_PROC || CHR(10) || '         AND EXEC_FLAG = 2;';
            VS_PROC := VS_PROC || CHR(10) || '    COMMIT;';
            VS_PROC := VS_PROC || CHR(10) || 'END;';
            ---��¼�����Ϣ
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
            --���ù���ִ�б��Ϊ����ִ��
            P_EAE_SUB_SET_RUN_STATUS(VA_PROCS(J).PROC_NO, 2);
            --��һ���жϴ������ж�JOB�Ƿ��Ѿ����ڣ�����Ѿ����ڵĻ�����Ҫִ��ɾ������
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
            --������ҵ
            DBMS_SCHEDULER.CREATE_JOB(JOB_NAME   => VS_JOBNAME,
                                      JOB_TYPE   => 'PLSQL_BLOCK',
                                      JOB_ACTION => VS_PROC,
                                      ENABLED    => TRUE,
                                      AUTO_DROP  => TRUE, --�����Զ�drop������ǰ�����Ҫ�޸�
                                      COMMENTS   => VS_JOBCOMMENT);
            -----------------------------------------------------------------------------------------------
            <<NEXT_PROC>>
            NULL;
        END LOOP;
        --����Ƿ�ʱ
        --���ⵥ���������й��־õ����
        IF ((SYSDATE - VD_BEGIN_TIME) * 24 * 60) > VN_TIME_OUT THEN
            RAISE EXP_RUN_TOO_LONG;
        END IF;
        DBMS_LOCK.SLEEP(VN_SLEEPTIME); --˯��
    END LOOP;
    --5.0�ȴ����̵����
    VT_BEING_WAIT := SYSTIMESTAMP;
    SELECT SEQ_T_PROC_LOG.NEXTVAL INTO VN_LOGID_WAIT FROM DUAL;
    INSERT INTO T_PROC_LOG
        (LOG_ID, PROC_USER, RET_NOTE, TJRQ, BEGIN_TIME)
    VALUES
        (VN_LOGID_WAIT, I_S_EXEC_OWNER, '�ȴ���...', VN_TJRQ, SYSDATE);
    COMMIT;
    LOOP
        --ͳ��δ��ɵĸ���
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
        --�˳�ѭ������������ʱ�� > TIME_OUT
        IF ((SYSDATE - VD_BEGIN_TIME) * 24 * 60) > VN_TIME_OUT THEN
            RAISE EXP_RUN_TOO_LONG;
        ELSIF VN_EXEC_FLAG = 0 THEN
            EXIT;
        END IF;
    END LOOP;
    UPDATE T_PROC_LOG A
       SET A.RET_NOTE = '�����ȴ���������ɣ�',
           A.END_TIME = SYSDATE,
           A.RET_CODE = PKG_GCONST.PROCRUNRESULTSUCCESSFUL,
           A.COST_DUR = F_INTERVAL(VT_BEING_WAIT, SYSTIMESTAMP)
     WHERE LOG_ID = VN_LOGID_WAIT;
    COMMIT;
    --��¼��־�����ɹ�����
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
        O_S_NOTE := '�ȴ�ʱ��̫��';
        ROLLBACK;
        --��¼��־����ʧ�ܽ���
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
        --��¼��־����ʧ�ܽ���
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