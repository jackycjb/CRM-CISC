CREATE OR REPLACE PROCEDURE HIS.PRO_KHTZ_ZZL(O_RETCODE OUT NUMBER,
                                         O_RETNOTE OUT VARCHAR2,
                                         I_RQ      IN NUMBER,
                                         I_REDO    IN NUMBER := 0 --�Ƿ�ǿ�����¼��� 0��1��
                                         ) AS
    /* -----------------------------------------------------------------------
    ��Ŀ���ƣ�   CRM4.0
    ��Ҫ˵����   �ͻ������������ -- �ʽ���ת��
          I_RQ           IN NUMBER,  --����
          I_REDO         IN NUMBER,  --�Ƿ�ǿ�����¼��� 0��1��
    �﷨��Ϣ��
         ���������
                     O_RETCODE  �ɹ�����1��ʧ�ܷ���-1
                     O_RETNOTE  �ɹ����ز����ɹ���ʧ�ܷ��ش�����Ϣ
    ����׼����
          1)HIS.T_STAT_KHJYSR_Y , HIS.T_STAT_KHZC_Y
    ����ԭ��
              ���ͻ�ͳ���ڼ����ת�ʴ�С���࣬��С�����
              ����ת��  һ����ת�ʸ��ڵ���12
              ����ת��  һ����ת�ʵ���2
              ����ת��
    �޶���¼��
        �޶�����       �汾��    �޶���             �޸����ݼ�Ҫ˵��
        20091231                 �μ�
        20110816                 Ф��               ���ӳ�ʼֵ��λ����
        20110119                 л����             ����������ҽ�����ʱ��û�г��Ի���
        20101117                 л����             �޸������ظ���BUG
        20101011                 л����             ֧���������������壬�Ż����
                                                    �ϳ�tKHTZZ
                                                    ��Ӧ�������룺ZZL
                                                    ֧�ֲ�����ͳ�����ڣ�TJZQ��,��ת��(ZZL)=�ۼƽ�����/�վ��ʲ�
                                                    ���������N�����ʲ��Ŀͻ�
        20140609                ����             ���̴�C3Ǩ�Ƶ�C4
      -----------------------------------------------------------------------*/
    V_DATETIME DATE := SYSDATE;
    V_PROC     VARCHAR2(50) := 'PRO_KHTZ_ZZL';
    V_NAME     VARCHAR2(50) := '�ͻ���������-�ͻ���ת��';
    V_COUNT    NUMBER(8) := 0;
    V_RQ       NUMBER(8) := TO_CHAR(SYSDATE, 'yyyymmdd');
    V_KSYF     NUMBER := 0;
    V_JSYF     NUMBER := 0;
    V_ZZL      NUMBER(22, 5) := 0;
    V_TZLXBM   VARCHAR2(30) := 'ZZL';
    V_SCJSRQ   NUMBER(8);
    V_JSZQ     NUMBER(8);
    V_FLAG     NUMBER(1) := 0;
    V_YYB      NUMBER(14) := 0;
    V_YF       NUMBER(6);
BEGIN
    O_RETCODE := 0;
    V_YF      := SUBSTR(I_RQ, 1, 6);
    IF (I_REDO = 0) THEN
        SELECT SCJSRQ, JSZQ
          INTO V_SCJSRQ, V_JSZQ
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
    FOR X IN (SELECT T1.TZLXBM,
                     T1.TZLX,
                     T1.TZLX_ID,
                     T1.ID KHTZ,
                     T1.TZZ,
                     T1.TZZSM,
                     T1.XSSX,
                     T1.YYB_CS YYB,
                     T1.CSZ TJZQ,
                     T2.CSZ ZZL,
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
                         AND C.CSDM = 'TJZQ'
                         AND B.TZLXBM = V_TZLXBM) T1, --��ȡ��ת�����ڲ��������
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
                         AND C.CSDM = 'ZZL'
                         AND B.TZLXBM = V_TZLXBM) T2 --��ȡ��ת�ʲ��������
               WHERE T1.TKHTZQZDY_ID = T2.TKHTZQZDY_ID
                 AND T1.YYB_CS = T2.YYB_CS
               ORDER BY T1.YYB_CS DESC, ZZL) --����ֵ��ش�С��������
     LOOP
        V_KSYF := TO_CHAR(ADD_MONTHS(TO_DATE(V_YF, 'yyyymm'), -X.TJZQ + 1), 'yyyymm');
        V_JSYF := V_YF;
        --��ʼֵ��λ
        IF V_YYB != X.YYB THEN
            V_ZZL := 0;
        END IF;
        INSERT INTO TEMPDATA
            (N1 /*TZLX*/,
             C1 /*TZLXBM*/,
             N2 /*KHTZ*/,
             C2 /*TZQZ*/,
             N3 /*YYB*/,
             N4 /*��ֵ����*/,
             N5 /*��ֵ����*/)
        VALUES
            (X.TZLX_ID, X.TZLXBM, X.KHTZ, X.TZZ, X.YYB, V_ZZL, X.ZZL);
        V_ZZL := X.ZZL + 0.001;
        V_YYB := X.YYB;
        IF (X.YYB != 1) THEN
            --����Ӫҵ�����Բ���
            V_FLAG := 1;
        END IF;
    END LOOP;
    EXECUTE IMMEDIATE 'truncate table tempdata_bb';
    IF (V_FLAG = 1) THEN
        --����Ӫҵ�����Բ���
        --�Ȱ�Ӫҵ��������������
        INSERT INTO TEMPDATA_BB
            (KHH, N1, C1, N2, C2) --�Աȣ�N1 TZLX, C1 TZLXBM, N2 KHTZ, C2 TZQZ
        --�Ȱ�Ӫҵ��������������
            SELECT KHH, B.N1 TZLX, B.C1 TZLXBM, B.N2 KHTZ, B.C2 TZQZ
              FROM (SELECT B.KHH, MAX(B.YYB) YYB, ROUND(SUM(A.JYL) / AVG(RJZZC), 2) ZZL
                      FROM HIS.T_STAT_KHJYSR_Y A, HIS.T_STAT_KHZC_Y B
                     WHERE A.KHH = B.KHH
                       AND A.YF = B.YF
                       AND EXISTS (SELECT 1 FROM TEMPDATA B WHERE A.YYB = B.N3)
                       AND A.YF BETWEEN V_KSYF AND V_JSYF
                       AND B.YF BETWEEN V_KSYF AND V_JSYF
                     GROUP BY B.KHH, B.YYB
                    HAVING AVG(RJZZC) > 0) A,
                   TEMPDATA B
             WHERE A.ZZL BETWEEN N4 AND N5
               AND A.YYB = B.N3
               AND B.N3 != 1
            UNION ALL
            --�ٰ��ܲ�������������
            SELECT KHH, B.N1 TZLX, B.C1 TZLXBM, B.N2 KHTZ, B.C2 TZQZ
              FROM (SELECT B.KHH, ROUND(SUM(JYL) / AVG(RJZZC), 2) ZZL
                      FROM HIS.T_STAT_KHJYSR_Y A, HIS.T_STAT_KHZC_Y B
                     WHERE A.KHH = B.KHH
                       AND A.YF = B.YF
                       AND NOT EXISTS (SELECT 1 FROM TEMPDATA B WHERE A.YYB = B.N3)
                       AND A.YF BETWEEN V_KSYF AND V_JSYF
                       AND B.YF BETWEEN V_KSYF AND V_JSYF
                     GROUP BY B.KHH, B.YYB
                    HAVING AVG(RJZZC) > 0) A,
                   TEMPDATA B
             WHERE A.ZZL BETWEEN N4 AND N5
               AND B.N3 = 1;
    ELSE
        --ͳһ���ܲ�������������
        INSERT INTO TEMPDATA_BB
            (KHH, N1, C1, N2, C2) --�Աȣ�N1 TZLX, C1 TZLXBM, N2 KHTZ, C2 TZQZ
            SELECT KHH, B.N1 TZLX, B.C1 TZLXBM, B.N2 KHTZ, B.C2 TZQZ
              FROM /*(SELECT B.KHH, ROUND(SUM(nvl(a.JYL,0)) / AVG(b.RJZZC), 2) ZZL
                      from his.T_STAT_KHZC_Y b 
                      left join(select khh,jyl,yf from his.t_stat_khjysr_y where yf between v_ksyf and v_jsyf) a
                      on (b.khh=a.khh and b.yf=a.yf)
                      where b.yf between v_ksyf and v_jsyf
                      group by b.khh
                      having avg(b.rjzzc)>0) a,*/
                    (select khh,jyn_zzl zzl from his.tkhzhsj) a,
                    /*(select khh,case when sum(rjzzc*x.BYZRTS)>0 then sum(jyl)/(sum(rjzzc*BYZRTS)/sum(byzrts)) else 0 end zzl
                       from dm.t_stat_khh_y x
                       where x.yf between v_ksyf and v_jsyf
                         and exists(select 1 from crmii.tkhxx y where x.khh=y.khh and y.khzt<>3)
                       group by x.khh) a,*/
                      /*FROM HIS.T_STAT_KHJYSR_Y A, HIS.T_STAT_KHZC_Y B
                     WHERE A.KHH = B.KHH
                       AND A.YF = B.YF
                       AND A.YF BETWEEN V_KSYF AND V_JSYF
                       AND B.YF BETWEEN V_KSYF AND V_JSYF
                     GROUP BY B.KHH, B.YYB
                    HAVING AVG(RJZZC) > 0) A,*/
                   TEMPDATA B
             WHERE A.ZZL BETWEEN N4 AND N5;
    END IF;
    COMMIT;
    MERGE INTO HIS.TKHTZ A
    USING (SELECT KHH, N1 TZLX, C1 TZLXBM, N2 KHTZ, C2 TZQZ FROM TEMPDATA_BB) B
    ON (A.TZLX = B.TZLX AND A.KHH = B.KHH)
    WHEN MATCHED THEN
        UPDATE SET TZQZ = B.TZQZ, KHTZ = B.KHTZ, GXRQ = V_RQ WHERE A.KHTZ != B.KHTZ
    WHEN NOT MATCHED THEN
        INSERT
            (KHH, TZLX, KHTZ, TZQZ, GXRQ, GXFS, GXRY)
        VALUES
            (B.KHH, B.TZLX, B.KHTZ, B.TZQZ, V_RQ, 1, 0);
    V_COUNT := SQL%ROWCOUNT;
    COMMIT;
    UPDATE CRMII.TKHTZLXDY SET SCJSRQ = V_RQ WHERE TZLXBM = V_TZLXBM;
    CRMII.PRO_WRITELOG(2,
                       V_NAME,
                       V_PROC || '(o_ret_code,o_ret_note,' || I_RQ || ')',
                       0,
                       'ִ�гɹ�[��¼:' || V_COUNT || '],��ʱ' ||
                       TRUNC((SYSDATE - V_DATETIME) * 1440.00 * 60) || '��',
                       V_COUNT,
                       TRUNC((SYSDATE - V_DATETIME) * 1440.00 * 60));
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
END PRO_KHTZ_ZZL;