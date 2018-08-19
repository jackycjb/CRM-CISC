CREATE OR REPLACE PROCEDURE HIS.PRO_ZT_GXSJCJ(O_N_CODE OUT INT,
                                              O_S_NOTE OUT VARCHAR2,
                                              I_N_TJRQ IN INT,
                                              I_N_REDO IN INT DEFAULT 0)
/***********************************************************************************************************
  �û���  ��      HIS
  �������ƣ�      ��Ͷ�������ݲɼ�
  
  ***********************************************************************************************************
  �޸ļ�¼;
           ������      ����ʱ��                    ����
           GUOXIATING    20161123           ��Ͷ�������ݲɼ�
           20170110      guoxiting          ���Ӽ���ͻ�����ƽ��Ӷ���ʺ�NC������Ա�ɱ�
           20170313      WEITQ              �����������
           20170611      SPJ                ������ͨA��Ӷ�����������
           20170613      SPJ                �ɼ������˻����ý���ǩԼӶ���ʼ������˻���ͨ����ǩԼӶ����
           20170822      spj                �޸�MOT����ʱ��Ϊ����5��������
  ***********************************************************************************************************/
 IS
  VS_PROC_NAME VARCHAR2(100) := $$PLSQL_UNIT; --������
  VN_LOGID     INT; --LOG ���¼ID
  VN_ROWCOUNT  INT; --��¼��
  VN_STEP      INT; --��������
  VN_TJRQ      NUMBER(8) := I_N_TJRQ; --ͳ������
  VN_PROC_NO   PUB_SYS.T_ETL_PROC_MANAGE.PROC_NO%TYPE;
  VS_USER      VARCHAR2(30);
  VN_JTRQ      NUMBER(8);
  VN_YCJYR     NUMBER(8);
  VN_JYR       NUMBER(8); --5��������ǰ����
BEGIN
  --������ʼ��
  O_N_CODE := PUB_SYS.PKG_GCONST.PROCRUNRESULTSUCCESSFUL; --��ʼ�����гɹ�
  O_S_NOTE := '��������';
  VS_USER  := 'HIS';
  SELECT PUB_SYS.SEQ_T_PROC_LOG.NEXTVAL INTO VN_LOGID FROM DUAL; --��־���к�
  --��ȡETL���̵ı��
  VN_PROC_NO := PUB_SYS.F_GET_PROC_NO(I_S_OWNER     => VS_USER,
                                      I_S_PROC_NAME => VS_PROC_NAME);
  VN_STEP    := 0;
  --���̿�ʼ
  --��¼��־������ʼ
  PUB_SYS.P_LOG_PROC(I_N_PROCNO         => VN_PROC_NO,
                     I_N_LOGID          => VN_LOGID,
                     I_S_USER           => VS_USER,
                     I_S_PROCNAME       => VS_PROC_NAME,
                     I_N_TJRQ           => VN_TJRQ,
                     I_N_RETCODE        => 1,
                     I_S_RETNOTE        => '�������У�',
                     I_S_FLAG           => I_N_REDO,
                     I_N_INSERTORUPDATE => 0);
  --����ͳ������
  --��¼�ɼ��ͻ�ͨѶ¼��־��ϸ������ʼ
  PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                            I_N_LOGDETAILID    => VN_STEP,
                            I_S_USER           => VS_USER,
                            I_S_ACTIONDESC     => '�������ݲɼ���ʼ��',
                            I_S_CHANGEDESC     => NULL,
                            I_N_TJRQ           => VN_TJRQ,
                            I_N_RETCODE        => 1,
                            I_S_RETNOTE        => '�������У�',
                            I_S_FLAG           => I_N_REDO,
                            I_N_INSERTORUPDATE => 0);
  --ţ�˻�����ͻ�����
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
    SELECT ����Ӫҵ������,
           ����Ӫҵ������,
           �ͻ�����,
           �ͻ�����,
           �ʽ��˺�,
           ����ʱ��,
           MOBILE,
           �����ǳ�,
           ����ʱ��,
           ��������,
           ��������,
           ������,
           ����,
           �Ƽ���,
           KF_NAME,
           FW_NAME,
           �������,
           ��������,
           �ʲ�,
           EXT_INST
      FROM STATS.VW_NRH_PAIMING@DWDB;
  COMMIT;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 2, SYSDATE FROM DUAL;
  COMMIT;
  --�ʹֺܷ���Ϣ�ɼ�-XXJ-20161124
  DSFJK.PRO_SJCJ_ZGFHXX(O_N_CODE, O_S_NOTE, I_N_TJRQ);
  IF O_N_CODE = 1 THEN
    --wujun 20161201 ִ�гɹ�����־λ�ع�0����¼������־
    O_N_CODE := 0;
  END IF;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 3, SYSDATE FROM DUAL;
  COMMIT;
  --�����Ʒ��Ѷ--xxj
  --CRMII.pro_sjcj_fwcpzx--�ŵ���Ѷ�ɼ�etl������ִ��
  --��Ϣ���Ĺ鵵
  HIS.PRO_XXZXGD(O_N_CODE, O_S_NOTE, I_N_TJRQ, 0);
  IF O_N_CODE = 1 THEN
    O_N_CODE := 0;
  END IF;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 4, SYSDATE FROM DUAL;
  COMMIT;
  --������ʱ�ɼ�--xxj-20170112
  HIS.PRO_SJCJ_CKLL(O_N_CODE, O_S_NOTE, I_N_TJRQ, 0);
  IF O_N_CODE = 1 THEN
    O_N_CODE := 0;
  END IF;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 5, SYSDATE FROM DUAL;
  COMMIT;
  --XXJ-20161124-����tfwcp_dzxx_kh����yyb��dzyybΪ�ͻ�����Ӫҵ�����ӿ��ֻ����������ײ�ʱ�����ڿͻ���Ϣ��δ�ɼ���CRM,����δ����ͻ�Ӫҵ�������
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
  --XXJ-20161206-���µ��ڵķ����Ʒ������ϢΪ�Զ�����
  HIS.PRO_FWCP_ZDQX(O_N_CODE, O_S_NOTE, I_N_TJRQ);
  IF O_N_CODE = 1 THEN
    O_N_CODE := 0;
  END IF;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 8, SYSDATE FROM DUAL;
  COMMIT;
  --XXJ-20170107-���̶���Ⱥ�Զ�����--�ŵ�job��ִ��--�������޸�Ϊhis.pro_cpdzkh
  /*HIS.PRO_KHQGX_DXQ(O_N_CODE, O_S_NOTE, I_N_TJRQ);
  IF O_N_CODE = 1 THEN
    O_N_CODE := 0;
  END IF;*/
  --XXJ-20161207-������ǩ��Ч��Э��״̬Ϊ0
  UPDATE CRMII.TTZGW_QYXY T
     SET T.QYZT = 0
   WHERE T.SXRQ = I_N_TJRQ
     AND T.QYZT = 3;
  --XXJ-20161207-�Զ����ڵķ���Э��״̬����Ϊ2
  UPDATE CRMII.TTZGW_QYXY T
     SET T.QYZT = 2
   WHERE T.JZRQ <= I_N_TJRQ
     AND T.QYZT = 0;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 9, SYSDATE FROM DUAL;
  COMMIT;
  --XXJ-20161227-��Ϣ���Ĺ̻�ͳ�Ʊ���
  HIS.PRO_MSG_GHBB(O_N_CODE, O_S_NOTE, I_N_TJRQ);
  IF O_N_CODE = 1 THEN
    O_N_CODE := 0;
  END IF;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 10, SYSDATE FROM DUAL;
  COMMIT;
  --wujun 20161201 ��ط��ֳ�������Ϣ
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
  --ɾ��client_idΪnull������
  DELETE FROM CRMII.T_FXCKH A WHERE A.CLIENT_ID IS NULL;
  COMMIT;
  --ɾ���ظ���¼
  DELETE FROM CRMII.T_FXCKH A
   WHERE ROWID != (SELECT MAX(ROWID)
                     FROM CRMII.T_FXCKH B
                    WHERE A.CLIENT_ID = B.CLIENT_ID);
  COMMIT;*/
  --��OCRM����Ƿ񾭼͹�ϵȷ�ϻط�����
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
  --�ɼ�ÿ�������ʣ����¿ͻ��˻����ݵ��ۼ������ʣ�ÿ�³����¿ͻ�����
  HIS.PRO_KHJYNSYL(O_N_CODE, O_S_NOTE, I_N_TJRQ);
  IF O_N_CODE = 1 THEN
    O_N_CODE := 0;
  END IF;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 12, SYSDATE FROM DUAL;
  COMMIT;
  --XXJ-20161209-�û����������ƣ�Ĭ�ϸ�1000����С��1000000ʱ�ͻָ�Ϊ10000000
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
  --ÿ�����̨ƥ�������֯��������
  /*  MERGE INTO (SELECT ID, ORGCODE, NAME, REPLACE(NAME, ORGCODE, '') NAME_REP
                FROM CRMII.LBORGANIZATION) A
  USING (SELECT BRANCH, BRANCH_ID, FULL_NAME FROM SRC_JZU.BRANCH) B
  ON (A.ID = B.BRANCH AND A.NAME_REP <> B.FULL_NAME)
  WHEN MATCHED THEN
    UPDATE SET A.NAME = B.BRANCH_ID || B.FULL_NAME;*/
  -- KEN 20171208 ���´�OAͬ����֯��������    
  MERGE INTO (SELECT ID, ORGCODE, NAME, REPLACE(NAME, ORGCODE, '') NAME_REP
                FROM CRMII.LBORGANIZATION) A
  USING (SELECT DEPT_NO, DEPT_NAME FROM EDC_ODM.OA_DEPT_INFO@DWDB) B
  ON (A.ORGCODE = B.DEPT_NO AND A.NAME_REP <> B.DEPT_NAME)
  WHEN MATCHED THEN
    UPDATE SET A.NAME = B.DEPT_NO || B.DEPT_NAME;
  -- KEN 20171227 ����վͬ����ϵ�绰�͵�ַ
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
  --20170302 WUJUN �������������09������ķ�ֵ�ʲ�����
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
  --����ͻ�����ƽ��Ӷ����
  HIS.PRO_KHPJYJL(O_N_CODE, O_S_NOTE, I_N_TJRQ, 1);
  IF O_N_CODE = 1 THEN
    O_N_CODE := 0;
  END IF;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 15, SYSDATE FROM DUAL;
  COMMIT;
  --�ɼ�����NC�ɱ�
  HIS.PRO_NC_CBCJ(O_N_CODE, O_S_NOTE, I_N_TJRQ);
  IF O_N_CODE = 1 THEN
    O_N_CODE := 0;
  END IF;
  --�ɼ����²�Ʒ����������
  HIS.PRO_CPLSRSJCJ(O_N_CODE, O_S_NOTE, I_N_TJRQ);
  IF O_N_CODE = 1 THEN
    O_N_CODE := 0;
  END IF;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 16, SYSDATE FROM DUAL;
  COMMIT;
  --ÿ�����ɲƸ��ͻ�
  HIS.PRO_CFKHGL(O_N_CODE, O_S_NOTE, I_N_TJRQ);
  IF O_N_CODE = 1 THEN
    O_N_CODE := 0;
  END IF;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 17, SYSDATE FROM DUAL;
  COMMIT;
  --�ϸ�ͻ�
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
  --20170313 WEITQ ����������ݣ���OCRMǨ��
  IF SUBSTR(I_N_TJRQ, 1, 4) = 2012 THEN
    --����2012����20111201Ϊ׼������ľ�ȡ0101����
    VN_JTRQ := 20111201;
  ELSIF SUBSTR(I_N_TJRQ, 1, 4) > 2012 THEN
    VN_JTRQ := SUBSTR(I_N_TJRQ, 1, 4) || '0101';
  END IF;
  -- ��һ����ֱ���ж�����֤�����ͣ�������û��֤������һ��������������,ԭϵͳkhlx=1������ʽ�ͻ���crm��khlx���岻һ��������khlx=1
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
  --�ڶ���   �Ƚ�����T_KH_ZJHM_15�������� 20111201ǰ���������֤Ϊ15λ�Ŀͻ�������15λ�����18λ
  --         ע�⣬�������� 15λ�Ŀͻ��¿�����ÿ����ø��´˱�
  --         ֱ�ӿ��¿��ͻ���֤�����Ƿ���ڴ˱��м���
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
  -- ��3�����������ͻ��������
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
  --20170314 wujun �������MOT�¼�״̬����Ϊ�ѹ���
  --20170822 spj  ��5�������յ�MOT�¼�״̬����Ϊ�ѹ���
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
  --20180620 �����Զ�ɾ��������ʱ��ɫ
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
  --�ܽ��ڲ�Ʒ��������
  CRMII.PRO_FP_SCSGRL(O_N_CODE, O_S_NOTE);
  IF O_N_CODE = 1 THEN
    O_N_CODE := 0;
  END IF;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 24, SYSDATE FROM DUAL;
  COMMIT;
  --�³�������ǩԼӶ���ʱ���
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
  --���������ȯĿ��ͻ����������
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
  --�ͻ����罻������
  EXECUTE IMMEDIATE 'TRUNCATE TABLE CRMII.CUST_MATCH_MINDT';
  INSERT INTO CRMII.CUST_MATCH_MINDT
    (CUST_CODE, TRD_DATE)
    SELECT CUST_CODE, TRD_DATE FROM STATS.CUST_MATCH_MINDT@DWDB;
  COMMIT;
  --�����˺�������ٿ�������
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
  -- ken 20180118 ������������ 
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
  -- ������ֵ(����)
  EXECUTE IMMEDIATE 'TRUNCATE TABLE CRMII.K_CUST_DXED';
  INSERT INTO CRMII.K_CUST_DXED
    SELECT * FROM STATS.K_CUST_DXED@DWDB;
  -- ���·�ֵ
  EXECUTE IMMEDIATE 'TRUNCATE TABLE CRMII.K_DXEDFZ_MONTHS_NOW';
  INSERT INTO CRMII.K_DXEDFZ_MONTHS_NOW
    SELECT * FROM STATS.K_DXEDFZ_MONTHS_NOW@DWDB;
  -- ���÷�ֵ�ʲ�
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
  --�ͻ�360������ֵ��
  EXECUTE IMMEDIATE 'TRUNCATE TABLE CRMII.T_DXSZ';
  INSERT INTO CRMII.T_DXSZ
    (KHH, DXSZ, DXFZ,DX_SH_NUM,DX_SZ_NUM,TOTAL_NUM)
    SELECT KHH, B.TOTAL_VALUE / 10000, C.TOTAL_FZ_VALUE / 10000,b.dx_sh_num,b.dx_sz_num,TOTAL_NUM
      FROM CRMII.TKHXX A
      LEFT JOIN CRMII.K_CUST_DXED B
        ON B.CUST_CODE = A.KHH
      LEFT JOIN CRMII.K_DXEDFZ_MONTHS_NOW C
        ON C.CUST_CODE = A.KHH;
  --�վ��������
  EXECUTE IMMEDIATE 'TRUNCATE TABLE CRMII.TRJRZYE';
  INSERT INTO CRMII.TRJRZYE
    (USER_CODE, RJRZYE)
    SELECT USER_CODE, SUM(GRRZYE_SUM) / SUM(GR_DAY_CNT) RJRZYE
      FROM STATS.K_GRRZRQYE_MONTHS@DWDB
     GROUP BY USER_CODE;
  -- ����Ŀ��ͻ�-���
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
  --�ɼ������˻����ý���ǩԼӶ���ʼ������˻���ͨ����ǩԼӶ����
  HIS.PRO_XYZHQYYJL(O_N_CODE, O_S_NOTE, I_N_TJRQ);
  IF O_N_CODE = 1 THEN
    O_N_CODE := 0;
  END IF;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 27, SYSDATE FROM DUAL;
  COMMIT;
  --�����ͨA��ǩԼӶ�������������
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
     WHERE COM_FLAG = '��Ͷ';
  COMMIT;
  --�ͻ����ϻ����ݸ���
  HIS.PRO_UPDATE_KHXSH(O_N_CODE, O_S_NOTE, I_N_TJRQ);
  IF O_N_CODE = 1 THEN
    O_N_CODE := 0;
  END IF;
  COMMIT;
  --�ͻ����ϻ�������������
  HIS.PRO_SCXSHBBSJ(O_N_CODE, O_S_NOTE, I_N_TJRQ);
  IF O_N_CODE = 1 THEN
    O_N_CODE := 0;
  END IF;
  COMMIT;
  --��������ͳ��
  HIS.PRO_KHZXSJ(O_N_CODE, O_S_NOTE, I_N_TJRQ);
  IF O_N_CODE = 1 THEN
    O_N_CODE := 0;
  END IF;
  COMMIT;
  --Эͬ��Ӫ����״̬����
  CRMII.PRO_TASK_CT_STOP(O_N_CODE, O_S_NOTE);
  IF O_N_CODE = 1 THEN
    O_N_CODE := 0;
  END IF;
  COMMIT;
  --wujun  20170924 ���ɽ��ڲ�Ʒ������ˮ��������
  CRMII.PRO_JRCP_XSLSSC(O_N_CODE, O_S_NOTE, I_N_TJRQ);
  IF O_N_CODE = 1 THEN
    O_N_CODE := 0;
  END IF;
  COMMIT;
  --wujun  20180109 ���ɷ����Ʒ������ˮ��������  
  CRMII.PRO_FWCP_XSLSSC(O_N_CODE, O_S_NOTE, I_N_TJRQ);
  IF O_N_CODE = 1 THEN
    O_N_CODE := 0;
  END IF;
  COMMIT;
  --wujun  20180706 ���»��������ʸ�
  CRMII.PRO_UPDATE_JJXSZG(O_N_CODE, O_S_NOTE,NULL);
  IF O_N_CODE = 1 THEN
    O_N_CODE := 0;
  END IF;
  COMMIT;
  
  --ÿ�ռ���ҵ��ָ��
  HIS.PRO_MRZBJS(O_N_CODE, O_S_NOTE, I_N_TJRQ);
  IF O_N_CODE = 1 THEN
    O_N_CODE := 0;
  END IF;
  COMMIT;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 29, SYSDATE FROM DUAL;
  COMMIT;
  --���쵼��ʻ������
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
  --ԭ�߾�ֵ�ͻ���ѯ�͸߾�ֵ�ͻ�ͳ�Ƶı����ѯ������ÿ���ܵ���ʱ�Ƚ�������������
  CRMII.PRO_SCGJZJCSJ(O_N_CODE, O_S_NOTE, I_N_TJRQ);
  IF O_N_CODE = 1 THEN
    O_N_CODE := 0;
  END IF;
  COMMIT;
  INSERT INTO HIS.TEST_PARA9
    (PROC, SJ)
    SELECT 30, SYSDATE FROM DUAL;
  COMMIT;
  -- ����ʲ���ֵ�ƻ�Э�飨Ŀǰ���о۽�����
  SELECT COUNT(1)
    INTO VN_ROWCOUNT
    FROM EDC_ODM.EC_ASSET_APPR_PROT@DWDB
   WHERE DATE_ID = I_N_TJRQ;
  IF VN_ROWCOUNT > 0 THEN
    -- Դ���ݴ��ڲ�ˢ�£��Է�������Դ����ʱɾ���������
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
  -- ��ؼ����ʲ�����ƻ���ͬ(���ӡ�ֽ�ʣ����۽���)
  SELECT COUNT(1)
    INTO VN_ROWCOUNT
    FROM EDC_ODM.EC_FUND_CHOWMATISTIC@DWDB
   WHERE DATE_ID = I_N_TJRQ;
  IF VN_ROWCOUNT > 0 THEN
    -- Դ���ݴ��ڲ�ˢ�£��Է�������Դ����ʱɾ���������
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
  -- ����ʽ������˻�
  SELECT COUNT(1) INTO VN_ROWCOUNT FROM STATS.VW_ZJXF_BANK_ACC@DWDB;
  IF VN_ROWCOUNT > 0 THEN
    -- Դ���ݴ��ڲ�ˢ�£��Է�������Դ����ʱɾ���������
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
  -- ���������ȯ�ͻ�_�������ֱ�׼_����
  SELECT COUNT(1) INTO VN_ROWCOUNT FROM STATS.K_RZRQ_ZXPFBZ_GR@DWDB;
  IF VN_ROWCOUNT > 0 THEN
    -- Դ���ݴ��ڲ�ˢ�£��Է�������Դ����ʱɾ���������
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
-- ����н����ʷԱ���Ļ��������ʸ񣬸��»��������ʸ��״������·�
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

/* --�˴����Σ���HIS.PRO_KHXX_CJ�����
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
*/
  
  --��¼��־��ϸ�����ɹ�����
  PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                            I_N_LOGDETAILID    => VN_STEP,
                            I_S_USER           => VS_USER,
                            I_S_ACTIONDESC     => '�������ݲɼ�������',
                            I_S_CHANGEDESC     => '�����¼��',
                            I_N_TJRQ           => VN_TJRQ,
                            I_N_RETCODE        => O_N_CODE,
                            I_S_RETNOTE        => O_S_NOTE,
                            I_S_FLAG           => I_N_REDO,
                            I_N_INSERTORUPDATE => 1);
  --��¼��־�����ɹ�����
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
    O_N_CODE := PUB_SYS.PKG_GCONST.PROCRUNRESULTFAILED; --����ʧ��
    O_S_NOTE := SQLERRM;
    ROLLBACK;
    --��¼��־����ʧ�ܽ���
    PUB_SYS.P_LOG_PROC(I_N_PROCNO         => VN_PROC_NO,
                       I_N_LOGID          => VN_LOGID,
                       I_S_USER           => VS_USER,
                       I_S_PROCNAME       => VS_PROC_NAME,
                       I_N_TJRQ           => VN_TJRQ,
                       I_N_RETCODE        => O_N_CODE,
                       I_S_RETNOTE        => O_S_NOTE,
                       I_S_FLAG           => I_N_REDO,
                       I_N_INSERTORUPDATE => 1);
    --��¼��־��ϸ����ʧ�ܽ���
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '����ʧ�ܣ�',
                              I_S_CHANGEDESC     => '����ʧ�ܣ�',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);
END PRO_ZT_GXSJCJ;
