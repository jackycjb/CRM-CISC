CREATE OR REPLACE PROCEDURE HIS.PRO_KHXX_CJ(O_RETCODE OUT NUMBER,
                                            O_RETNOTE OUT VARCHAR2,
                                            I_RQ      IN NUMBER,
                                            I_REDO    IN NUMBER) IS
  /*-----------------------------------------------------------------------
   ��Ŀ���ƣ�  CRM4.0
   ��������:   PRO_KHXX_CJ
   ���ܼ�����  �ͻ���Ϣ
   -----------------------------------------------
   ������
          Ӣ������            ��������                ����ȡֵ
          O_RETCODE          ����ֵ
          O_RETNOTE          ������Ϣ
  
   ���أ�
       >0  �ɹ�,���ز�ѯ�ֶε�����
       -1  ��������
  -----------------------------------------------
       �������ݼ�����
  -----------------------------------------------
  ҵ���߼���
  
     ÿ�����ϣ���HIS�е�TKHXX�������µ�CORE�е�TKHXX��
     1.����ԭ��CRMII.TKHXX�����е��ֶβ���
     2.���ڴ����ͻ��ֻ������䣬�绰����ʱ�����ԭ���ͻ���������Щ��Ϣ������£����򲻸��¡�
     3.���¿ͻ��������ڿͻ�����
  ע�����
  
  ����Դ��
    1):HIS.TKHXX �ͻ���Ϣ
    2):CRMII.TKHXX �ͻ���Ϣ
    3):CRMII.TKHSX �ͻ�������Ϣ
  
    �޸ļ�¼;
    ------------------------------------------------------------------------
    ������           ����ʱ��       �汾            ����
      ����          20130704      v.4.0.0.1          ����
      ����          20130917      v.4.0.0.2          ���ӿͻ�����ɼ�
      �µ���        20140704      v.4.0.0.3          �޸ģ�ȥ��KHJB�ɼ����´���ԭ������ͻ��������ã�֮ǰ����KHJB������Ϊ�ͻ���������DM�û��¼��㣬�����Ѿ�����Ϊ��HIS.PRO_CALC_KHJB�м���
      �µ���        20140717      v.4.0.0.4          �޸ģ�1)CRMII.TKHXX���ID��KHHһ�£�
                                                           2)�޸ĳ������ڴ����߼������ɵ�CRMII.TKHXX��������CRMII.TKHSX
                                                           3)�����ֶΡ�����, �Ա�, ʡ��, ����, ����, ���Ҵ���, ѧ�����롱�Ĳɼ�
      wujun        20160902      v.4.0.0.5          �޸ģ�������ϴKHYYB����ʱȡ��YYBһ����ֵ
      guoxiating   20160919      6                  ���Ӹ��¿ͻ����ճ�������
      wujun        20161012      v.4.0.0.7          �޸�:���Ӵ���������
      guoxiating   20161016                         ���Ӹ���������ȯ�����ڲ�Ʒ��������Ȩ��ҵ��Χ
      wujun        20161028                         ��δ��ȷ�ͻ�������θ���ǰ���Ƚ��ͻ�����Ĭ�ϳ�ʼΪ��ͨ���𣬱�����ҳ����
      guoxiating   20161029                         �������ڡ��������ڣ��ͻ�״̬ȡDSC_BAS.TKHXX������,
                                                    dsc_bas.t_khxx �����������ֶεĲɼ����ɼ�������08�˻�ϵͳ
      zouxin       20161105                       ���ӿͻ��Ƽ��˵Ĳɼ� ������������  ��������
      guoxiating   20161121    �����ʽ��˺ŵ�����״̬���¿ͻ���Ϣ������״̬
      guoxiating   20170103   ����˻�ϵͳ�и������ֻ��ţ���ͬ�����¿ͻ�������ϵ��ʽ����ֻ��ţ��������ҽ�����Ϣ�ĺ���
      wujun        20170107                          �����������������
      WeiTQ        20170310   �����STATS.K_USER_XH@dwdb������������
      wujun        20170313                         �޸�;ͬ�����¿ͻ�����
      guoxiating   20170314  --���ݿͻ����ʽ��˺Ÿ��¿ͻ������ߺͲ��ϸ�״̬
      wujun        20170316                         �޸ģ��������������ȯ�������ڡ�������Ȩ�������ڡ����ڲ�Ʒ��������
      wujun        20170701                         �޸ģ��޸ķ��ճ��������ĸ��£����ӿͻ�Ԥ�����桢Ͷ��Ʒ�֡�Ͷ�����ޡ��������ڡ��������ڸ���
      wujun        20170831                         �޸ģ���������Դ���ݺ���ϴ�߼��޸�
      wujun        20171012                         �޸ģ�TZZFLΪ�����ݸ���ΪĬ��ֵ9 
      wujun        20171012                         �޸ģ���ѧ�����и���
      wujun        20180119                         �޸ģ��ж��ֻ�����Ч�Ե�������ʽ������9
      wujun        20180313                         �޸ģ��޸ĳ��������ɼ����Ϊ���¹�̨
      wujun        20180409                         �޸ģ��ͻ���Ϣ���¼������Ч������
      chenjianbo   20180706                         �޸�: �������ղ�������ϴʱȡ���ֶεĴ�����sign_date����Ϊprof_sign_date
      chenjianbo   20180706                         �޸�: his.tkhxx->crmii.tkhxx, ����zjbh(֤�����)��zjdz(֤����ַ)�ĸ���
      chenjianbo   20180718                         �޸�: �������������ƽ̨�������ֵ�(��־:50); ��T_FXCKH.short_code����tkhxx.YLQD_short_code(��������������)
      chenjianbo   20180719                         �޸�: T_FXCKH��ط�ʽ�ɲ��������ͻ���Ϊȫ��ˢ�£�����crm���������ݵĲ�һ�����⣩
      chenjianbo   20180719                         �޸�: T_FXCKH.short_code(������)Ϊ�գ�����ϴΪ'����'
      chenjianbo   20180806                         �޸�: TKHXX��KHTJR��KHTJRXM��KHTJRSJ��KHWJSTKFRXM��T_T_FXCKH�ĸ����߼�����ΪԴ���ݲ�Ϊ�գ���Ŀ��ˢ��ΪԴ
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
  O_RETNOTE := '��������';
  SELECT PUB_SYS.SEQ_T_PROC_LOG.NEXTVAL INTO V_LOGID FROM DUAL; --��־���к�
  --��ȡETL���̵ı��
  V_PROC_NO := PUB_SYS.F_GET_PROC_NO(I_S_OWNER     => V_USER,
                                     I_S_PROC_NAME => V_PROC_NAME);
  --���̿�ʼ
  --��¼��־������ʼ
  PUB_SYS.P_LOG_PROC(I_N_PROCNO         => V_PROC_NO,
                     I_N_LOGID          => V_LOGID,
                     I_S_USER           => V_USER,
                     I_S_PROCNAME       => V_PROC_NAME,
                     I_N_TJRQ           => I_RQ,
                     I_N_RETCODE        => 1,
                     I_S_RETNOTE        => '�������У�',
                     I_S_FLAG           => I_REDO,
                     I_N_INSERTORUPDATE => 0);
  -- �������������ƽ̨�������ֵ�
  SELECT COUNT(1) INTO V_COUNT FROM edc_odm.CRHQD_V_CHANNELINFO@DWDB;
  IF V_COUNT > 0 THEN
    -- Դ���ݴ��ڲ�ˢ�£��Է�������Դ����ʱɾ��������ݣ�Ŀ��������Ӹ�id�У�livebos����Ҫ�õ���������Ͽ�ѡ���б���Ŀ��������Ϊ�գ�
    EXECUTE IMMEDIATE 'TRUNCATE TABLE CRMII.T_CRHQD_V_CHANNELINFO';
    INSERT INTO CRMII.T_CRHQD_V_CHANNELINFO
      (id,DATE_ID,SHORT_CODE,CHANNEL_NAME,DATA_DATE)
      SELECT id,DATE_ID,SHORT_CODE,CHANNEL_NAME,DATA_DATE
        from(select rownum id ,DATE_ID,SHORT_CODE,CHANNEL_NAME,DATA_DATE from edc_odm.CRHQD_V_CHANNELINFO@DWDB a) order by id;
    -- ��������'����'��Ŀ
    INSERT INTO CRMII.T_CRHQD_V_CHANNELINFO
      (id,SHORT_CODE,CHANNEL_NAME)
      select -1, 'guanwang','����' from dual;
    COMMIT;
    INSERT INTO HIS.TEST_PARA9
      (PROC, SJ)
      SELECT 50, SYSDATE FROM DUAL;
    COMMIT;
  END IF;
                     
  --���¿ͻ���Ϣ
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
           A.zjbh  = B.zjbh,  -- 20180706 chenjianbo ����
           A.zjdz  = B.zjdz,  -- 20180706 chenjianbo ����
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
       KHJB, --20161028 wujun ��δ��ȷ�ͻ�������θ���ǰ���Ƚ��ͻ�����Ĭ�ϳ�ʼΪ��ͨ���𣬱�����ҳ����
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
  --���¿ͻ�����
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
  --���¿ͻ����ճ�������
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
                 B.prof_sign_date, -- 20180706,chenjianbo����,ԭ�ֶ�SIGN_DATE
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
  --����������
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
  --����������ȯ��������
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
  --���������Ȩ��������
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
  --������ڲ�Ʒ��������
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
  --wtq 20170310 �����STATS.K_USER_XH@dwdb������������
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
  --�������ڵ�ҵ��Χ
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
  --���½��ڲ�Ʒ��ҵ��Χ    
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
  --���¸�����Ȩ��ҵ��Χ
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
  --���ӿͻ��Ƽ��˵Ĳɼ� 
  --1��û�ҵ��Ͳ����뿪���Ƽ��ˣ�
  --2��һ���ֻ��ҵ������Ա��ȡ״̬�����ģ���������Ա��������ȡmax��id
  --wujun   20170831 ���һ��ͨ�ͻ�������������
  EXECUTE IMMEDIATE 'TRUNCATE TABLE CRMII.YGT_USER_BASIC_INFO';
  INSERT INTO CRMII.YGT_USER_BASIC_INFO
    SELECT USER_CODE, OPEN_SOURCE
      FROM EDC_ODM.YGT_USER_BASIC_INFO@DWDB T
     WHERE T.DATE_ID = I_RQ;
  COMMIT;
  --wujun 20161201 ��ط��ֳ�������Ϣ
  /* ������ short_code�У���ʼ���������ݣ�chenjianbo 20180718
  merge into T_FXCKH T1
  using (select distinct client_id,short_code from STATS.VW_FXCKH@DWDB where short_code is not null) T2
  on (T1.client_id=T2.client_id)
  when matched then
    update set T1.Short_Code=T2.Short_Code; 
  COMMIT;
  */
  EXECUTE IMMEDIATE 'TRUNCATE TABLE CRMII.T_FXCKH';  -- 20180719 chenjianbo ����ط�ʽ(����->ȫ��ˢ��)
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
           SHORT_CODE  -- ���� chenjianbo 20180718
      FROM STATS.VW_FXCKH@DWDB B
     WHERE B.CLIENT_ID IS NOT NULL;
--       AND NOT EXISTS
--     (SELECT 1 FROM CRMII.T_FXCKH A WHERE A.CLIENT_ID = B.CLIENT_ID);
  COMMIT;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 64, SYSDATE FROM DUAL;
  COMMIT;
  --ɾ��client_idΪnull������
  DELETE FROM CRMII.T_FXCKH A WHERE A.CLIENT_ID IS NULL;
  COMMIT;
  --ɾ���ظ���¼
  DELETE FROM CRMII.T_FXCKH A
   WHERE ROWID != (SELECT MAX(ROWID)
                     FROM CRMII.T_FXCKH B
                    WHERE A.CLIENT_ID = B.CLIENT_ID);
  COMMIT;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 65, SYSDATE FROM DUAL;
  COMMIT;
  --wujun 20161207 ����ֳ�������Ϣ
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
    --ɾ���ظ���¼
    DELETE FROM CRMII.T_XCKH A WHERE a.client_id IS NULL;
    COMMIT;
    DELETE FROM CRMII.T_XCKH A
     WHERE ROWID != (SELECT MAX(ROWID)
                       FROM CRMII.T_XCKH B
                      WHERE A.CLIENT_ID = B.CLIENT_ID);
    COMMIT;
  INSERT INTO his.test_para9(proc,sj) SELECT 67,SYSDATE FROM dual;
  COMMIT;*/
  -- ����������Դ����ϴ
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
  --������������
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
  
  --���� YLQD_SHORT_CODE��ϴ���������������Ϊ�գ�����ϴΪ'����'�� chenjianbo 20180718
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
  -- 20180806 chenjianbo���߼���ΪԴ��Ϊ�գ���Ŀ��ˢ��ΪԴ����ΪԴ����ʼ�������µģ����ֳ�����������ݻ����Ϊ�µģ�
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
  --20170123 wujun ��������Ƽ�����Ϣ
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
  --wujun  20170831 ���¿ͻ��Ƿ񿪻��ɹ�����
  UPDATE CRMII.TKHXX KH
     SET KH.SFKHZC = 1
   WHERE (KH.SFKHZC = 0 OR KH.SFKHZC IS NULL)
     AND EXISTS (SELECT 1 FROM DSC_BAS.T_ZJZH ZH WHERE ZH.KHH = KH.KHH)
     AND EXISTS
   (SELECT 1 FROM DSC_BAS.T_CGZHDY CG WHERE CG.KHH = KH.KHH);
  UPDATE CRMII.TKHXX KH SET KH.SFKHZC = 0 WHERE KH.SFKHZC IS NULL;
  COMMIT;
  --���ݿͻ����ʽ��˺Ÿ��¿ͻ������ߺͲ��ϸ�״̬
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
  ----------����˻�ϵͳ�и������ֻ��ţ���ͬ�����¿ͻ�������ϵ��ʽ����ֻ��ţ��������ҽ�����Ϣ�ĺ���
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
  --�����Ͽͻ��޸����ֻ������
  INSERT INTO CRMII.TKHXX_XGJL
    (ID, KHH, XGRQ, XGSJ, ZD, ZDMC, NEWVALUE, OLDVALUE, XGR, XGQD)
    SELECT CRMII.FUNC_NEXTID('TKHXX_XGJL'),
           A.N1,
           I_RQ,
           TO_CHAR(SYSDATE,'hh24:mi:ss'),
           'SFJSXX',
           '�Ƿ������Ϣ',
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
  --�����¿��Ŀͻ�
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
           '��Ա����ϵ�ֻ�'
      FROM CRMII.TEMPDATA_SJ A
     WHERE NOT EXISTS (SELECT 1
              FROM CRMII.TKHXX_QTLXFS B
             WHERE A.N1 = B.KHH
               AND B.LXFS = 8
               AND B.SFZLXFS = 1);
  COMMIT;
  --ȫ�����¿ͻ���Ϣ��ķ�����Ա�ֶ�
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
  --������Ч������
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
  --�洢�������гɹ�
  O_RETCODE := 0;
  O_RETNOTE := '��������';
  --��¼��־�����ɹ�����
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
    O_RETNOTE := '����ʧ�ܣ�';
    O_RETNOTE := O_RETNOTE || SQLERRM;
    ROLLBACK;
  
    --��¼��־�����ɹ�����
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