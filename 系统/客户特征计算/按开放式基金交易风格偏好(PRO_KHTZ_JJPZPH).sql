CREATE OR REPLACE PROCEDURE HIS.PRO_KHTZ_JJPZPH(O_RETCODE OUT NUMBER,
                                              O_RETNOTE OUT VARCHAR2,
                                              I_RQ      IN NUMBER,
                                              I_REDO    IN NUMBER := 0 --�Ƿ�ǿ�����¼��� 0��1��
                                              ) AS
    /* -----------------------------------------------------------------------
    ��Ŀ���ƣ�   CRM4.0
    ��Ҫ˵����   �ͻ������������ -- ������ʽ�����׷��ƫ��
          I_RQ           IN NUMBER,  --����
          I_REDO         IN NUMBER,  --�Ƿ�ǿ�����¼��� 0��1��
    �﷨��Ϣ��
         ���������
                     O_RETCODE  �ɹ�����1��ʧ�ܷ���-1
                     O_RETNOTE  �ɹ����ز����ɹ���ʧ�ܷ��ش�����Ϣ
    ����׼����
          1)HIS.TFP_JGMXL
    ����ԭ��
                         ���ͻ������ڻ���Ʒ���������������
    �޶���¼��
        �޶�����       �汾��    �޶���             �޸����ݼ�Ҫ˵��
        20120530                ����ï             ���ӻ���Ʒ��ƫ�������������
        20140609                ����             ���̴�C3Ǩ�Ƶ�C4
        20161127   GUOXIATING   �ĳ�ȡpif.tpif_cpdm
      -----------------------------------------------------------------------*/
    V_DATETIME DATE := SYSDATE;
    V_PROC     VARCHAR2(50) := 'PRO_KHTZ_JJPZPH';
    V_NAME     VARCHAR2(50) := '�ͻ���������-����Ʒ��ƫ��';
    V_COUNT    NUMBER(8) := 0;
    V_RQ       NUMBER(8) := TO_CHAR(SYSDATE, 'yyyymmdd');
    V_KSYF     NUMBER := 0;
    V_JSYF     NUMBER := 0;
    V_TZLXBM   VARCHAR2(30) := 'JJPZPH';
    V_TZLX     NUMBER(16);
    V_SCJSRQ   NUMBER(8);
    V_JSZQ     NUMBER(8);
    V_FLAG     NUMBER(1) := 0;
    V_YF       NUMBER(6);
BEGIN
    --execute immediate 'alter session force parallel query parallel 10';
    --execute immediate 'alter session force parallel dml parallel 10';
    O_RETCODE := 0;
    V_YF      := SUBSTR(I_RQ, 1, 6);
    IF (I_REDO = 0) THEN
        SELECT ID, SCJSRQ, JSZQ
          INTO V_TZLX, V_SCJSRQ, V_JSZQ
          FROM CRMII.TKHTZLXDY
         WHERE TZLXBM = V_TZLXBM;
        IF (V_SCJSRQ IS NOT NULL) THEN
            IF (V_JSZQ > 0) THEN
                --0|ÿ��;1|ÿ��;3|ÿ����;6|ÿ����;12|ÿ��;-1|�ֹ�
                IF (V_RQ <
                   TO_NUMBER(TO_CHAR(ADD_MONTHS(TO_DATE(V_SCJSRQ, 'yyyymmdd'), V_JSZQ),
                                      'yyyymmdd'))) THEN
                    O_RETCODE := 1;
                    O_RETNOTE := 'ʱ��δ����������';
                    RETURN;
                END IF;
            END IF;
        END IF;
    END IF;
    DELETE TEMPDATA;
    EXECUTE IMMEDIATE 'truncate table tempdata_bb';
    FOR X IN (SELECT T1.TZLXBM,
                     T1.TZLX,
                     T1.TZLX_ID,
                     T1.ID KHTZ,
                     T1.TZZ,
                     T1.TZZSM,
                     T1.XSSX,
                     T1.YYB_CS YYB,
                     T1.CSZ ZQLB, /*t2.CSZ JYLZB,t3.CSZ CCZB,*/
                     T4.CSZ TJZQ,
                     T1.LJGX
                FROM (SELECT A.*,
                             C.CSDM,
                             C.LJGX,
                             C.CSZ,
                             C.TKHTZQZDY_ID,
                             B.TZLXBM,
                             C.YYB YYB_CS
                        FROM CRMII.TKHTZQZDY_TZCSZ C, CRMII.TKHTZQZDY A, CRMII.TKHTZLXDY B
                       WHERE A.ID = C.TKHTZQZDY_ID
                         AND A.TZLX_ID = B.ID
                         AND C.CSDM = 'ZQLB'
                         AND B.TZLXBM = V_TZLXBM) T1, --��ȡ��Ʒ���������
                     --(select a.*,c.CSDM,c.LJGX,c.CSZ,C.TKHTZQZDY_ID,b.TZLXBM,c.YYB YYB_CS from tKHTZQZDY_TZCSZ c,tKHTZQZDY a,tKHTZLXDY b where a.id=c.tkhtzqzdy_id and a.TZLX_ID=b.ID and c.CSDM='JYLZB'  and b.TZLXBM=v_tzlxbm) t2,  --��ȡ������ռ�Ȳ��������
                     --(select a.*,c.CSDM,c.LJGX,c.CSZ,C.TKHTZQZDY_ID,b.TZLXBM,c.YYB YYB_CS from tKHTZQZDY_TZCSZ c,tKHTZQZDY a,tKHTZLXDY b where a.id=c.tkhtzqzdy_id and a.TZLX_ID=b.ID and c.CSDM='CCZB'  and b.TZLXBM=v_tzlxbm) t3,  --��ȡ�ֲ�ռ�Ȳ��������
                     (SELECT A.*,
                             C.CSDM,
                             C.LJGX,
                             C.CSZ,
                             C.TKHTZQZDY_ID,
                             B.TZLXBM,
                             C.YYB YYB_CS
                        FROM CRMII.TKHTZQZDY_TZCSZ C, CRMII.TKHTZQZDY A, CRMII.TKHTZLXDY B
                       WHERE A.ID = C.TKHTZQZDY_ID
                         AND A.TZLX_ID = B.ID
                         AND C.CSDM = 'TJZQ'
                         AND B.TZLXBM = V_TZLXBM) T4 --��ȡͳ�Ʋ��������
               WHERE T1.TKHTZQZDY_ID = T4.TKHTZQZDY_ID
                 AND T1.YYB_CS = T4.YYB_CS
               ORDER BY T1.YYB_CS DESC, XSSX) LOOP
        V_KSYF := TO_CHAR(ADD_MONTHS(TO_DATE(V_YF, 'yyyymm'), -X.TJZQ + 1), 'yyyymm');
        V_JSYF := V_YF;
        INSERT INTO TEMPDATA
            (N1 /*TZLX*/,
             C1 /*TZLXBM*/,
             N2 /*KHTZ*/,
             C2 /*TZQZ*/,
             N3 /*YYB*/,
             N6 /*��ƷƷ��*/)
        VALUES
            (X.TZLX_ID, X.TZLXBM, X.KHTZ, X.TZZ, X.YYB, X.ZQLB);
        IF (X.YYB != 1) THEN
            --����Ӫҵ�����Բ���
            V_FLAG := 1;
        END IF;
    END LOOP;
    SELECT COUNT(*) INTO V_COUNT FROM TEMPDATA;
    IF (V_COUNT > 0) THEN
        --�����ö�Ӧ����
        INSERT INTO TEMPDATA_BB
            (KHH, YYB, N1 /*�������*/, N2 /*������*/)
            SELECT A.KHH, A.YYB, b.jrcpfl jjlb/* B.JJLB*/, SUM(QRJE)
              FROM HIS.TFP_JGMXLS A,pif.tpif_cpdm b-- CRMII.TJJDM B
             WHERE A.CPDM = b.cpdm-- B.JJDM
               AND A.QRRQ BETWEEN V_KSYF * 100 AND V_YF * 100 + 31
             GROUP BY A.KHH, A.YYB,b.jrcpfl/* B.JJLB*/;
             V_COUNT := SQL%ROWCOUNT;
        DELETE TEMPDATA_BB A
         WHERE EXISTS (SELECT 1
                  FROM TEMPDATA_BB B
                 WHERE A.KHH = B.KHH
                   AND A.N2 < B.N2);
                   V_COUNT := SQL%ROWCOUNT;
        UPDATE TEMPDATA_BB A
           SET (RYXX, N10, C1) = (SELECT N1, N2, C2 FROM TEMPDATA B WHERE A.N1 = B.N6) --TEMPDATA_BB��RYXX���Ͻ�������
         WHERE EXISTS (SELECT 1 FROM TEMPDATA B WHERE A.N1 = B.N6);
         V_COUNT := SQL%ROWCOUNT;
        
       DELETE FROM TEMPDATA_BB_bak A
        WHERE (A.KHH, A.N2) IN (SELECT KHH, N2
                                 FROM TEMPDATA_BB_bak
                                GROUP BY KHH, N2
                               HAVING COUNT(*) > 1)
       AND ROWID NOT IN (SELECT MIN(ROWID)
                           FROM TEMPDATA_BB_bak
                          GROUP BY KHH, N2
                         HAVING COUNT(*) > 1); 
         
        MERGE INTO HIS.TKHTZ A
        USING (SELECT * FROM TEMPDATA_BB WHERE N10 IS NOT NULL) B
        ON (/*B.N10 IS NOT NULL AND */A.TZLX = B.RYXX AND A.KHH = B.KHH)
        WHEN MATCHED THEN
            UPDATE SET TZQZ = B.C1, KHTZ = B.N10, GXRQ = V_RQ WHERE A.KHTZ != B.N10
        WHEN NOT MATCHED THEN
            INSERT
                (KHH, TZLX, KHTZ, TZQZ, GXRQ, GXFS, GXRY)
            VALUES
                (B.KHH, B.RYXX, B.N10, B.C1, V_RQ, 1, 0);
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
    --execute immediate 'alter session disable parallel query';
    --execute immediate 'alter session disable parallel dml';
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
END PRO_KHTZ_JJPZPH;