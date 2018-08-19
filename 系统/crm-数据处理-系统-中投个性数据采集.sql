CREATE OR REPLACE PROCEDURE HIS.PRO_ZT_GXSJCJ(O_N_CODE OUT INT,
                                              O_S_NOTE OUT VARCHAR2,
                                              I_N_TJRQ IN INT,
                                              I_N_REDO IN INT DEFAULT 0)
/***********************************************************************************************************
  用户名  ：      HIS
  过程名称：      中投个性数据采集
  
  ***********************************************************************************************************
  修改记录;
           操作人      操作时间                    操作
           GUOXIATING    20161123           中投个性数据采集
           20170110      guoxiting          增加计算客户上月平均佣金率和NC上月人员成本
           20170313      WEITQ              处理新增年份
           20170611      SPJ                新增普通A股佣金率数据落地
           20170613      SPJ                采集信用账户信用交易签约佣金率及信用账户普通交易签约佣金率
           20170822      spj                修改MOT过期时间为超过5个交易日
  ***********************************************************************************************************/
 IS
  VS_PROC_NAME VARCHAR2(100) := $$PLSQL_UNIT; --过程名
  VN_LOGID     INT; --LOG 表记录ID
  VN_ROWCOUNT  INT; --记录数
  VN_STEP      INT; --动作步数
  VN_TJRQ      NUMBER(8) := I_N_TJRQ; --统计日期
  VN_PROC_NO   PUB_SYS.T_ETL_PROC_MANAGE.PROC_NO%TYPE;
  VS_USER      VARCHAR2(30);
  VN_JTRQ      NUMBER(8);
  VN_YCJYR     NUMBER(8);
  VN_JYR       NUMBER(8); --5个交易日前日期
BEGIN
  --变量初始化
  O_N_CODE := PUB_SYS.PKG_GCONST.PROCRUNRESULTSUCCESSFUL; --初始化运行成功
  O_S_NOTE := '运行正常';
  VS_USER  := 'HIS';
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
  --插入统计数据
  --记录采集客户通讯录日志明细——开始
  PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                            I_N_LOGDETAILID    => VN_STEP,
                            I_S_USER           => VS_USER,
                            I_S_ACTIONDESC     => '个性数据采集开始！',
                            I_S_CHANGEDESC     => NULL,
                            I_N_TJRQ           => VN_TJRQ,
                            I_N_RETCODE        => 1,
                            I_S_RETNOTE        => '正在运行！',
                            I_S_FLAG           => I_N_REDO,
                            I_N_INSERTORUPDATE => 0);
  --牛人汇参赛客户数据
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 1, SYSDATE FROM DUAL;
  COMMIT;
  EXECUTE IMMEDIATE 'truncate table his.tnrhcskh';
  INSERT INTO HIS.TNRHCSKH
    (YYB,
     YYBNAME,
     KHXM,
     KHH,
     ZJZH,
     KHRQ,
     SJ,
     BMNC,
     BMSJ,
     SCMC,
     SQLX,
     SYL,
     PM,
     TJR,
     KFRY,
     FWRY,
     CGYH,
     KHQD,
     ZC,
     EXT_INST)
    SELECT 开户营业部代码,
           开户营业部名称,
           客户姓名,
           客户代码,
           资金账号,
           开户时间,
           MOBILE,
           报名昵称,
           报名时间,
           赛区名称,
           赛区类型,
           收益率,
           排名,
           推荐人,
           KF_NAME,
           FW_NAME,
           存管银行,
           开户渠道,
           资产,
           EXT_INST
      FROM STATS.VW_NRH_PAIMING@DWDB;
  COMMIT;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 2, SYSDATE FROM DUAL;
  COMMIT;
  --资管分红信息采集-XXJ-20161124
  DSFJK.PRO_SJCJ_ZGFHXX(O_N_CODE, O_S_NOTE, I_N_TJRQ);
  IF O_N_CODE = 1 THEN
    --wujun 20161201 执行成功，标志位回归0来记录调度日志
    O_N_CODE := 0;
  END IF;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 3, SYSDATE FROM DUAL;
  COMMIT;
  --服务产品资讯--xxj
  --CRMII.pro_sjcj_fwcpzx--放到资讯采集etl调度里执行
  --消息中心归档
  HIS.PRO_XXZXGD(O_N_CODE, O_S_NOTE, I_N_TJRQ, 0);
  IF O_N_CODE = 1 THEN
    O_N_CODE := 0;
  END IF;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 4, SYSDATE FROM DUAL;
  COMMIT;
  --存款利率表采集--xxj-20170112
  HIS.PRO_SJCJ_CKLL(O_N_CODE, O_S_NOTE, I_N_TJRQ, 0);
  IF O_N_CODE = 1 THEN
    O_N_CODE := 0;
  END IF;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 5, SYSDATE FROM DUAL;
  COMMIT;
  --XXJ-20161124-更新tfwcp_dzxx_kh表中yyb与dzyyb为客户所属营业部（接口手机开户定制套餐时，由于客户信息还未采集至CRM,导致未传入客户营业部情况）
  MERGE INTO CRMII.TFWCP_DZXX_KH T1
  USING CRMII.TKHXX T2
  ON (T1.KHH = T2.KHH)
  WHEN MATCHED THEN
    UPDATE SET T1.YYB = T2.YYB, T1.DZYYB = T2.YYB WHERE T1.YYB IS NULL;
  COMMIT;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 6, SYSDATE FROM DUAL;
  COMMIT;
  MERGE INTO CRMII.TFWCP_DDMX T1
  USING CRMII.TKHXX T2
  ON (T1.KHH = T2.KHH)
  WHEN MATCHED THEN
    UPDATE SET T1.YYB = T2.YYB WHERE T1.YYB IS NULL;
  COMMIT;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 7, SYSDATE FROM DUAL;
  COMMIT;
  --XXJ-20161206-更新到期的服务产品订单信息为自动过期
  HIS.PRO_FWCP_ZDQX(O_N_CODE, O_S_NOTE, I_N_TJRQ);
  IF O_N_CODE = 1 THEN
    O_N_CODE := 0;
  END IF;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 8, SYSDATE FROM DUAL;
  COMMIT;
  --XXJ-20170107-早盘短信群自动更新--放到job里执行--过程名修改为his.pro_cpdzkh
  /*HIS.PRO_KHQGX_DXQ(O_N_CODE, O_S_NOTE, I_N_TJRQ);
  IF O_N_CODE = 1 THEN
    O_N_CODE := 0;
  END IF;*/
  --XXJ-20161207-更新续签生效的协议状态为0
  UPDATE CRMII.TTZGW_QYXY T
     SET T.QYZT = 0
   WHERE T.SXRQ = I_N_TJRQ
     AND T.QYZT = 3;
  --XXJ-20161207-自动到期的服务协议状态更新为2
  UPDATE CRMII.TTZGW_QYXY T
     SET T.QYZT = 2
   WHERE T.JZRQ <= I_N_TJRQ
     AND T.QYZT = 0;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 9, SYSDATE FROM DUAL;
  COMMIT;
  --XXJ-20161227-消息中心固化统计报表
  HIS.PRO_MSG_GHBB(O_N_CODE, O_S_NOTE, I_N_TJRQ);
  IF O_N_CODE = 1 THEN
    O_N_CODE := 0;
  END IF;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 10, SYSDATE FROM DUAL;
  COMMIT;
  --wujun 20161201 落地非现场开户信息
  /*INSERT INTO CRMII.T_FXCKH
    (LSH,
     CLIENT_ID,
     CREATEDATE,
     TG_ID,
     CHANNEL_ID,
     REMARK2,
     RECOMMENDNO,
     INFOCOLECT_CHANNEL)
    SELECT LSH,
           CLIENT_ID,
           CREATEDATE,
           TG_ID,
           CHANNEL_ID,
           REMARK2,
           RECOMMENDNO,
           INFOCOLECT_CHANNEL
      FROM STATS.VW_FXCKH@DWDB_OLD B
     WHERE B.CLIENT_ID IS NOT NULL
       AND NOT EXISTS
     (SELECT 1 FROM CRMII.T_FXCKH A WHERE A.CLIENT_ID = B.CLIENT_ID);
  COMMIT;
  --删除client_id为null的数据
  DELETE FROM CRMII.T_FXCKH A WHERE A.CLIENT_ID IS NULL;
  COMMIT;
  --删除重复记录
  DELETE FROM CRMII.T_FXCKH A
   WHERE ROWID != (SELECT MAX(ROWID)
                     FROM CRMII.T_FXCKH B
                    WHERE A.CLIENT_ID = B.CLIENT_ID);
  COMMIT;*/
  --从OCRM落地是否经纪关系确认回访数据
  EXECUTE IMMEDIATE 'truncate TABLE crmii.TCL_T_ACCEPTED_CERT_INFO';
  INSERT INTO CRMII.TCL_T_ACCEPTED_CERT_INFO
    SELECT * FROM SJZX.TCL_T_ACCEPTED_CERT_INFO@TGDB;
  EXECUTE IMMEDIATE 'truncate TABLE crmii.TCL_T_ACCEPTED_CUSTOMER_INF';
  INSERT INTO CRMII.TCL_T_ACCEPTED_CUSTOMER_INF
    SELECT * FROM SJZX.TCL_T_ACCEPTED_CUSTOMER_INF@TGDB;
  EXECUTE IMMEDIATE 'truncate TABLE crmii.T_SURVEY_CLIENT_ANSWER_CX';
  INSERT INTO CRMII.T_SURVEY_CLIENT_ANSWER_CX
    SELECT * FROM ZTTG.T_SURVEY_CLIENT_ANSWER_CX@TGDB;
  COMMIT;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 11, SYSDATE FROM DUAL;
  COMMIT;
  --采集每日收益率，更新客户账户数据的累计收益率，每月初更新客户特征
  HIS.PRO_KHJYNSYL(O_N_CODE, O_S_NOTE, I_N_TJRQ);
  IF O_N_CODE = 1 THEN
    O_N_CODE := 0;
  END IF;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 12, SYSDATE FROM DUAL;
  COMMIT;
  --XXJ-20161209-用户短信配额控制，默认给1000万，且小于1000000时就恢复为10000000
  /*UPDATE CRMII.TSMS_YHPEKZ T SET T.BYPE = 10000000,T.BYFSL=0,T.MCSL=10000000 WHERE T.BYPE < 1000000;
  INSERT INTO TSMS_YHPEKZ
    (ID, YYB, RYXX, BYPE, BYFSL, MCSL, BYCXPE, BYCXFSL, MCCXSL, GXRQ)
    SELECT FUNC_NEXTID('TSMS_YHPEKZ'),
           T.ORGID YYB,
           T.ID USERID,
           10000000,
           0,
           10000000,
           0,
           0,
           0,
           SYSDATE
      FROM TUSER T
     WHERE NOT EXISTS (SELECT 1 FROM TSMS_YHPEKZ T2 WHERE T.ID = T2.RYXX)
       AND T.ORGID IS NOT NULL;
  COMMIT;*/
  --每日与柜台匹配更新组织机构名称
  /*  MERGE INTO (SELECT ID, ORGCODE, NAME, REPLACE(NAME, ORGCODE, '') NAME_REP
                FROM CRMII.LBORGANIZATION) A
  USING (SELECT BRANCH, BRANCH_ID, FULL_NAME FROM SRC_JZU.BRANCH) B
  ON (A.ID = B.BRANCH AND A.NAME_REP <> B.FULL_NAME)
  WHEN MATCHED THEN
    UPDATE SET A.NAME = B.BRANCH_ID || B.FULL_NAME;*/
  -- KEN 20171208 更新从OA同步组织机构名称    
  MERGE INTO (SELECT ID, ORGCODE, NAME, REPLACE(NAME, ORGCODE, '') NAME_REP
                FROM CRMII.LBORGANIZATION) A
  USING (SELECT DEPT_NO, DEPT_NAME FROM EDC_ODM.OA_DEPT_INFO@DWDB) B
  ON (A.ORGCODE = B.DEPT_NO AND A.NAME_REP <> B.DEPT_NAME)
  WHEN MATCHED THEN
    UPDATE SET A.NAME = B.DEPT_NO || B.DEPT_NAME;
  -- KEN 20171227 从网站同步联系电话和地址
  MERGE INTO (SELECT ORGCODE, ZXDH, DZ FROM CRMII.LBORGANIZATION) A
  USING (SELECT REPLACE(CASE
                          WHEN INSTR(A.PHONE, ';', 1, 1) = 0 THEN
                           ''
                          WHEN INSTR(A.PHONE, ';', 1, 2) = 0 THEN
                           SUBSTR(A.PHONE, INSTR(A.PHONE, ';', 1, 1) + 1)
                          WHEN INSTR(A.PHONE, ';', 1, 3) = 0 THEN
                           SUBSTR(A.PHONE, INSTR(A.PHONE, ';', 1, 1) + 1)
                          ELSE
                           SUBSTR(A.PHONE,
                                  INSTR(A.PHONE, ';', 1, 1) + 1,
                                  
                                  (INSTR(A.PHONE, ';', 1, 3) - 1) -
                                  (INSTR(A.PHONE, ';', 1, 1)))
                        END,
                        '\n',
                        '') PHONES,
                A.CODE,
                A.ADDRESS
           FROM EDC_ODM.WS_WEB_INFO_DEPART@DWDB A) B
  ON (A.ORGCODE = B.CODE)
  WHEN MATCHED THEN
    UPDATE SET A.ZXDH = B.PHONES, A.DZ = B.ADDRESS;
  COMMIT;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 13, SYSDATE FROM DUAL;
  COMMIT;
  --20170302 WUJUN 从数据中心落地09年至今的峰值资产数据
  EXECUTE IMMEDIATE 'TRUNCATE TABLE CRMII.T_JSC_HIGHESTASSET';
  INSERT INTO CRMII.T_JSC_HIGHESTASSET
    (YYB, KHH, KHXM, FZZC, HGBZ)
    SELECT OPEN_BRH, USER_CODE, USER_NAME, HIGHESTASSET, HG_FLG
      FROM STATS.K_JSC_HIGHESTASSET@DWDB T
     WHERE EXISTS (SELECT 1
              FROM CRMII.TKHXX KH
             WHERE KH.ID = T.USER_CODE
               AND KH.KHZT <> 3);
  COMMIT;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 14, SYSDATE FROM DUAL;
  COMMIT;
  --计算客户上月平均佣金率
  HIS.PRO_KHPJYJL(O_N_CODE, O_S_NOTE, I_N_TJRQ, 1);
  IF O_N_CODE = 1 THEN
    O_N_CODE := 0;
  END IF;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 15, SYSDATE FROM DUAL;
  COMMIT;
  --采集上月NC成本
  HIS.PRO_NC_CBCJ(O_N_CODE, O_S_NOTE, I_N_TJRQ);
  IF O_N_CODE = 1 THEN
    O_N_CODE := 0;
  END IF;
  --采集上月产品类收入数据
  HIS.PRO_CPLSRSJCJ(O_N_CODE, O_S_NOTE, I_N_TJRQ);
  IF O_N_CODE = 1 THEN
    O_N_CODE := 0;
  END IF;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 16, SYSDATE FROM DUAL;
  COMMIT;
  --每日生成财富客户
  HIS.PRO_CFKHGL(O_N_CODE, O_S_NOTE, I_N_TJRQ);
  IF O_N_CODE = 1 THEN
    O_N_CODE := 0;
  END IF;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 17, SYSDATE FROM DUAL;
  COMMIT;
  --合格客户
  EXECUTE IMMEDIATE 'truncate table crmii.k_cust_hg';
  INSERT INTO CRMII.K_CUST_HG
    (DATE_ID,
     USER_CODE,
     ACCOUNT,
     ACC_CLS,
     OPEN_BRH,
     OPEN_DATE,
     CPTL_TYPES,
     EXT_INST,
     REMARK,
     STATUS,
     DATA_DATE)
    SELECT DATE_ID,
           USER_CODE,
           ACCOUNT,
           ACC_CLS,
           OPEN_BRH,
           OPEN_DATE,
           CPTL_TYPES,
           EXT_INST,
           REMARK,
           STATUS,
           DATA_DATE
      FROM STATS.K_CUST_HG@DWDB
     WHERE DATE_ID = I_N_TJRQ;
  COMMIT;
  --20170313 WEITQ 处理新增年份，从OCRM迁移
  IF SUBSTR(I_N_TJRQ, 1, 4) = 2012 THEN
    --除了2012年以20111201为准，其余的就取0101就行
    VN_JTRQ := 20111201;
  ELSIF SUBSTR(I_N_TJRQ, 1, 4) > 2012 THEN
    VN_JTRQ := SUBSTR(I_N_TJRQ, 1, 4) || '0101';
  END IF;
  -- 第一步，直接判断所有证件类型，看看有没有证件号码一样的曾经开过户,原系统khlx=1代表正式客户，crm的khlx意义不一样，屏蔽khlx=1
  UPDATE CRMII.TKHXX A
     SET XZNFBS = 0
   WHERE 1 = 1
        /*AND KHLX = 1*/
     AND EXISTS (SELECT 1
            FROM CRMII.TKHXX B
           WHERE 1 = 1
             AND KHLX = 1
             AND A.ZJBH = B.ZJBH
             AND A.ZJLB = B.ZJLB
             AND B.KHRQ < VN_JTRQ)
     AND A.XZNFBS IS NULL
     AND A.ZJBH IS NOT NULL;
  COMMIT;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 19, SYSDATE FROM DUAL;
  COMMIT;
  --第二步   先建立表T_KH_ZJHM_15包含所有 20111201前开户且身份证为15位的客户，并把15位换算成18位
  --         注意，现在仍有 15位的客户新开户，每年初得更新此表
  --         直接看新开客户的证件号是否存在此表中即可
  UPDATE CRMII.TKHXX A
     SET XZNFBS = 0
   WHERE 1 = 1
     AND ZJLB = 0
        /*AND KHLX = 1*/
     AND EXISTS (SELECT 1
            FROM ZTTG.T_KH_ZJHM_15@TGDB B
           WHERE 1 = 1
             AND A.ZJBH = B.ZJHM)
     AND A.XZNFBS IS NULL
     AND A.ZJBH IS NOT NULL;
  COMMIT;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 20, SYSDATE FROM DUAL;
  COMMIT;
  -- 第3步，把新增客户更新年份
  UPDATE CRMII.TKHXX
     SET XZNF = SUBSTR(I_N_TJRQ, 1, 4), XZNFBS = 1
   WHERE XZNFBS IS NULL /*
                     AND KHLX=1*/
     AND ZJBH IS NOT NULL;
  COMMIT;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 21, SYSDATE FROM DUAL;
  COMMIT;
  --20170314 wujun 超七天的MOT事件状态更新为已过期
  --20170822 spj  超5个交易日的MOT事件状态更新为已过期
  /*SELECT CRMII.FUNC_GETNEXTJYR(TO_CHAR(SYSDATE, 'YYYYMMDD'), -5)
    INTO VN_JYR
    FROM DUAL;
  UPDATE CRMII.TTASK_CT_TASK T
     SET T.TASK_ST = 4
   WHERE TO_CHAR(T.ASGN_TM, 'YYYYMMDD') < VN_JYR
     AND T.TASK_TP IN (SELECT ID FROM CRMII.TTASK_CT_TP WHERE TASK_CL = 31);
  COMMIT;*/
  /* UPDATE CRMII.TTASK_CT_TASK T
    SET T.TASK_ST = 4
  WHERE SYSDATE - T.ASGN_TM > 7
    AND T.TASK_TP IN (SELECT ID FROM CRMII.TTASK_CT_TP WHERE TASK_CL = 31);
    COMMIT;*/
  UPDATE CRMII.TTASK_CT_TASK T
     SET T.TASK_ST = 4
   WHERE EXEC_STOP_DT <= VN_TJRQ
     AND T.TASK_TP IN (SELECT ID FROM CRMII.TTASK_CT_TP WHERE TASK_CL = 31);
  COMMIT;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 22, SYSDATE FROM DUAL;
  COMMIT;
  UPDATE CRMII.TTASK_CT_TASK_CUST_LST LST
     SET LST.SFGQ = 1
   WHERE EXISTS (SELECT 1
            FROM CRMII.TTASK_CT_TASK TASK
           WHERE LST.TASK_ID = TASK.TASK_ID
             AND TASK.TASK_ST = 4)
     AND (LST.SFGQ = 0 OR LST.SFGQ IS NULL);
  COMMIT;
  --20180620 增加自动删除到期临时角色
  DELETE FROM CRMII.LBMEMBER LB
   WHERE EXISTS (SELECT 1
            FROM CRMII.LCLSJSSQ SQ, DSC_CFG.T_XTJYR JYR
           WHERE SQ.DQRQ = JYR.ZRR
             AND JYR.JYR = VN_TJRQ
             AND LB.USERID = SQ.YH
             AND LB.ROLEID = SQ.XZJS);
  COMMIT;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 23, SYSDATE FROM DUAL;
  COMMIT;
  --跑金融产品日历数据
  CRMII.PRO_FP_SCSGRL(O_N_CODE, O_S_NOTE);
  IF O_N_CODE = 1 THEN
    O_N_CODE := 0;
  END IF;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 24, SYSDATE FROM DUAL;
  COMMIT;
  --月初跑上月签约佣金率报表
  SELECT MIN(JYR.JYR)
    INTO VN_YCJYR
    FROM DSC_CFG.T_XTJYR JYR
   WHERE JYR.NY = TO_CHAR(SYSDATE, 'YYYYMM');
  IF VN_YCJYR = VN_TJRQ THEN
    CRMII.PRO_QYYJL_GHBB(O_N_CODE,
                         O_S_NOTE,
                         TO_CHAR(ADD_MONTHS(TRUNC(SYSDATE), -1), 'yyyymm'));
    IF O_N_CODE = 1 THEN
      O_N_CODE := 0;
    END IF;
  END IF;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 25, SYSDATE FROM DUAL;
  COMMIT;
  --落地融资融券目标客户所需表数据
  EXECUTE IMMEDIATE 'TRUNCATE TABLE CRMII.YGT_STK_EARLY_TRD_DATE';
  INSERT INTO CRMII.YGT_STK_EARLY_TRD_DATE
    (DATE_ID, DATA_DATE, CUST_CODE, BIZ_DATE, EARLY_TRD_DATE, DEAL_STATUS)
    SELECT DATE_ID,
           DATA_DATE,
           CUST_CODE,
           BIZ_DATE,
           EARLY_TRD_DATE,
           DEAL_STATUS
      FROM EDC_ODM.YGT_STK_EARLY_TRD_DATE@DWDB
     WHERE DATE_ID = VN_TJRQ;
  --客户最早交易日期
  EXECUTE IMMEDIATE 'TRUNCATE TABLE CRMII.CUST_MATCH_MINDT';
  INSERT INTO CRMII.CUST_MATCH_MINDT
    (CUST_CODE, TRD_DATE)
    SELECT CUST_CODE, TRD_DATE FROM STATS.CUST_MATCH_MINDT@DWDB;
  COMMIT;
  --信用账号最早最迟开仓日期
  EXECUTE IMMEDIATE 'TRUNCATE TABLE CRMII.TXYKH_KCRQ';
  INSERT INTO CRMII.TXYKH_KCRQ
    (KHH, MIN_OPENING_DATE, MAX_OPENING_DATE)
    SELECT CUST_CODE KHH,
           MIN(OPENING_DATE) MIN_OPENING_DATE,
           MAX(OPENING_DATE) MAX_OPENING_DATE
      FROM (SELECT CUST_CODE, OPENING_DATE
              FROM EDC_ODM.FS_H_FISL_CONTRACT_OPENED@DWDB
            UNION ALL
            SELECT CUST_CODE, OPENING_DATE
              FROM EDC_ODM.FS_FISL_CONTRACT_CLOSED_HIS@DWDB)
     GROUP BY CUST_CODE;
  COMMIT;
  EXECUTE IMMEDIATE 'TRUNCATE TABLE CRMII.VW_USER_ASSET_20AVG';
  /*   INSERT INTO CRMII.VW_USER_ASSET_20AVG
  (USER_CODE, ASSET_AVG20)
  SELECT USER_CODE, ASSET_AVG20 FROM STATS.VW_USER_ASSET_20AVG@DWDB;*/
  -- ken 20180118 增加征信评分 
  INSERT INTO CRMII.VW_USER_ASSET_20AVG
    (USER_CODE, ASSET_AVG20, POINT_REAL, EARNING_POINT, INVEST_POINT)
    SELECT USER_CODE, ASSET_AVG20, POINT_REAL, EARNING_POINT, INVEST_POINT
      FROM STATS.VW_TG_RZRQ_POINT@DWDB;
  UPDATE CRMII.VW_USER_ASSET_20AVG T SET T.POINT_FLAG = 3;
  UPDATE CRMII.VW_USER_ASSET_20AVG T
     SET T.POINT_FLAG = 1
   WHERE T.POINT_REAL >= 54;
  UPDATE CRMII.VW_USER_ASSET_20AVG T
     SET T.POINT_FLAG = 2
   WHERE T.POINT_REAL >= 49
     AND T.POINT_REAL <= 53;
  -- add by ken 20180403  
  -- 打新市值(昨日)
  EXECUTE IMMEDIATE 'TRUNCATE TABLE CRMII.K_CUST_DXED';
  INSERT INTO CRMII.K_CUST_DXED
    SELECT * FROM STATS.K_CUST_DXED@DWDB;
  -- 打新峰值
  EXECUTE IMMEDIATE 'TRUNCATE TABLE CRMII.K_DXEDFZ_MONTHS_NOW';
  INSERT INTO CRMII.K_DXEDFZ_MONTHS_NOW
    SELECT * FROM STATS.K_DXEDFZ_MONTHS_NOW@DWDB;
  -- 信用峰值资产
  EXECUTE IMMEDIATE 'TRUNCATE TABLE CRMII.K_FZZC_XY_MONTHS_NOW';
  INSERT INTO CRMII.K_FZZC_XY_MONTHS_NOW
    (YEAR_CODE,
     MONTH_CODE,
     YF,
     USER_CODE,
     FZZC_XY,
     FZZC_XYZC,
     FZZC_XYFZ,
     FZZC_RZYE)
    SELECT YEAR_CODE,
           MONTH_CODE,
           YF,
           USER_CODE,
           FZZC_XY,
           FZZC_XYZC,
           FZZC_XYFZ,
           FZZC_RZYE
      FROM STATS.K_FZZC_XY_MONTHS_NOW@DWDB;
  --客户360打新市值表
  EXECUTE IMMEDIATE 'TRUNCATE TABLE CRMII.T_DXSZ';
  INSERT INTO CRMII.T_DXSZ
    (KHH, DXSZ, DXFZ,DX_SH_NUM,DX_SZ_NUM,TOTAL_NUM)
    SELECT KHH, B.TOTAL_VALUE / 10000, C.TOTAL_FZ_VALUE / 10000,b.dx_sh_num,b.dx_sz_num,TOTAL_NUM
      FROM CRMII.TKHXX A
      LEFT JOIN CRMII.K_CUST_DXED B
        ON B.CUST_CODE = A.KHH
      LEFT JOIN CRMII.K_DXEDFZ_MONTHS_NOW C
        ON C.CUST_CODE = A.KHH;
  --日均融资余额
  EXECUTE IMMEDIATE 'TRUNCATE TABLE CRMII.TRJRZYE';
  INSERT INTO CRMII.TRJRZYE
    (USER_CODE, RJRZYE)
    SELECT USER_CODE, SUM(GRRZYE_SUM) / SUM(GR_DAY_CNT) RJRZYE
      FROM STATS.K_GRRZRQYE_MONTHS@DWDB
     GROUP BY USER_CODE;
  -- 信用目标客户-朱婧
  EXECUTE IMMEDIATE 'TRUNCATE TABLE CRMII.TRZRQMBKH_ZJ';
  INSERT INTO CRMII.TRZRQMBKH_ZJ
    SELECT KH.ID,
           KH.KHH,
           KH.KHXM,
           KH.YYB,
           KH.LCJL,
           C.ASSET_AVG20,
           ZH.PTZH_KHZC,
           B.TRD_DATE,
           A.EARLY_TRD_DATE,
           C.POINT_REAL,
           KH.KHLX,
           KH.CSRQ,
           KH.FXCSNL,
           KH.TZQX,
           KH.TZPZ,
           KH.QWSY,
           D.TOTAL_VALUE,
           NULL             SFTS,
           NULL             SJTSSJ
      FROM CRMII.TKHXX                  KH,
           PUSH_CRM.TKHZHSJ             ZH,
           CRMII.YGT_STK_EARLY_TRD_DATE A,
           CRMII.CUST_MATCH_MINDT       B,
           CRMII.VW_USER_ASSET_20AVG    C,
           CRMII.K_CUST_DXED            D
     WHERE KH.KHH = ZH.KHH(+)
       AND KH.ID = A.CUST_CODE(+)
       AND KH.ID = B.CUST_CODE(+)
       AND KH.ID = C.USER_CODE(+)
       AND KH.ID = D.CUST_CODE(+)
       AND NOT EXISTS
     (SELECT 1 FROM DSC_BAS.T_KHXX_RZRQ RZRQ WHERE KH.KHH = RZRQ.KHH);
  UPDATE CRMII.TMOT_KH_ZDY A SET A.SFZJTS = 1 WHERE A.CREATEDATE = VN_TJRQ;
  UPDATE CRMII.TMOT_KH_ZDY T
     SET T.SFZJTS = NULL
   WHERE T.SFZJTS = 1
     AND EXISTS (SELECT 1
            FROM CRMII.TMOT_KH_ZDY C
           WHERE C.KHH = T.KHH
             AND C.SJID = T.SJID
             AND T.CREATEDATE < T.CREATEDATE);
  COMMIT;
  MERGE INTO CRMII.TRZRQMBKH_ZJ T
  USING (SELECT A.KHH, A.SFZJTS, A.CREATEDATE || ' ' || A.CREATETIME ZJTSSJ
           FROM CRMII.TMOT_KH_ZDY A
          WHERE A.SFZJTS = 1) B
  ON (T.KHH = B.KHH)
  WHEN MATCHED THEN
    UPDATE SET T.SFTS = B.SFZJTS, T.ZJTSSJ = B.ZJTSSJ;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 26, SYSDATE FROM DUAL;
  COMMIT;
  --采集信用账户信用交易签约佣金率及信用账户普通交易签约佣金率
  HIS.PRO_XYZHQYYJL(O_N_CODE, O_S_NOTE, I_N_TJRQ);
  IF O_N_CODE = 1 THEN
    O_N_CODE := 0;
  END IF;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 27, SYSDATE FROM DUAL;
  COMMIT;
  --落地普通A股签约佣金率所需表数据
  EXECUTE IMMEDIATE 'TRUNCATE TABLE CRMII.TPTAGYJL';
  INSERT INTO CRMII.TPTAGYJL
    (ACCOUNT, FEE_RATIO)
    SELECT ACCOUNT, FEE_RATIO FROM CRMII.VKH_USER_JYL;
  COMMIT;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 28, SYSDATE FROM DUAL;
  COMMIT;
  EXECUTE IMMEDIATE 'TRUNCATE TABLE CRMII.T_ORGID_FGSZS';
  INSERT INTO CRMII.T_ORGID_FGSZS
    (ORGID, FGS_FLAG, ZS_FGS_ORGID)
    SELECT BRH_ALL_CODE ORGID, FGS_FLAG, ZS_FGS_CODE ZS_FGS_ORGID
      FROM STATS.VW_QGS_BRANCH_CRM@DWDB
     WHERE COM_FLAG = '中投';
  COMMIT;
  --客户线上化数据更新
  HIS.PRO_UPDATE_KHXSH(O_N_CODE, O_S_NOTE, I_N_TJRQ);
  IF O_N_CODE = 1 THEN
    O_N_CODE := 0;
  END IF;
  COMMIT;
  --客户线上化报表数据生成
  HIS.PRO_SCXSHBBSJ(O_N_CODE, O_S_NOTE, I_N_TJRQ);
  IF O_N_CODE = 1 THEN
    O_N_CODE := 0;
  END IF;
  COMMIT;
  --杂项数据统计
  HIS.PRO_KHZXSJ(O_N_CODE, O_S_NOTE, I_N_TJRQ);
  IF O_N_CODE = 1 THEN
    O_N_CODE := 0;
  END IF;
  COMMIT;
  --协同运营任务状态更新
  CRMII.PRO_TASK_CT_STOP(O_N_CODE, O_S_NOTE);
  IF O_N_CODE = 1 THEN
    O_N_CODE := 0;
  END IF;
  COMMIT;
  --wujun  20170924 生成金融产品销售流水认领数据
  CRMII.PRO_JRCP_XSLSSC(O_N_CODE, O_S_NOTE, I_N_TJRQ);
  IF O_N_CODE = 1 THEN
    O_N_CODE := 0;
  END IF;
  COMMIT;
  --wujun  20180109 生成服务产品销售流水认领数据  
  CRMII.PRO_FWCP_XSLSSC(O_N_CODE, O_S_NOTE, I_N_TJRQ);
  IF O_N_CODE = 1 THEN
    O_N_CODE := 0;
  END IF;
  COMMIT;
  --wujun  20180706 更新基金销售资格
  CRMII.PRO_UPDATE_JJXSZG(O_N_CODE, O_S_NOTE,NULL);
  IF O_N_CODE = 1 THEN
    O_N_CODE := 0;
  END IF;
  COMMIT;
  
  --每日计算业绩指标
  HIS.PRO_MRZBJS(O_N_CODE, O_S_NOTE, I_N_TJRQ);
  IF O_N_CODE = 1 THEN
    O_N_CODE := 0;
  END IF;
  COMMIT;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 29, SYSDATE FROM DUAL;
  COMMIT;
  --跑领导驾驶舱数据
  /*  HIS.PRO_LDJSC_SJSC(O_N_CODE, O_S_NOTE, I_N_TJRQ);
  IF O_N_CODE = 1 THEN
    O_N_CODE := 0;
  END IF;*/
  HIS.PRO_LDJSC_SJSC_SM(O_N_CODE, O_S_NOTE, I_N_TJRQ);
  IF O_N_CODE = 1 THEN
    O_N_CODE := 0;
  END IF;
  HIS.PRO_LDJSC_SJSC_NEW(O_N_CODE, O_S_NOTE, I_N_TJRQ);
  IF O_N_CODE = 1 THEN
    O_N_CODE := 0;
  END IF;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 18, SYSDATE FROM DUAL;
  COMMIT;
  /*CRMII.PRO_XTYY_ZBRYSQ(O_N_CODE, O_S_NOTE);
  IF O_N_CODE = 1 THEN
    O_N_CODE := 0;
  END IF;*/
  --原高净值客户查询和高净值客户统计的报表查询过慢，每日跑调度时先将基础数据生成
  CRMII.PRO_SCGJZJCSJ(O_N_CODE, O_S_NOTE, I_N_TJRQ);
  IF O_N_CODE = 1 THEN
    O_N_CODE := 0;
  END IF;
  COMMIT;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 30, SYSDATE FROM DUAL;
  COMMIT;
  -- 落地资产增值计划协议（目前仅有聚金利）
  SELECT COUNT(1)
    INTO VN_ROWCOUNT
    FROM EDC_ODM.EC_ASSET_APPR_PROT@DWDB
   WHERE DATE_ID = I_N_TJRQ;
  IF VN_ROWCOUNT > 0 THEN
    -- 源数据存在才刷新，以防不存在源数据时删除落地数据
    EXECUTE IMMEDIATE 'TRUNCATE TABLE DSC_BAS.T_asset_appr_prot';
    INSERT INTO DSC_BAS.T_ASSET_APPR_PROT
      (REMARK,
       DATA_DATE,
       UPD_DATE,
       CAL_PROFIT_DATE,
       DATE_ID,
       CUST_CODE,
       ACCOUNT,
       FUND_INTL,
       TA_CODE,
       FUND_CODE,
       ASSET_FLOOR,
       WORKING_ASSET_FLOOR,
       EXPIRY_DATE,
       CVT_VOL,
       STATUS,
       PAUSE_EXPIRY_DATE,
       OUT_ORDER_CNT,
       IN_ORDER_CNT,
       OUT_VOL_SUM,
       IN_AMT_SUM)
      SELECT REMARK,
             DATA_DATE,
             UPD_DATE,
             CAL_PROFIT_DATE,
             DATE_ID,
             CUST_CODE,
             ACCOUNT,
             FUND_INTL,
             TA_CODE,
             FUND_CODE,
             ASSET_FLOOR,
             WORKING_ASSET_FLOOR,
             EXPIRY_DATE,
             CVT_VOL,
             STATUS,
             PAUSE_EXPIRY_DATE,
             OUT_ORDER_CNT,
             IN_ORDER_CNT,
             OUT_VOL_SUM,
             IN_AMT_SUM
        FROM EDC_ODM.EC_ASSET_APPR_PROT@DWDB
       WHERE DATE_ID = I_N_TJRQ;
    COMMIT;
    INSERT INTO HIS.TEST_PARA9
      (PROC, SJ)
      SELECT 31, SYSDATE FROM DUAL;
    COMMIT;
  END IF;
  -- 落地集合资产管理计划合同(电子、纸质；含聚金利)
  SELECT COUNT(1)
    INTO VN_ROWCOUNT
    FROM EDC_ODM.EC_FUND_CHOWMATISTIC@DWDB
   WHERE DATE_ID = I_N_TJRQ;
  IF VN_ROWCOUNT > 0 THEN
    -- 源数据存在才刷新，以防不存在源数据时删除落地数据
    EXECUTE IMMEDIATE 'TRUNCATE TABLE DSC_BAS.T_fund_chowmatistic';
    INSERT INTO DSC_BAS.T_FUND_CHOWMATISTIC
      (CUST_CODE,
       ACCOUNT,
       BRANCH,
       TA_CODE,
       FUND_CODE,
       FUND_INTL,
       FUND_NAME,
       TRADES,
       CHANNELS,
       LIMIT_DATE,
       SIGN_DATE,
       CONTRACTTYPE,
       CONTRACTNO,
       SIGNTIME,
       SIGNCHANNEL,
       SIGNMACHINE,
       NETNO,
       NOTES,
       DISTRIBUTOR,
       CONFIRMSTATUSMANAGER,
       CONFIRMSTATUSCUSTOD,
       NOTESAGENT,
       NOTESMANAGER,
       NOTESCUSTOD,
       STATUS,
       REMARK,
       SIGNRISKNOTICE,
       RISKMATCHING,
       CUSTRISKENDURANCE,
       MODIFYDATE,
       CARDNO,
       TELNO,
       MOBILNO,
       EMAIL,
       POSTODE,
       ADDR,
       FUND_ACC,
       USER_CHAR,
       ID_TYPE,
       ID,
       ORDER_STATUS,
       ACC_NAME,
       DATA_DATE,
       DATE_ID)
      SELECT CUST_CODE,
             ACCOUNT,
             BRANCH,
             TA_CODE,
             FUND_CODE,
             FUND_INTL,
             FUND_NAME,
             TRADES,
             CHANNELS,
             LIMIT_DATE,
             SIGN_DATE,
             CONTRACTTYPE,
             CONTRACTNO,
             SIGNTIME,
             SIGNCHANNEL,
             SIGNMACHINE,
             NETNO,
             NOTES,
             DISTRIBUTOR,
             CONFIRMSTATUSMANAGER,
             CONFIRMSTATUSCUSTOD,
             NOTESAGENT,
             NOTESMANAGER,
             NOTESCUSTOD,
             STATUS,
             REMARK,
             SIGNRISKNOTICE,
             RISKMATCHING,
             CUSTRISKENDURANCE,
             MODIFYDATE,
             CARDNO,
             TELNO,
             MOBILNO,
             EMAIL,
             POSTODE,
             ADDR,
             FUND_ACC,
             USER_CHAR,
             ID_TYPE,
             ID,
             ORDER_STATUS,
             ACC_NAME,
             DATA_DATE,
             DATE_ID
        FROM EDC_ODM.EC_FUND_CHOWMATISTIC@DWDB
       WHERE DATE_ID = I_N_TJRQ;
    COMMIT;
    INSERT INTO HIS.TEST_PARA9
      (PROC, SJ)
      SELECT 32, SYSDATE FROM DUAL;
    COMMIT;
  END IF;
  -- 落地资金消费账户
  SELECT COUNT(1) INTO VN_ROWCOUNT FROM STATS.VW_ZJXF_BANK_ACC@DWDB;
  IF VN_ROWCOUNT > 0 THEN
    -- 源数据存在才刷新，以防不存在源数据时删除落地数据
    EXECUTE IMMEDIATE 'TRUNCATE TABLE DSC_BAS.T_zjxf_bank_acc';
    INSERT INTO DSC_BAS.T_ZJXF_BANK_ACC
      (CLIENT_ID,
       FUND_ACCOUNT,
       BANK_NO,
       BANK_NAME,
       BANK_ACCOUNT,
       BKACCOUNT_STATUS,
       OPEN_DATE)
      SELECT CLIENT_ID,
             FUND_ACCOUNT,
             BANK_NO,
             BANK_NAME,
             BANK_ACCOUNT,
             BKACCOUNT_STATUS,
             OPEN_DATE
        FROM STATS.VW_ZJXF_BANK_ACC@DWDB;
    COMMIT;
    INSERT INTO HIS.TEST_PARA9
      (PROC, SJ)
      SELECT 33, SYSDATE FROM DUAL;
    COMMIT;
  END IF;
  -- 落地融资融券客户_征信评分标准_个人
  SELECT COUNT(1) INTO VN_ROWCOUNT FROM STATS.K_RZRQ_ZXPFBZ_GR@DWDB;
  IF VN_ROWCOUNT > 0 THEN
    -- 源数据存在才刷新，以防不存在源数据时删除落地数据
    EXECUTE IMMEDIATE 'TRUNCATE TABLE DSC_BAS.T_k_rzrq_zxpfbz_gr';
    INSERT INTO DSC_BAS.T_K_RZRQ_ZXPFBZ_GR
      (OPEN_BRH,
       BRH_NAME,
       USER_CODE,
       USER_NAME,
       USER_TYPE,
       AGE,
       AGE_SCORE,
       AGE_ID,
       AGE_CHOICE,
       EDUCATION,
       EDU_SCORE,
       EDU_ID,
       EDU_CHOICE,
       CAREER,
       CAREER_SCORE,
       CAREER_ID,
       CAREER_CHOICE,
       CAREER_DURATION,
       CAREER_DUR_SCORE,
       CAREER_DUR_ID,
       CAREER_DUR_CHOICE,
       CREDIT_INFO,
       CREDIT_SCORE,
       CREDIT_ID,
       CREDIT_CHOICE,
       INCOME_INFO,
       INCOME_SCORE,
       INCOME_ID,
       INCOME_CHOICE,
       INVEST,
       INVEST_SCORE,
       INVEST_ID,
       INVEST_CHOICE,
       LIABILITY,
       LIABILITY_SCORE,
       LIABILITY_ID,
       LIABILITY_CHOICE,
       EXP_INFO,
       EXP_SCORE,
       EXP_ID,
       EXP_CHOICE,
       OPEN_DURATION,
       OPEN_SCORE,
       OPEN_ID,
       OPEN_CHOICE,
       PT_ASSET,
       PT_ASSET_SCORE,
       PT_ASSET_ID,
       PT_ASSET_CHOICE,
       STOCK_FOCUS,
       STOCK_FOCUS_SCORE,
       STOCK_FOCUS_ID,
       STOCK_FOCUS_CHOICE)
      SELECT OPEN_BRH,
             BRH_NAME,
             USER_CODE,
             USER_NAME,
             USER_TYPE,
             AGE,
             AGE_SCORE,
             AGE_ID,
             AGE_CHOICE,
             EDUCATION,
             EDU_SCORE,
             EDU_ID,
             EDU_CHOICE,
             CAREER,
             CAREER_SCORE,
             CAREER_ID,
             CAREER_CHOICE,
             CAREER_DURATION,
             CAREER_DUR_SCORE,
             CAREER_DUR_ID,
             CAREER_DUR_CHOICE,
             CREDIT_INFO,
             CREDIT_SCORE,
             CREDIT_ID,
             CREDIT_CHOICE,
             INCOME_INFO,
             INCOME_SCORE,
             INCOME_ID,
             INCOME_CHOICE,
             INVEST,
             INVEST_SCORE,
             INVEST_ID,
             INVEST_CHOICE,
             LIABILITY,
             LIABILITY_SCORE,
             LIABILITY_ID,
             LIABILITY_CHOICE,
             EXP_INFO,
             EXP_SCORE,
             EXP_ID,
             EXP_CHOICE,
             OPEN_DURATION,
             OPEN_SCORE,
             OPEN_ID,
             OPEN_CHOICE,
             PT_ASSET,
             PT_ASSET_SCORE,
             PT_ASSET_ID,
             PT_ASSET_CHOICE,
             STOCK_FOCUS,
             STOCK_FOCUS_SCORE,
             STOCK_FOCUS_ID,
             STOCK_FOCUS_CHOICE
        FROM STATS.K_RZRQ_ZXPFBZ_GR@DWDB;
    COMMIT;
    INSERT INTO HIS.TEST_PARA9
      (PROC, SJ)
      SELECT 34, SYSDATE FROM DUAL;
    COMMIT;
  END IF;
  EXECUTE IMMEDIATE 'TRUNCATE TABLE CRMII.T_ZJZH_XHRQ';
  INSERT INTO CRMII.T_ZJZH_XHRQ
    (ZJZH, XHRQ, XYBZ)
    SELECT A.ACCOUNT, B.XH_DATE, 1
      FROM EDC_ODM.FS_ACCOUNTS@DWDB A
      LEFT JOIN (SELECT ACCOUNT, MAX(OCCUR_DATE2) XH_DATE
                   FROM EDC_ODM.FS_USER_LOG_HIS@DWDB
                  WHERE BIZ_CODE = 1007001
                  GROUP BY ACCOUNT) B
        ON A.ACCOUNT = B.ACCOUNT
     WHERE A.STATUS = '9'
       AND B.XH_DATE IS NOT NULL;
  INSERT INTO CRMII.T_ZJZH_XHRQ
    (ZJZH, XHRQ, XYBZ)
    SELECT A.ACCOUNT, B.XH_DATE, 0
      FROM EDC_ODM.EC_ACCOUNTS@DWDB A
      LEFT JOIN (SELECT ACCOUNT, MAX(OCCUR_DATE2) XH_DATE
                   FROM EDC_ODM.EC_USER_LOG_HIS@DWDB
                  WHERE BIZ_CODE = 1007001
                  GROUP BY ACCOUNT) B
        ON A.ACCOUNT = B.ACCOUNT
     WHERE A.STATUS = '9'
       AND B.XH_DATE IS NOT NULL;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 35, SYSDATE FROM DUAL;
  COMMIT;
-- 根据薪酬历史员工的基金销售资格，更新基金销售资格首次适用月份
merge into crmii.tryxx T1
    using (select ryid,min(yf) yf from crm_xc.tryxx_ls where sfjyjjxszg=1 group by ryid) T2
    on (T1.id=T2.ryid)
    when matched then
      update set T1.JJXSZGSCSYYF=T2.yf;
  commit;  
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 36, SYSDATE FROM DUAL;
  COMMIT;

/* --此处屏蔽，在HIS.PRO_KHXX_CJ中落地
  -- 落地新渠道管理平台的渠道字典
  SELECT COUNT(1) INTO V_COUNT FROM edc_odm.CRHQD_V_CHANNELINFO@DWDB;
  IF V_COUNT > 0 THEN
    -- 源数据存在才刷新，以防不存在源数据时删除落地数据；目标表须额外加个id列，livebos中需要用到（否则组合框选择列表项目后结果可能为空）
    EXECUTE IMMEDIATE 'TRUNCATE TABLE CRMII.T_CRHQD_V_CHANNELINFO';
    INSERT INTO CRMII.T_CRHQD_V_CHANNELINFO
      (id,DATE_ID,SHORT_CODE,CHANNEL_NAME,DATA_DATE)
      SELECT id,DATE_ID,SHORT_CODE,CHANNEL_NAME,DATA_DATE
        from(select rownum id ,DATE_ID,SHORT_CODE,CHANNEL_NAME,DATA_DATE from edc_odm.CRHQD_V_CHANNELINFO@DWDB a) order by id;
    -- 额外增加'官网'项目
    INSERT INTO CRMII.T_CRHQD_V_CHANNELINFO
      (id,SHORT_CODE,CHANNEL_NAME)
      select -1, 'guanwang','官网' from dual;
    COMMIT;
    INSERT INTO HIS.TEST_PARA9
      (PROC, SJ)
      SELECT 50, SYSDATE FROM DUAL;
    COMMIT;
  END IF;
*/
  
  --记录日志明细——成功结束
  PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                            I_N_LOGDETAILID    => VN_STEP,
                            I_S_USER           => VS_USER,
                            I_S_ACTIONDESC     => '个性数据采集结束！',
                            I_S_CHANGEDESC     => '插入记录！',
                            I_N_TJRQ           => VN_TJRQ,
                            I_N_RETCODE        => O_N_CODE,
                            I_S_RETNOTE        => O_S_NOTE,
                            I_S_FLAG           => I_N_REDO,
                            I_N_INSERTORUPDATE => 1);
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
END PRO_ZT_GXSJCJ;
