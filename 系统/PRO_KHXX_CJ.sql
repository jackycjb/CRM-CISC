CREATE OR REPLACE PROCEDURE HIS.PRO_KHXX_CJ(O_RETCODE OUT NUMBER,
                                            O_RETNOTE OUT VARCHAR2,
                                            I_RQ      IN NUMBER,
                                            I_REDO    IN NUMBER) IS
  /*-----------------------------------------------------------------------
   项目名称：  CRM4.0
   过程名称:   PRO_KHXX_CJ
   功能简述：  客户信息
   -----------------------------------------------
   参数：
          英文名称            中文名称                可能取值
          O_RETCODE          返回值
          O_RETNOTE          返回信息
  
   返回：
       >0  成功,返回查询字段的数据
       -1  其他错误
  -----------------------------------------------
       返回数据集合列
  -----------------------------------------------
  业务逻辑：
  
     每天晚上，把HIS中的TKHXX增量更新到CORE中的TKHXX，
     1.对于原来CRMII.TKHXX中特有的字段不变
     2.对于存量客户手机，邮箱，电话处理时，如果原来客户不存在这些信息，则更新，否则不更新。
     3.更新客户出生日期客户属性
  注意事项：
  
  数据源：
    1):HIS.TKHXX 客户信息
    2):CRMII.TKHXX 客户信息
    3):CRMII.TKHSX 客户属性信息
  
    修改记录;
    ------------------------------------------------------------------------
    操作人           操作时间       版本            操作
      林嵩          20130704      v.4.0.0.1          新增
      林嵩          20130917      v.4.0.0.2          增加客户级别采集
      陈德铸        20140704      v.4.0.0.3          修改：去掉KHJB采集更新处理，原因：这个客户级别无用，之前推送KHJB，是因为客户级别是在DM用户下计算，现在已经调整为在HIS.PRO_CALC_KHJB中计算
      陈德铸        20140717      v.4.0.0.4          修改：1)CRMII.TKHXX表的ID和KHH一致；
                                                           2)修改出生日期处理逻辑，生成到CRMII.TKHXX，而不是CRMII.TKHSX
                                                           3)增加字段“民族, 性别, 省份, 城市, 区县, 国家代码, 学历代码”的采集
      wujun        20160902      v.4.0.0.5          修改：增加清洗KHYYB，暂时取跟YYB一样的值
      guoxiating   20160919      6                  增加更新客户风险承受能力
      wujun        20161012      v.4.0.0.7          修改:增加处理开户日期
      guoxiating   20161016                         增加更新融资融券、金融产品、个股期权的业务范围
      wujun        20161028                         在未明确客户级别如何更新前，先将客户级别默认初始为普通级别，避免首页出错；
      guoxiating   20161029                         开户日期、销户日期，客户状态取DSC_BAS.TKHXX来更新,
                                                    dsc_bas.t_khxx 增加这三个字段的采集，采集至恒生08账户系统
      zouxin       20161105                       增加客户推荐人的采集 引流渠道数据  开户渠道
      guoxiating   20161121    根据资金账号的休眠状态更新客户信息的休眠状态
      guoxiating   20170103   如果账户系统有更新了手机号，则同步更新客户其他联系方式里的手机号，并且左右接收信息的号码
      wujun        20170107                          机构户无需计算年龄
      WeiTQ        20170310   处理从STATS.K_USER_XH@dwdb更新销户日期
      wujun        20170313                         修改;同步更新客户姓名
      guoxiating   20170314  --根据客户的资金账号更新客户的休眠和不合格状态
      wujun        20170316                         修改：增加落地融资融券开户日期、个股期权开户日期、金融产品开户日期
      wujun        20170701                         修改：修改风险承受能力的更新，增加客户预期收益、投资品种、投资期限、评测日期、到期日期更新
      wujun        20170831                         修改，开户渠道源数据和清洗逻辑修改
      wujun        20171012                         修改，TZZFL为空数据更新为默认值9 
      wujun        20171012                         修改，对学历进行更新
      wujun        20180119                         修改，判断手机号有效性的正则表达式，加上9
      wujun        20180313                         修改，修改出生日期由计算改为更新柜台
      wujun        20180409                         修改，客户信息表记录更新有效户年月
      chenjianbo   20180706                         修改: 修正风险测评日清洗时取数字段的错误，由sign_date修正为prof_sign_date
      chenjianbo   20180706                         修改: his.tkhxx->crmii.tkhxx, 增加zjbh(证件编号)、zjdz(证件地址)的更新
      chenjianbo   20180718                         修改: 落地新渠道管理平台的渠道字典(日志:50); 按T_FXCKH.short_code更新tkhxx.YLQD_short_code(新引流渠道代码)
      chenjianbo   20180719                         修改: T_FXCKH落地方式由插入增量客户改为全量刷新（修正crm与数仓数据的不一致问题）
      chenjianbo   20180719                         修改: T_FXCKH.short_code(新渠道)为空，则清洗为'官网'
      chenjianbo   20180806                         修改: TKHXX的KHTJR、KHTJRXM、KHTJRSJ、KHWJSTKFRXM从T_T_FXCKH的更新逻辑，改为源数据不为空，则目标刷新为源
   -----------------------------------------------------------------------*/
  V_RQ NUMBER(8) := TO_NUMBER(TO_CHAR(SYSDATE, 'yyyymmdd'));
  V_PROC_NAME VARCHAR2(60) := $$PLSQL_UNIT;
  V_PROC_NO   VARCHAR2(60);
  V_LOGID     NUMBER;
  V_USER      VARCHAR2(60) := 'HIS';
  V_COUNT     number;
  
BEGIN
  --execute immediate 'alter session force parallel query parallel 16';
  --execute immediate 'alter session force parallel dml parallel 4';
  O_RETCODE := 0;
  O_RETNOTE := '运行正常';
  SELECT PUB_SYS.SEQ_T_PROC_LOG.NEXTVAL INTO V_LOGID FROM DUAL; --日志序列号
  --获取ETL过程的编号
  V_PROC_NO := PUB_SYS.F_GET_PROC_NO(I_S_OWNER     => V_USER,
                                     I_S_PROC_NAME => V_PROC_NAME);
  --过程开始
  --记录日志——开始
  PUB_SYS.P_LOG_PROC(I_N_PROCNO         => V_PROC_NO,
                     I_N_LOGID          => V_LOGID,
                     I_S_USER           => V_USER,
                     I_S_PROCNAME       => V_PROC_NAME,
                     I_N_TJRQ           => I_RQ,
                     I_N_RETCODE        => 1,
                     I_S_RETNOTE        => '正在运行！',
                     I_S_FLAG           => I_REDO,
                     I_N_INSERTORUPDATE => 0);
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
                     
  --更新客户信息
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 51, SYSDATE FROM DUAL;
  COMMIT;
  MERGE INTO CRMII.TKHXX A
  USING (SELECT YYB,
                KHH,
                KHXM,
                KHLX,
                YWFW,
                --KHJB,
                TZZFL,
                DH,
                DZ,
                EMAIL,
                SJ,
                QQ,
                YZBM,
                MDRXM,
                PHLXFS,
                PHLXSJ,
                ZJLB,
                ZJBH,
                ZJDZ,
                ZJYXQ,
                FXCSNL,
                FXPH,
                ZHFXTZ,
                MZ,
                SEX,
                PROVINCE,
                CITY,
                SEC,
                GJ,
                XL,
                CSRQ
           FROM HIS.TKHXX) B
  ON (A.KHH = B.KHH)
  WHEN MATCHED THEN
    UPDATE
       SET A.SJ    = B.SJ, --DECODE(A.SJ, NULL, B.SJ, A.SJ),
           A.DH    = B.DH, --DECODE(A.DH, NULL, B.DH, A.DH),
           A.EMAIL = B.EMAIL, --DECODE(A.EMAIL, NULL, B.EMAIL, A.EMAIL)
           A.KHXM  = B.KHXM,
           A.zjbh  = B.zjbh,  -- 20180706 chenjianbo 新增
           A.zjdz  = B.zjdz,  -- 20180706 chenjianbo 新增
           A.ZJYXQ = B.ZJYXQ,
           A.XL    = B.XL,
           A.CSRQ  = B.CSRQ
    /*WHERE (A.SJ IS NULL AND B.SJ IS NOT NULL)
    OR (A.DH IS NULL AND B.DH IS NOT NULL)
    OR (A.EMAIL IS NULL AND B.EMAIL IS NOT NULL)*/
    --OR (A.KHJB != B.KHJB)
    
  
  WHEN NOT MATCHED THEN
    INSERT /*+append*/
      (ID,
       YYB,
       KHH,
       KHXM,
       KHLX,
       YWFW,
       KHJB, --20161028 wujun 在未明确客户级别如何更新前，先将客户级别默认初始为普通级别，避免首页出错；
       TZZFL,
       DH,
       DZ,
       EMAIL,
       SJ,
       QQ,
       YZBM,
       MDRXM,
       PHLXFS,
       PHLXSJ,
       ZJLB,
       ZJBH,
       ZJDZ,
       ZJYXQ,
       FXCSNL,
       FXPH,
       ZHFXTZ,
       MZ,
       KHYYB,
       SEX,
       PROVINCE,
       CITY,
       SEC,
       GJ,
       XL,
       CSRQ)
    VALUES
      ( /*HIS.SEQ_TKHXX_ID.NEXTVAL*/B.KHH,
       B.YYB,
       B.KHH,
       B.KHXM,
       B.KHLX,
       B.YWFW,
       0,
       B.TZZFL,
       B.DH,
       B.DZ,
       B.EMAIL,
       B.SJ,
       B.QQ,
       B.YZBM,
       B.MDRXM,
       B.PHLXFS,
       B.PHLXSJ,
       B.ZJLB,
       B.ZJBH,
       B.ZJDZ,
       B.ZJYXQ,
       B.FXCSNL,
       B.FXPH,
       B.ZHFXTZ,
       B.MZ,
       B.YYB,
       B.SEX,
       B.PROVINCE,
       B.CITY,
       B.SEC,
       B.GJ,
       B.XL,
       B.CSRQ);
  COMMIT;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 52, SYSDATE FROM DUAL;
  COMMIT;
  --更新客户属性
  /*    INSERT \*+append*\
  INTO CRMII.TKHSX
      (ID, KHH, SXBM, SXZ, GXRQ)
      SELECT CRMII.FUNC_NEXTID('TKHSX'),
             ID,
             'CSRQ',
             NVL(FUNC_CUSTOMER_CSRQ_BYZJBH(ZJLB, ZJBH), 0),
             V_RQ
        FROM CRMII.TKHXX A
       WHERE NOT EXISTS (SELECT 1
                FROM CRMII.TKHSX B
               WHERE A.ID = B.KHH
                 AND B.SXBM = 'CSRQ');*/
  /*UPDATE CRMII.TKHXX
     SET CSRQ = NVL(FUNC_CUSTOMER_CSRQ_BYZJBH(ZJLB, ZJBH), 0)
   WHERE KHLX = 0
     AND CSRQ IS NULL;
  COMMIT;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 53, SYSDATE FROM DUAL;
  COMMIT;*/
  /*update crmii.tkhxx a set a.khzt=(select b.khzt from dsc_bas.t_khxx_jjyw b where a.khh=b.khh)
  where exists(select 1 from dsc_bas.t_khxx_jjyw b where a.khh=b.khh);*/
  --更新客户风险承受能力
  /*update crmii.tkhxx a
    set (a.fxcsnl, a.fxqfxdj) =
        (select b.corp_risk_level, b.aml_risk_level
           from src_jzu.client_2 b
          where a.khh = b.client_id)
  where exists
  (select 1 from src_jzu.client_2 b where a.khh = b.client_id);*/
  EXECUTE IMMEDIATE 'TRUNCATE TABLE USR.CUST_INVEST_PRO';
  INSERT INTO USR.CUST_INVEST_PRO
    SELECT * FROM EDC_ODM.YGT_CUST_INVEST_PRO@DWDB WHERE DATE_ID = I_RQ;
  COMMIT;
  UPDATE CRMII.TKHXX A
     SET (A.FXQFXDJ) =
         (SELECT B.AML_RISK_LEVEL
            FROM SRC_JZU.CLIENT_2 B
           WHERE A.KHH = B.CLIENT_ID)
   WHERE EXISTS
   (SELECT 1 FROM SRC_JZU.CLIENT_2 B WHERE A.KHH = B.CLIENT_ID);
  COMMIT;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 54, SYSDATE FROM DUAL;
  COMMIT;
  UPDATE CRMII.TKHXX A
     SET (A.FXCSNL, A.TZZFL, A.TZQX, A.TZPZ, A.QWSY, A.PCRQ, A.DQRQ) =
         (SELECT B.RATING_LVL,
                 PROF_INVESTOR_TYPE,
                 B.INVEST_LMT,
                 REPLACE(REPLACE(B.INVEST_PRO, '0', ''), ',', ';'),
                 B.EXPECT_INCOME,
--                 B.SIGN_DATE,
                 B.prof_sign_date, -- 20180706,chenjianbo修正,原字段SIGN_DATE
                 B.RATING_EXP_DATE
            FROM USR.CUST_INVEST_PRO B
           WHERE A.ID = B.CUST_CODE)
   WHERE EXISTS
   (SELECT 1 FROM USR.CUST_INVEST_PRO B WHERE A.ID = B.CUST_CODE);
  COMMIT;
  UPDATE CRMII.TKHXX KH SET KH.TZZFL = 9 WHERE KH.TZZFL IS NULL;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 55, SYSDATE FROM DUAL;
  COMMIT;
  --处理开户日期
  /*UPDATE crmii.tkhxx a SET a.khrq=(SELECT t.khrq FROM push_crm.tgj_khxx t WHERE t.khh=a.khh) WHERE a.khrq IS NULL; 
  COMMIT;*/
  MERGE INTO CRMII.TKHXX A
  USING DSC_BAS.T_KHXX B
  ON (A.KHH = B.KHH)
  WHEN MATCHED THEN
    UPDATE SET A.KHRQ = B.KHRQ, A.XHRQ = B.XHRQ, A.KHZT = B.KHZT;
  COMMIT;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 56, SYSDATE FROM DUAL;
  COMMIT;
  --处理融资融券开户日期
  MERGE INTO CRMII.TKHXX A
  USING DSC_BAS.T_KHXX_RZRQ B
  ON (A.KHH = B.KHH)
  WHEN MATCHED THEN
    UPDATE SET A.KHRQ_RZRQ = B.KHRQ;
  COMMIT;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 57, SYSDATE FROM DUAL;
  COMMIT;
  --处理个股期权开户日期
  MERGE INTO CRMII.TKHXX A
  USING DSC_BAS.T_KHXX_GGQQ B
  ON (A.KHH = B.KHH)
  WHEN MATCHED THEN
    UPDATE SET A.KHRQ_GGQQ = B.KHRQ;
  COMMIT;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 58, SYSDATE FROM DUAL;
  COMMIT;
  --处理金融产品开户日期
  MERGE INTO CRMII.TKHXX A
  USING DSC_BAS.T_KHXX_FP B
  ON (A.KHH = B.KHH)
  WHEN MATCHED THEN
    UPDATE SET A.KHRQ_FP = B.KHRQ;
  COMMIT;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 59, SYSDATE FROM DUAL;
  COMMIT;
  --wtq 20170310 处理从STATS.K_USER_XH@dwdb更新销户日期
  MERGE INTO CRMII.TKHXX A
  USING STATS.K_USER_XH@DWDB B
  ON (A.KHH = B.USER_CODE)
  WHEN MATCHED THEN
    UPDATE SET A.XHRQ = B.XH_DATE;
  COMMIT;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 60, SYSDATE FROM DUAL;
  COMMIT;
  --更新两融的业务范围
  UPDATE CRMII.TKHXX A
     SET A.YWFW = A.YWFW + 4
   WHERE BITAND(YWFW, 4) <> 4
     AND EXISTS
   (SELECT 1 FROM DSC_BAS.T_KHXX_RZRQ B WHERE A.KHH = B.KHH);
  COMMIT;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 61, SYSDATE FROM DUAL;
  COMMIT;
  --更新金融产品的业务范围    
  UPDATE CRMII.TKHXX A
     SET A.YWFW = A.YWFW + 16
   WHERE BITAND(YWFW, 16) <> 16
     AND EXISTS
   (SELECT 1 FROM DSC_BAS.T_KHXX_FP B WHERE A.KHH = B.KHH);
  COMMIT;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 62, SYSDATE FROM DUAL;
  COMMIT;
  --更新个股期权的业务范围
  UPDATE CRMII.TKHXX A
     SET A.YWFW = A.YWFW + 32
   WHERE BITAND(YWFW, 32) <> 32
     AND EXISTS
   (SELECT 1 FROM DSC_BAS.T_KHXX_GGQQ B WHERE A.KHH = B.KHH);
  COMMIT;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 63, SYSDATE FROM DUAL;
  COMMIT;
  --增加客户推荐人的采集 
  --1、没找到就不插入开户推荐人；
  --2、一个手机找到多个人员，取状态正常的，如果多个人员都正常，取max（id
  --wujun   20170831 落地一柜通客户开户渠道数据
  EXECUTE IMMEDIATE 'TRUNCATE TABLE CRMII.YGT_USER_BASIC_INFO';
  INSERT INTO CRMII.YGT_USER_BASIC_INFO
    SELECT USER_CODE, OPEN_SOURCE
      FROM EDC_ODM.YGT_USER_BASIC_INFO@DWDB T
     WHERE T.DATE_ID = I_RQ;
  COMMIT;
  --wujun 20161201 落地非现场开户信息
  /* 因增加 short_code列，初始化更新数据，chenjianbo 20180718
  merge into T_FXCKH T1
  using (select distinct client_id,short_code from STATS.VW_FXCKH@DWDB where short_code is not null) T2
  on (T1.client_id=T2.client_id)
  when matched then
    update set T1.Short_Code=T2.Short_Code; 
  COMMIT;
  */
  EXECUTE IMMEDIATE 'TRUNCATE TABLE CRMII.T_FXCKH';  -- 20180719 chenjianbo 改落地方式(增量->全量刷新)
  INSERT INTO CRMII.T_FXCKH
    (LSH,
     CLIENT_ID,
     CREATEDATE,
     TG_ID,
     CHANNEL_ID,
     REMARK2,
     RECOMMENDNO,
     INFOCOLECT_CHANNEL,
     SHORT_CODE)
    SELECT LSH,
           CLIENT_ID,
           CREATEDATE,
           TG_ID,
           CHANNEL_ID,
           REMARK2,
           RECOMMENDNO,
           INFOCOLECT_CHANNEL,
           SHORT_CODE  -- 新增 chenjianbo 20180718
      FROM STATS.VW_FXCKH@DWDB B
     WHERE B.CLIENT_ID IS NOT NULL;
--       AND NOT EXISTS
--     (SELECT 1 FROM CRMII.T_FXCKH A WHERE A.CLIENT_ID = B.CLIENT_ID);
  COMMIT;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 64, SYSDATE FROM DUAL;
  COMMIT;
  --删除client_id为null的数据
  DELETE FROM CRMII.T_FXCKH A WHERE A.CLIENT_ID IS NULL;
  COMMIT;
  --删除重复记录
  DELETE FROM CRMII.T_FXCKH A
   WHERE ROWID != (SELECT MAX(ROWID)
                     FROM CRMII.T_FXCKH B
                    WHERE A.CLIENT_ID = B.CLIENT_ID);
  COMMIT;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 65, SYSDATE FROM DUAL;
  COMMIT;
  --wujun 20161207 落地现场开户信息
  /*INSERT INTO CRMII.T_XCKH
  (CLIENT_ID, OPEN_DATE)
  SELECT CLIENT_ID, OPEN_DATE
    FROM STATS.VW_XCKH@DWDB_OLD B
   WHERE B.CLIENT_ID IS NOT NULL
     AND NOT EXISTS
   (SELECT 1 FROM CRMII.T_XCKH A WHERE A.CLIENT_ID = B.CLIENT_ID);*/
  /*INSERT INTO CRMII.T_XCKH
    (CLIENT_ID, OPEN_DATE)
    SELECT CLIENT_ID, OPEN_DATE
      FROM STATS.VW_XCKH@DWDB_OLD;  
    COMMIT;
  INSERT INTO his.test_para9(proc,sj) SELECT 66,SYSDATE FROM dual;
  COMMIT;
    --删除重复记录
    DELETE FROM CRMII.T_XCKH A WHERE a.client_id IS NULL;
    COMMIT;
    DELETE FROM CRMII.T_XCKH A
     WHERE ROWID != (SELECT MAX(ROWID)
                       FROM CRMII.T_XCKH B
                      WHERE A.CLIENT_ID = B.CLIENT_ID);
    COMMIT;
  INSERT INTO his.test_para9(proc,sj) SELECT 67,SYSDATE FROM dual;
  COMMIT;*/
  -- 开户渠道来源的清洗
  /*MERGE INTO (SELECT KHH, KHQD
                  FROM CRMII.TKHXX
                 WHERE (KHQD IS NULL OR KHQD = 1)) A
    USING (SELECT CLIENT_ID KHH, INFOCOLECT_CHANNEL KHFS
             FROM CRMII.T_FXCKH
            WHERE INFOCOLECT_CHANNEL IS NOT NULL) B
    ON (A.KHH = B.KHH)
    WHEN MATCHED THEN
      UPDATE SET A.KHQD = B.KHFS;
    COMMIT;
    INSERT INTO his.test_para9(proc,sj) SELECT 68,SYSDATE FROM dual;
  COMMIT;
    UPDATE CRMII.TKHXX A
       SET KHQD = 1
     WHERE EXISTS (SELECT 1 FROM CRMII.T_XCKH B WHERE A.KHH = B.CLIENT_ID);
    COMMIT;*/
  UPDATE CRMII.TKHXX KH
     SET KHQD =
         (SELECT CASE
                   WHEN YGT.OPEN_SOURCE IN ('1', '2', '3') THEN
                    2
                   ELSE
                    1
                 END
            FROM CRMII.YGT_USER_BASIC_INFO YGT
           WHERE KH.ID = YGT.USER_CODE)
   WHERE KHQD IS NULL
     AND EXISTS (SELECT 1
            FROM CRMII.YGT_USER_BASIC_INFO FO
           WHERE FO.USER_CODE = KH.ID);
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 69, SYSDATE FROM DUAL;
  COMMIT;
  --引流渠道数据
  MERGE INTO (SELECT KHH, YLQD
                FROM CRMII.TKHXX
               WHERE KHQD = 2
                 AND (YLQD IS NULL OR YLQD = 1)) A
  USING (SELECT CLIENT_ID,
                CASE
                  WHEN TG_ID = '10000' THEN
                   2
                  WHEN TG_ID = '10020' THEN
                   3
                  WHEN TG_ID = '10040' THEN
                   4
                  WHEN TG_ID = '10060' THEN
                   5
                  WHEN TG_ID = '10080' THEN
                   7
                  WHEN TG_ID = '10101' THEN
                   10
                  WHEN (TG_ID = 0 OR TG_ID IS NULL) AND
                       CHANNEL_ID IS NOT NULL THEN
                   TO_NUMBER(CHANNEL_ID)
                  ELSE
                   1
                END YLQD
           FROM CRMII.T_FXCKH) B
  ON (A.KHH = B.CLIENT_ID)
  WHEN MATCHED THEN
    UPDATE SET A.YLQD = B.YLQD;
  COMMIT;
  
  --新增 YLQD_SHORT_CODE清洗（额外规则：新渠道为空，则清洗为'官网'） chenjianbo 20180718
  MERGE INTO CRMII.TKHXX A
  USING (SELECT CLIENT_ID,SHORT_CODE FROM CRMII.T_FXCKH) B
  ON (A.id = B.CLIENT_ID)
  WHEN MATCHED THEN
    UPDATE SET A.YLQD_SHORT_CODE = case when B.short_code is not null then B.SHORT_CODE else 'guanwang' end;
  COMMIT;
  
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 70, SYSDATE FROM DUAL;
  COMMIT;
  
  MERGE INTO (SELECT KHH, KHTJR, KHTJRSJ, KHTJRXM, KHWJSTKFRXM
                FROM CRMII.TKHXX
               WHERE /*(khqd IS NULL OR khqd<>1)*/
               KHQD = 2
           AND (KHTJR IS NULL OR KHTJRSJ IS NULL OR KHWJSTKFRXM IS NULL)) A
  USING (SELECT B.CLIENT_ID   KHH,
                B.RECOMMENDNO TJSJH,
                B.REMARK2,
                C.RYXX        RYXX,
                RYXM
           FROM CRMII.T_FXCKH B
           LEFT JOIN (SELECT ID RYXX, RYXM, SJ
                       FROM (SELECT ID,
                                    RYXM,
                                    TRIM(SJ) SJ,
                                    ROW_NUMBER() OVER(PARTITION BY SJ ORDER BY ID DESC) RN
                               FROM CRMII.TRYXX
                              WHERE ZHZT = 0
                                AND SJ IS NOT NULL)
                      WHERE RN = 1
                        AND SJ IS NOT NULL) C
             ON (B.RECOMMENDNO = C.SJ)) D
  ON (A.KHH = D.KHH)
  WHEN MATCHED THEN
  -- 20180806 chenjianbo，逻辑改为源不为空，则目标刷新为源，因为源数据始终是最新的（非现场开户填错数据会改正为新的）
    UPDATE
		
       SET A.KHTJR       = case when D.RYXX is not null then D.RYXX else A.KHTJR end,
           A.KHTJRXM     = case when D.RYXM is not null then D.RYXM else A.KHTJRXM end,
           A.KHTJRSJ     = case when D.TJSJH is not null then D.TJSJH else A.KHTJRSJ end,
           A.KHWJSTKFRXM = case when D.REMARK2 is not null then D.REMARK2 else A.KHWJSTKFRXM end;
/*	
    UPDATE
		
       SET A.KHTJR       = NVL(A.KHTJR, D.RYXX),
           A.KHTJRXM     = NVL(A.KHTJRXM, D.RYXM),
           A.KHTJRSJ     = NVL(A.KHTJRSJ, D.TJSJH),
           A.KHWJSTKFRXM = NVL(A.KHWJSTKFRXM, D.REMARK2);
*/					 
	
  COMMIT;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 71, SYSDATE FROM DUAL;
  COMMIT;
  --20170123 wujun 落地渠道推荐人信息
  UPDATE CRMII.TKHXX KH
     SET KH.KHTJRXM =
         (SELECT QD.RYXM
            FROM CRMII.ENTITY_QDXXDR QD
           WHERE TRIM(QD.SJ) = TRIM(KH.KHTJRSJ))
   WHERE KH.KHTJRSJ IS NOT NULL
     AND EXISTS (SELECT 1
            FROM CRMII.ENTITY_QDXXDR D
           WHERE TRIM(KH.KHTJRSJ) = TRIM(D.SJ));
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 72, SYSDATE FROM DUAL;
  COMMIT;
  /*merge into (select khh, ylqd from crmii.tkhxx where ylqd is null) a
  using (select *
           from (select client_id khh,
                        CHANNEL_ID,
                        (case
                          when TG_ID = '10000' then
                           2
                          when TG_ID = '10020' then
                           3
                          when TG_ID = '10040' then
                           4
                          when TG_ID = '10060' then
                           5
                          when TG_ID = '10080' then
                           7
                          else
                           TG_ID
                        end) TG_ID,
                        ROW_NUMBER() OVER(PARTITION BY client_id ORDER BY client_id desc) RN
                   from usr.tfxckhxx
                  where client_id is not null)
          where rn = 1) b
  on (a.khh = b.khh)
  when matched then
    update
       set a.ylqd =
           (case
             when b.CHANNEL_ID is null and b.TG_ID is null then
              1
             else
              nvl(b.TG_ID, b.CHANNEL_ID)
           end);
  commit;*/
  --wujun  20170831 更新客户是否开户成功数据
  UPDATE CRMII.TKHXX KH
     SET KH.SFKHZC = 1
   WHERE (KH.SFKHZC = 0 OR KH.SFKHZC IS NULL)
     AND EXISTS (SELECT 1 FROM DSC_BAS.T_ZJZH ZH WHERE ZH.KHH = KH.KHH)
     AND EXISTS
   (SELECT 1 FROM DSC_BAS.T_CGZHDY CG WHERE CG.KHH = KH.KHH);
  UPDATE CRMII.TKHXX KH SET KH.SFKHZC = 0 WHERE KH.SFKHZC IS NULL;
  COMMIT;
  --根据客户的资金账号更新客户的休眠和不合格状态
  UPDATE CRMII.TKHXX A
     SET A.KHZT = 6
   WHERE EXISTS (SELECT 1
            FROM DSC_BAS.T_ZJZH B
           WHERE A.KHH = B.KHH
             AND B.ZHZT = 6)
     AND NOT EXISTS (SELECT 1
            FROM DSC_BAS.T_ZJZH C
           WHERE A.KHH = C.KHH
             AND C.ZHZT = 0);
  COMMIT;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 73, SYSDATE FROM DUAL;
  COMMIT;
  UPDATE CRMII.TKHXX A
     SET A.KHZT = 7
   WHERE EXISTS (SELECT 1
            FROM DSC_BAS.T_ZJZH B
           WHERE A.KHH = B.KHH
             AND B.ZHZT = 7)
     AND NOT EXISTS (SELECT 1
            FROM DSC_BAS.T_ZJZH C
           WHERE A.KHH = C.KHH
             AND C.ZHZT = 0);
  COMMIT;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 74, SYSDATE FROM DUAL;
  COMMIT;
  ----------如果账户系统有更新了手机号，则同步更新客户其他联系方式里的手机号，并且左右接收信息的号码
  EXECUTE IMMEDIATE 'truncate table crmii.TEMPDATA_sj';
  INSERT INTO CRMII.TEMPDATA_SJ
    (N1, C2, C3)
    SELECT ID, KHH, SJ
      FROM CRMII.TKHXX A
     WHERE REGEXP_LIKE(TRIM(NVL(SJ, '0')),
                       '^[1]{1}[3456789]{1}[[:digit:]]{9}$')
       AND NOT EXISTS (SELECT 1
              FROM CRMII.TKHXX_QTLXFS B
             WHERE A.ID = B.KHH
               AND B.LXFS = 8
               AND B.SFZLXFS = 1
               AND A.SJ = B.LXZ);
  --处理老客户修改了手机号码的
  INSERT INTO CRMII.TKHXX_XGJL
    (ID, KHH, XGRQ, XGSJ, ZD, ZDMC, NEWVALUE, OLDVALUE, XGR, XGQD)
    SELECT CRMII.FUNC_NEXTID('TKHXX_XGJL'),
           A.N1,
           I_RQ,
           TO_CHAR(SYSDATE,'hh24:mi:ss'),
           'SFJSXX',
           '是否接收信息',
           A.C3,
           (SELECT LXZ
              FROM CRMII.TKHXX_QTLXFS LX
             WHERE LX.KHH = A.N1
               AND LX.SFJSXX = 1
               AND LX.LXFS = 8),
           0,
           1
      FROM CRMII.TEMPDATA_SJ A
     WHERE EXISTS (SELECT 1
              FROM CRMII.TKHXX_QTLXFS B
             WHERE A.N1 = B.KHH
               AND B.SFJSXX = 1
               AND B.LXFS = 8
               AND A.C2 <> B.LXZ);
  COMMIT;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 75, SYSDATE FROM DUAL;
  COMMIT;
  UPDATE CRMII.TKHXX_QTLXFS A
     SET A.SFJSXX = 0,A.GXR = 0, A.GXRQ = I_RQ
   WHERE EXISTS (SELECT 1 FROM CRMII.TEMPDATA_SJ B WHERE A.KHH = B.N1)
     AND A.LXFS = 8
     AND A.SFJSXX = 1;
  COMMIT;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 76, SYSDATE FROM DUAL;
  COMMIT;
  UPDATE CRMII.TKHXX_QTLXFS A
     SET A.SFJSXX = 1,A.GXR = 0,A.GXRQ = I_RQ
   WHERE EXISTS (SELECT 1 FROM CRMII.TEMPDATA_SJ B WHERE A.KHH = B.N1)
     AND A.LXFS = 8
     AND A.SFZLXFS = 1;
  COMMIT;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 77, SYSDATE FROM DUAL;
  COMMIT;
  UPDATE CRMII.TKHXX_QTLXFS A
     SET A.LXZ = (SELECT C3 FROM CRMII.TEMPDATA_SJ B WHERE A.KHH = B.N1),
         A.GXR = 0,
         A.GXRQ = I_RQ
   WHERE A.LXFS = 8
     AND A.SFZLXFS = 1
     AND EXISTS
   (SELECT 1 FROM CRMII.TEMPDATA_SJ B WHERE A.KHH = B.N1);
  COMMIT;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 78, SYSDATE FROM DUAL;
  COMMIT;
  --处理新开的客户
  INSERT INTO CRMII.TKHXX_QTLXFS
    (ID, KHH, LXFS, LXZ, SFZLXFS, SFJSXX, ZT, GXR, GXRQ, BZ)
    SELECT CRMII.SEQ_TKHXX_QTLXFS.NEXTVAL /*crmii.func_nextid('tKHXX_QTLXFS')*/,
           N1,
           8,
           C3,
           1,
           1,
           0,
           0,
           I_RQ,
           '人员主联系手机'
      FROM CRMII.TEMPDATA_SJ A
     WHERE NOT EXISTS (SELECT 1
              FROM CRMII.TKHXX_QTLXFS B
             WHERE A.N1 = B.KHH
               AND B.LXFS = 8
               AND B.SFZLXFS = 1);
  COMMIT;
  --全量更新客户信息表的服务人员字段
  UPDATE CRMII.TKHXX A SET A.LCJL = NULL;
  UPDATE CRMII.TKHXX A
     SET A.LCJL =
         (SELECT B.RYXX
            FROM CRMII.TKHGX B
           WHERE A.ID = B.KHH
             AND B.GXLX = 1
             AND B.ZT = 0)
   WHERE EXISTS (SELECT 1
            FROM CRMII.TKHGX B
           WHERE A.ID = B.KHH
             AND B.GXLX = 1
             AND B.ZT = 0);
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 79, SYSDATE FROM DUAL;
  COMMIT;
  --更新有效户年月
 UPDATE CRMII.TKHXX A
    SET A.YXHNY =
        (SELECT YXHRQ FROM CRMII.TYXHXX T WHERE T.KHH = A.KHH)
  WHERE A.YXHNY IS NULL
    AND EXISTS (SELECT 1 FROM CRMII.TYXHXX T1 WHERE T1.KHH = A.KHH);
 
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 80, SYSDATE FROM DUAL;
  COMMIT;
  --execute immediate 'alter session disable parallel query';
  -- execute immediate 'alter session disable parallel dml';
  --存储过程运行成功
  O_RETCODE := 0;
  O_RETNOTE := '运行正常';
  --记录日志——成功结束
  PUB_SYS.P_LOG_PROC(I_N_PROCNO         => V_PROC_NO,
                     I_N_LOGID          => V_LOGID,
                     I_S_USER           => V_USER,
                     I_S_PROCNAME       => V_PROC_NAME,
                     I_N_TJRQ           => I_RQ,
                     I_N_RETCODE        => O_RETCODE,
                     I_S_RETNOTE        => O_RETNOTE,
                     I_S_FLAG           => I_REDO,
                     I_N_INSERTORUPDATE => 1);
EXCEPTION
  WHEN OTHERS THEN
    O_RETCODE := -1;
    O_RETNOTE := '运行失败！';
    O_RETNOTE := O_RETNOTE || SQLERRM;
    ROLLBACK;
  
    --记录日志——成功结束
    PUB_SYS.P_LOG_PROC(I_N_PROCNO         => V_PROC_NO,
                       I_N_LOGID          => V_LOGID,
                       I_S_USER           => V_USER,
                       I_S_PROCNAME       => V_PROC_NAME,
                       I_N_TJRQ           => I_RQ,
                       I_N_RETCODE        => O_RETCODE,
                       I_S_RETNOTE        => O_RETNOTE,
                       I_S_FLAG           => I_REDO,
                       I_N_INSERTORUPDATE => 1);
END PRO_KHXX_CJ;