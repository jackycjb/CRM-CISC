CREATE OR REPLACE PROCEDURE HIS.PRO_KHTZ_SFYKTJJL(O_RETCODE OUT NUMBER,
                                               O_RETNOTE OUT VARCHAR2,
                                               I_RQ      IN NUMBER,
                                               I_REDO    IN NUMBER := 0 --�Ƿ�ǿ�����¼��� 0��1��
                                               ) AS
  /* -----------------------------------------------------------------------
  ��Ŀ���ƣ�   CRM4.0
  ��Ҫ˵����   �ͻ������������ -- �Ƿ��ѿ�ͨ�۽���
        I_RQ           IN NUMBER,  --����
        I_REDO         IN NUMBER,  --�Ƿ�ǿ�����¼��� 0��1��
  �﷨��Ϣ��
       ���������
  ����׼����
        1)edc_odm.ec_asset_appr_prot@DWDB
  ����ԭ��
                      ���ݲֿ�ÿ�ո��µ��ѿ�ͨ�۽����ͻ��б��������ͻ������Ƿ�ͨ�۽����ͻ���ǩ
  �޶���¼��
      �޶�����       �汾��    �޶���             �޸����ݼ�Ҫ˵��
      20180105       1.0.0     ken              ����
    -----------------------------------------------------------------------*/
  V_DATETIME DATE := SYSDATE;
  V_PROC     VARCHAR2(50) := 'PRO_KHTZ_SFYKTJJL';
  V_NAME     VARCHAR2(50) := '�ͻ���������-�Ƿ��ѿ�ͨ�۽����ͻ�';
  V_COUNT    NUMBER(8) := 0;
  V_RQ       NUMBER(8) := TO_CHAR(SYSDATE, 'yyyymmdd');
  V_KSYF     NUMBER := 0;
  V_JSYF     NUMBER := 0;
  V_TZLXBM   VARCHAR2(30) := 'SFYKTJJL';
  V_TZLX     NUMBER(16);
  V_SCJSRQ   NUMBER(8);
  V_JSZQ     NUMBER(8);
  V_FLAG     NUMBER(1) := 0;
  V_YF       NUMBER(6);
  V_TEST     NUMBER := 0;
BEGIN
  O_RETCODE := 0;
  V_YF      := SUBSTR(I_RQ, 1, 6);
  IF (I_REDO = 0 OR 1 = 1) THEN
    SELECT ID, SCJSRQ, JSZQ
      INTO V_TZLX, V_SCJSRQ, V_JSZQ
      FROM CRMII.TKHTZLXDY
     WHERE TZLXBM = V_TZLXBM;
    IF (V_SCJSRQ IS NOT NULL) THEN
      IF (V_JSZQ > 0) THEN
        --0|ÿ��;1|ÿ��;3|ÿ����;6|ÿ����;12|ÿ��;-1|�ֹ�
        IF (V_RQ <
           TO_NUMBER(TO_CHAR(ADD_MONTHS(TO_DATE(V_SCJSRQ, 'yyyymmdd'),
                                         V_JSZQ),
                              'yyyymmdd'))) THEN
          O_RETCODE := 1;
          O_RETNOTE := 'ʱ��δ����������';
          RETURN;
        END IF;
      END IF;
    END IF;
  END IF;
  DELETE FROM HIS.TKHTZ T WHERE T.TZLX = 1027;
  EXECUTE IMMEDIATE 'truncate table crmii.k_cust_jjl';
  INSERT INTO CRMII.K_CUST_JJL
    (DATE_ID,
     USER_CODE,
     DATA_DATE)
    SELECT DATE_ID,
           CUST_CODE,
           DATA_DATE
      FROM edc_odm.ec_asset_appr_prot@DWDB
     WHERE status = '0' AND DATE_ID = I_RQ;
  DELETE TEMPDATA;
  EXECUTE IMMEDIATE 'truncate table tempdata_bb';
  FOR X IN (SELECT T1.TZLXBM,
                   T1.TZLX,
                   T1.TZLX_ID,
                   T1.ID      KHTZ,
                   T1.TZZ,
                   T1.TZZSM,
                   T1.XSSX,
                   1          YYB
              FROM (SELECT A.*, B.TZLXBM
                      FROM CRMII.TKHTZQZDY A, CRMII.TKHTZLXDY B
                     WHERE A.TZLX_ID = B.ID
                       AND B.TZLXBM = V_TZLXBM) T1 --��ȡ
             ORDER BY XSSX) LOOP
    INSERT INTO TEMPDATA
      (N1 /*TZLX*/,
       C1 /*TZLXBM*/,
       N2 /*KHTZ*/,
       C2 /*TZQZ*/,
       N3 /*YYB*/,
       N4)
    VALUES
      (X.TZLX_ID, X.TZLXBM, X.KHTZ, X.TZZ, 1, X.XSSX);
  END LOOP;
  SELECT COUNT(*) INTO V_COUNT FROM TEMPDATA;
  IF (V_COUNT > 0) THEN
    --�����ö�Ӧ����
    INSERT INTO TEMPDATA_BB
      (KHH, N2)
      SELECT DISTINCT USER_CODE, 1 FROM CRMII.K_CUST_JJL;
    INSERT INTO TEMPDATA_BB
      (KHH, N2)
      SELECT KHH, 2
        FROM CRMII.TKHXX KH
       WHERE NOT EXISTS
       (SELECT 1 FROM CRMII.K_CUST_JJL JJL WHERE KH.ID = JJL.USER_CODE);
    UPDATE TEMPDATA_BB A
       SET (RYXX, N10, C1) =
           (SELECT N1, N2, C2 FROM TEMPDATA B WHERE A.N2 = B.N4) --TEMPDATA_BB��RYXX���Ͻ�������
     WHERE EXISTS (SELECT 1 FROM TEMPDATA B WHERE A.N2 = B.N4);
    DELETE TEMPDATA_BB WHERE N10 IS NULL;
    INSERT INTO HIS.TKHTZ
      (KHH, TZLX, KHTZ, TZQZ, GXRQ, GXFS, GXRY)
      SELECT B.KHH, B.RYXX, B.N10, B.C1, V_RQ, 1, 0 FROM TEMPDATA_BB B;
    V_COUNT := SQL%ROWCOUNT;
    UPDATE CRMII.TKHTZLXDY SET SCJSRQ = V_RQ WHERE TZLXBM = V_TZLXBM;
    CRMII.PRO_WRITELOG(2,
                       V_NAME,
                       V_PROC || '(o_ret_code,o_ret_note,' || I_RQ || ')',
                       0,
                       'ִ�гɹ�[��¼:' || V_COUNT || '],��ʱ' ||
                       TRUNC((SYSDATE - V_DATETIME) * 1440.00 * 60) || '��',
                       V_COUNT,
                       TRUNC((SYSDATE - V_DATETIME) * 1440.00 * 60));
  END IF;
  EXECUTE IMMEDIATE 'truncate table tempdata_bb';
  O_RETCODE := 1;
  O_RETNOTE := 'ִ�гɹ�';
  COMMIT;
EXCEPTION
  WHEN OTHERS THEN
    O_RETCODE := -1;
    O_RETNOTE := SQLERRM;
    ROLLBACK;
    CRMII.PRO_WRITELOG(2,
                       V_NAME,
                       V_PROC || '(o_ret_code,o_ret_note,' || I_RQ || ')',
                       2,
                       O_RETNOTE,
                       V_COUNT,
                       TRUNC((SYSDATE - V_DATETIME) * 1440.00 * 60));
END;