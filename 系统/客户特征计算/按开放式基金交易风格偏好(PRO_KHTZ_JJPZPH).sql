CREATE OR REPLACE PROCEDURE HIS.PRO_KHTZ_JJPZPH(O_RETCODE OUT NUMBER,
                                              O_RETNOTE OUT VARCHAR2,
                                              I_RQ      IN NUMBER,
                                              I_REDO    IN NUMBER := 0 --是否强制重新计算 0否，1是
                                              ) AS
    /* -----------------------------------------------------------------------
    项目名称：   CRM4.0
    概要说明：   客户特征计算过程 -- 按开放式基金交易风格偏好
          I_RQ           IN NUMBER,  --日期
          I_REDO         IN NUMBER,  --是否强制重新计算 0否，1是
    语法信息：
         输出参数：
                     O_RETCODE  成功返回1，失败返回-1
                     O_RETNOTE  成功返回操作成功，失败返回错误信息
    数据准备：
          1)HIS.TFP_JGMXL
    运行原理：
                         按客户近期内基金品种最大交易量来计算
    修订记录：
        修订日期       版本号    修订人             修改内容简要说明
        20120530                吴清茂             增加基金品种偏好特征计算过程
        20140609                吴邦杰             过程从C3迁移到C4
        20161127   GUOXIATING   改成取pif.tpif_cpdm
      -----------------------------------------------------------------------*/
    V_DATETIME DATE := SYSDATE;
    V_PROC     VARCHAR2(50) := 'PRO_KHTZ_JJPZPH';
    V_NAME     VARCHAR2(50) := '客户特征计算-基金品种偏好';
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
                --0|每日;1|每月;3|每季度;6|每半年;12|每年;-1|手工
                IF (V_RQ <
                   TO_NUMBER(TO_CHAR(ADD_MONTHS(TO_DATE(V_SCJSRQ, 'yyyymmdd'), V_JSZQ),
                                      'yyyymmdd'))) THEN
                    O_RETCODE := 1;
                    O_RETNOTE := '时间未到，不计算';
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
                         AND B.TZLXBM = V_TZLXBM) T1, --获取产品参数结果集
                     --(select a.*,c.CSDM,c.LJGX,c.CSZ,C.TKHTZQZDY_ID,b.TZLXBM,c.YYB YYB_CS from tKHTZQZDY_TZCSZ c,tKHTZQZDY a,tKHTZLXDY b where a.id=c.tkhtzqzdy_id and a.TZLX_ID=b.ID and c.CSDM='JYLZB'  and b.TZLXBM=v_tzlxbm) t2,  --获取交易量占比参数结果集
                     --(select a.*,c.CSDM,c.LJGX,c.CSZ,C.TKHTZQZDY_ID,b.TZLXBM,c.YYB YYB_CS from tKHTZQZDY_TZCSZ c,tKHTZQZDY a,tKHTZLXDY b where a.id=c.tkhtzqzdy_id and a.TZLX_ID=b.ID and c.CSDM='CCZB'  and b.TZLXBM=v_tzlxbm) t3,  --获取持仓占比参数结果集
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
                         AND B.TZLXBM = V_TZLXBM) T4 --获取统计参数结果集
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
             N6 /*产品品种*/)
        VALUES
            (X.TZLX_ID, X.TZLXBM, X.KHTZ, X.TZZ, X.YYB, X.ZQLB);
        IF (X.YYB != 1) THEN
            --存在营业部个性参数
            V_FLAG := 1;
        END IF;
    END LOOP;
    SELECT COUNT(*) INTO V_COUNT FROM TEMPDATA;
    IF (V_COUNT > 0) THEN
        --有设置对应参数
        INSERT INTO TEMPDATA_BB
            (KHH, YYB, N1 /*基金类别*/, N2 /*交易量*/)
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
           SET (RYXX, N10, C1) = (SELECT N1, N2, C2 FROM TEMPDATA B WHERE A.N1 = B.N6) --TEMPDATA_BB的RYXX列上建有索引
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
                           '执行成功[记录:' || V_COUNT || '],用时' ||
                           TRUNC((SYSDATE - V_DATETIME) * 1440.00 * 60) || '秒',
                           V_COUNT,
                           TRUNC((SYSDATE - V_DATETIME) * 1440.00 * 60));
    END IF;
    EXECUTE IMMEDIATE 'truncate table tempdata_bb';
    
    O_RETCODE := 1;
    O_RETNOTE := '执行成功';
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