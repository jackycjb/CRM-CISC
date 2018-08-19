CREATE OR REPLACE PROCEDURE EMC_JZU.P_TRAN_CGZHDY(O_N_CODE OUT INT,
                                                  O_S_NOTE OUT VARCHAR2,
                                                  I_N_TJRQ IN INT,
                                                  I_N_REDO IN INT DEFAULT 0)
/*-----------------------------------------------------------------------
         项目名称：   NDSC-数据服务中心
         用户名：     EMC_JZU
         过程名称:    P_TRAN_CGZHDY
         功能简述：   存管账户对应表转换
         参数：
                  英文名称            中文名称                可能取值
                  O_N_CODE            返回代码                0 正常；-1 异常
                  O_S_NOTE            返回信息                字符串信息
                  I_N_STATDATE        统计日期
                  I_N_REDO            重做标识                0：不重做    1：重做   2:初始化
         返回：
         算法：
         注意事项：
                  1、DSC_BAS.T_CGZHDY           表为全量更新表。
                  2、EMC_PUB.F_GET_ETL_DIC_SQL  返回标准字典清洗SQL的函数
         数据源：
                 1、SRC_JZU.EXT_ACC             外部机构账户
                 2、SRC_JZU.CUSTOMERS           客户
                 3、SRC_JZU.USERS               用户基本信息表
                 4、SRC_JZUXY.EXT_ACC           外部机构账户_信用
         修改记录;
         ------------------------------------------------------------------------
         操作人      操作时间                   操作
         胡丹丹      2015/10/22                 创建
         GUOXIATING  20160920  资金账号不加01,02,03，要不然后面的的清洗关联不上
				 chenjianbo  20180706                   修改：DSC_BAS.T_CGZHDY的qyzt列，修正为从biz_open_flag取（原来为置0）
    */
 IS
    VS_PROC_NAME VARCHAR2(100) := $$PLSQL_UNIT; --过程名
    VN_LOGID     INT; --LOG 表记录ID
    VN_ROWCOUNT  INT; --记录数
    VN_STEP      INT; --动作步数
    VN_TJRQ      NUMBER(8) := I_N_TJRQ; --统计日期
    VN_PROC_NO   PUB_SYS.T_ETL_PROC_MANAGE.PROC_NO%TYPE;
    VS_USER      VARCHAR2(30);
    VS_SQL       VARCHAR2(20000);
BEGIN
    --变量初始化
    O_N_CODE := PUB_SYS.PKG_GCONST.PROCRUNRESULTSUCCESSFUL; --初始化运行成功
    O_S_NOTE := '运行正常';
    VS_USER  := 'EMC_JZU';
    SELECT PUB_SYS.SEQ_T_PROC_LOG.NEXTVAL INTO VN_LOGID FROM DUAL; --日志序列号
    --获取ETL过程的编号
    VN_PROC_NO := PUB_SYS.F_GET_PROC_NO(I_S_OWNER     => VS_USER,
                                        I_S_PROC_NAME => VS_PROC_NAME);
    VN_STEP    := 0;
    --过程开始
    --记录日志——开始
    PUB_SYS.P_LOG_PROC(I_N_PROCNO         => VN_PROC_NO,
                       I_N_LOGID          => VN_LOGID,
                       I_S_USER           => VS_USER,
                       I_S_PROCNAME       => VS_PROC_NAME,
                       I_N_TJRQ           => VN_TJRQ,
                       I_N_RETCODE        => 1,
                       I_S_RETNOTE        => '正在运行！',
                       I_S_FLAG           => I_N_REDO,
                       I_N_INSERTORUPDATE => 0);
    IF I_N_REDO IN (0, 1, 2) THEN
        --初始化时清空数据
        VN_STEP := VN_STEP + 1;
        --记录日志明细——开始
        PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                                  I_N_LOGDETAILID    => VN_STEP,
                                  I_S_USER           => VS_USER,
                                  I_S_ACTIONDESC     => '初始化，清空[DSC_BAS.T_CGZHDY]目标表！',
                                  I_S_CHANGEDESC     => NULL,
                                  I_N_TJRQ           => VN_TJRQ,
                                  I_N_RETCODE        => 1,
                                  I_S_RETNOTE        => '正在运行！',
                                  I_S_FLAG           => I_N_REDO,
                                  I_N_INSERTORUPDATE => 0);
        --事务处理
        EXECUTE IMMEDIATE 'TRUNCATE TABLE DSC_BAS.T_CGZHDY';
        --记录日志明细——结束
        PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                                  I_N_LOGDETAILID    => VN_STEP,
                                  I_S_USER           => VS_USER,
                                  I_S_ACTIONDESC     => '初始化，清空[DSC_BAS.T_CGZHDY]目标表',
                                  I_S_CHANGEDESC     => '[DSC_BAS.T_CGZHDY]表已清空',
                                  I_N_TJRQ           => VN_TJRQ,
                                  I_N_RETCODE        => O_N_CODE,
                                  I_S_RETNOTE        => O_S_NOTE,
                                  I_S_FLAG           => I_N_REDO,
                                  I_N_INSERTORUPDATE => 1);
    END IF;
    --将 SRC层的数据写入DSC中
    VN_STEP := VN_STEP + 1;
    --记录日志明细——开始
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '将源表[SRC_JZU.EXT_ACC]的数据清洗转换到目标表[DSC_BAS.T_CGZHDY]中！',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '正在运行！',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    --事务处理
    VS_SQL := '
    INSERT /*+ APPEND*/
    INTO DSC_BAS.T_CGZHDY
        (KHH, KHXM, YYB, YHDM, CGLB, CGZH, YHZH, BZ, ZJZH, DJRQ, QYZT)
    SELECT A.CUST_CODE AS KHH,
           TRIM(C.USER_NAME) AS KHXM,' ||
              EMC_PUB.F_GET_NEW_YYB_SQL(I_SRC_TB_ALIAS => 'B',
                                        I_SRC_COL_NAME => 'OPEN_BRH') ||
              ' AS YYB,
           A.EXT_INST AS YHDM,
           ''1'' AS CGLB,
           '' '' AS CGZH,
           NVL(TRIM(A.EXT_ACC),'' '') AS YHZH, ' ||
              EMC_PUB.F_GET_ETL_DIC_SQL(I_SRC_TB_ALIAS     => 'A',
                                        I_SRC_COL_NAME     => 'CURRENCY',
                                        I_TAR_OWNER        => 'DSC_BAS',
                                        I_TAR_TB_NAME      => 'T_CGZHDY',
                                        I_TAR_COL_NAME     => 'BZ',
                                        I_IS_ERR_OLD_VALUE => PUB_SYS.PKG_GCONST.YES,
                                        I_IS_TRAN_FLAG     => PUB_SYS.PKG_GCONST.YES) || '
            AS BZ,
           A.ACCOUNT AS ZJZH,
           A.OPEN_DATE AS DJRQ,
--           0 AS QYZT
           case when instr(a.biz_open_flag,'1')>0 then 0 else 1 end AS QYZT -- 51,15,5共3类，设为0:已签约;1:未签约
      FROM SRC_JZU.EXT_ACC A
      INNER JOIN SRC_JZU.CUSTOMERS B ON A.CUST_CODE = B.CUST_CODE
      LEFT JOIN SRC_JZU.USERS C ON A.CUST_CODE = C.USER_CODE
     WHERE A.EXT_INST <> 0
    ';
    --记录SQL运行脚本  ||DECODE(A.CURRENCY,''0'',''01'',''1'',''02'',''2'',''03'',''01'')
    PUB_SYS.P_SQL_TRACE(O_N_CODE       => O_N_CODE,
                        O_S_NOTE       => O_S_NOTE,
                        I_S_PROC_OWNER => VS_USER,
                        I_S_PROC_NAME  => VS_PROC_NAME,
                        I_S_EXEC_SQL   => VS_SQL,
                        I_S_NOTE       => '金证U版存管账户对应表转换-普通');
    --执行SQL
    EXECUTE IMMEDIATE VS_SQL;
    VN_ROWCOUNT := SQL%ROWCOUNT;
    COMMIT;
    --记录日志明细——成功结束
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '将源表[SRC_JZU.EXT_ACC]的数据清洗转换到目标表[DSC_BAS.T_CGZHDY]中！',
                              I_S_CHANGEDESC     => '插入记录：' || VN_ROWCOUNT || '条！',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);
    --将 SRC层的数据写入DSC中
    VN_STEP := VN_STEP + 1;
    --记录日志明细——开始
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '将源表[SRC_JZUXY.EXT_ACC]的数据清洗转换到目标表[DSC_BAS.T_CGZHDY]中！',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '正在运行！',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    --事务处理
    VS_SQL := '
    INSERT /*+ APPEND*/
    INTO DSC_BAS.T_CGZHDY
        (KHH, KHXM, YYB, YHDM, CGLB, CGZH, YHZH, BZ, ZJZH, DJRQ, QYZT)
    SELECT A.CUST_CODE AS KHH,
           TRIM(C.USER_NAME) AS KHXM,' ||
              EMC_PUB.F_GET_NEW_YYB_SQL(I_SRC_TB_ALIAS => 'B',
                                        I_SRC_COL_NAME => 'OPEN_BRH') ||
              ' AS YYB,
           A.EXT_INST AS YHDM,
           ''2'' AS CGLB,
           '' '' AS CGZH,
           NVL(TRIM(A.EXT_ACC),'' '') AS YHZH, ' ||
              EMC_PUB.F_GET_ETL_DIC_SQL(I_SRC_TB_ALIAS     => 'A',
                                        I_SRC_COL_NAME     => 'CURRENCY',
                                        I_TAR_OWNER        => 'DSC_BAS',
                                        I_TAR_TB_NAME      => 'T_CGZHDY',
                                        I_TAR_COL_NAME     => 'BZ',
                                        I_IS_ERR_OLD_VALUE => PUB_SYS.PKG_GCONST.YES,
                                        I_IS_TRAN_FLAG     => PUB_SYS.PKG_GCONST.YES) || '
            AS BZ,
           A.ACCOUNT AS ZJZH,
           A.OPEN_DATE AS DJRQ,
--           0 AS QYZT
           case when instr(a.biz_open_flag,'1')>0 then 0 else 1 end AS QYZT -- 51,15,5共3类，设为0:已签约;1:未签约
      FROM SRC_JZUXY.EXT_ACC A
      INNER JOIN SRC_JZU.CUSTOMERS B ON A.CUST_CODE = B.CUST_CODE
      LEFT JOIN SRC_JZU.USERS C ON A.CUST_CODE = C.USER_CODE
     WHERE A.EXT_INST <> 0
    ';
    --记录SQL运行脚本
    PUB_SYS.P_SQL_TRACE(O_N_CODE       => O_N_CODE,
                        O_S_NOTE       => O_S_NOTE,
                        I_S_PROC_OWNER => VS_USER,
                        I_S_PROC_NAME  => VS_PROC_NAME,
                        I_S_EXEC_SQL   => VS_SQL,
                        I_S_NOTE       => '金证U版存管账户对应表转换-信用');
    --执行SQL
    EXECUTE IMMEDIATE VS_SQL;
    VN_ROWCOUNT := SQL%ROWCOUNT;
    COMMIT;
    --记录日志明细——成功结束
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '将源表[SRC_JZUXY.EXT_ACC]的数据清洗转换到目标表[DSC_BAS.T_CGZHDY]中！',
                              I_S_CHANGEDESC     => '插入记录：' || VN_ROWCOUNT || '条！',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);
    --将 SRC层的数据写入DSC中(个股期权)
    SELECT COUNT(1)
    INTO VN_ROWCOUNT
    FROM ALL_TABLES T
    WHERE T.OWNER='SRC_JZW' AND T.TABLE_NAME='OPT_CUBSB_CONTRACT';
    IF VN_ROWCOUNT=1 THEN
    VN_STEP := VN_STEP + 1;
    --记录日志明细——开始
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '将源表[SRC_JZW.OPT_CUBSB_CONTRACT]的数据清洗转换到目标表[DSC_BAS.T_CGZHDY]中！',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '正在运行！',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    --事务处理
    VS_SQL := '
    INSERT /*+ APPEND*/
    INTO DSC_BAS.T_CGZHDY
        (KHH, KHXM, YYB, YHDM, CGLB, CGZH, YHZH, BZ, ZJZH, DJRQ, QYZT)
    SELECT A.CUST_CODE AS KHH,
           '''' AS KHXM,' || EMC_PUB.F_GET_NEW_YYB_SQL('A', 'INT_ORG') ||
              ' AS YYB,
           A.EXT_ORG AS YHDM,
           ''5'' AS CGLB, --1-普通账户, 2-融资融券存管, 5-个股期权存管
           NVL(A.BDMF_ACCT,'' '') AS CGZH,
           NVL(A.BANK_ACCT,'' '') AS YHZH, ' ||
              EMC_PUB.F_GET_ETL_DIC_SQL(I_SRC_TB_ALIAS     => 'A',
                                        I_SRC_COL_NAME     => 'CURRENCY',
                                        I_TAR_OWNER        => 'DSC_BAS',
                                        I_TAR_TB_NAME      => 'T_CGZHDY',
                                        I_TAR_COL_NAME     => 'BZ',
                                        I_IS_ERR_OLD_VALUE => PUB_SYS.PKG_GCONST.YES,
                                        I_IS_TRAN_FLAG     => PUB_SYS.PKG_GCONST.YES) || '
            AS BZ,
           A.CUACCT_CODE AS ZJZH,
           A.OPEN_DATE AS DJRQ,
           CASE WHEN CONTRACT_STATUS = ''1'' THEN ''0''
              WHEN  CONTRACT_STATUS = ''0'' THEN ''4''
              WHEN CONTRACT_STATUS = ''9'' THEN ''3''
              ELSE ''0'' END
            AS QYZT
      FROM SRC_JZW.OPT_CUBSB_CONTRACT A
    ';
    --记录SQL运行脚本
    PUB_SYS.P_SQL_TRACE(O_N_CODE       => O_N_CODE,
                        O_S_NOTE       => O_S_NOTE,
                        I_S_PROC_OWNER => VS_USER,
                        I_S_PROC_NAME  => VS_PROC_NAME,
                        I_S_EXEC_SQL   => VS_SQL,
                        I_S_NOTE       => '金证U版存管账户对应表转换_个股期权');
    --执行SQL
    EXECUTE IMMEDIATE VS_SQL;
    VN_ROWCOUNT := SQL%ROWCOUNT;
    COMMIT;
    --记录日志明细——成功结束
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '将源表[SRC_JZW.OPT_CUBSB_CONTRACT]的数据清洗转换到目标表[DSC_BAS.T_CGZHDY]中！',
                              I_S_CHANGEDESC     => '插入记录：' || VN_ROWCOUNT || '条！',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);
    END IF;
    --记录日志——成功结束
    PUB_SYS.P_LOG_PROC(I_N_PROCNO         => VN_PROC_NO,
                       I_N_LOGID          => VN_LOGID,
                       I_S_USER           => VS_USER,
                       I_S_PROCNAME       => VS_PROC_NAME,
                       I_N_TJRQ           => VN_TJRQ,
                       I_N_RETCODE        => O_N_CODE,
                       I_S_RETNOTE        => O_S_NOTE,
                       I_S_FLAG           => I_N_REDO,
                       I_N_INSERTORUPDATE => 1);
EXCEPTION
    WHEN OTHERS THEN
        O_N_CODE := PUB_SYS.PKG_GCONST.PROCRUNRESULTFAILED; --运行失败
        O_S_NOTE := SQLERRM;
        ROLLBACK;
        --记录日志——失败结束
        PUB_SYS.P_LOG_PROC(I_N_PROCNO         => VN_PROC_NO,
                           I_N_LOGID          => VN_LOGID,
                           I_S_USER           => VS_USER,
                           I_S_PROCNAME       => VS_PROC_NAME,
                           I_N_TJRQ           => VN_TJRQ,
                           I_N_RETCODE        => O_N_CODE,
                           I_S_RETNOTE        => O_S_NOTE,
                           I_S_FLAG           => I_N_REDO,
                           I_N_INSERTORUPDATE => 1);
        --记录日志明细——失败结束
        PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                                  I_N_LOGDETAILID    => VN_STEP,
                                  I_S_USER           => VS_USER,
                                  I_S_ACTIONDESC     => '运行失败！',
                                  I_S_CHANGEDESC     => '运行失败！',
                                  I_N_TJRQ           => VN_TJRQ,
                                  I_N_RETCODE        => O_N_CODE,
                                  I_S_RETNOTE        => O_S_NOTE,
                                  I_S_FLAG           => I_N_REDO,
                                  I_N_INSERTORUPDATE => 1);
END P_TRAN_CGZHDY;