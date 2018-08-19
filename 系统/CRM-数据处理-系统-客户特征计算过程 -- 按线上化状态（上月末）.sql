CREATE OR REPLACE PROCEDURE HIS.PRO_KHTZ_KHXSHZT_SYM(O_RETCODE OUT NUMBER,
                                                    O_RETNOTE OUT VARCHAR2,
                                                    I_RQ      IN NUMBER,
                                                    I_REDO    IN NUMBER := 0 --是否强制重新计算 0否，1是
                                                    ) AS
  /* -----------------------------------------------------------------------
  项目名称：   CRM4.0
  概要说明：   客户特征计算过程 -- 按线上化状态（上月末）
        I_RQ           IN NUMBER,  --日期
        I_REDO         IN NUMBER,  --是否强制重新计算 0否，1是
  语法信息：
       输出参数：
  数据准备：
        1)crmii.t_khxsh
  运行原理：
                      按年龄
  修订记录：
      修订日期       版本号          修订人             修改内容简要说明
      20170808       1.0.0.1          wujun               新增
    -----------------------------------------------------------------------*/
  V_DATETIME DATE := SYSDATE;
  V_PROC     VARCHAR2(50) := 'PRO_KHTZ_KHXSHZT_SYM';
  V_NAME     VARCHAR2(50) := '客户特征计算-客户线上化状态（上月末）';
  V_COUNT    NUMBER(8) := 0;
  V_RQ       NUMBER(8) := TO_CHAR(SYSDATE, 'yyyymmdd');
  V_KSYF     NUMBER := 0;
  V_JSYF     NUMBER := 0;
  V_TZLXBM   VARCHAR2(30) := 'XSHZT_SYM';
  V_TZLX     NUMBER(16);
  V_SCJSRQ   NUMBER(8);
  V_JSZQ     NUMBER(8);
  V_FLAG     NUMBER(1) := 0;
  V_YF       NUMBER(6);
  V_TEST     NUMBER := 0;
  V_MONLASTJYR      NUMBER(8);
BEGIN
  O_RETCODE := 0;
  V_YF      := SUBSTR(I_RQ, 1, 6);
  IF (I_REDO = 0 OR 1 = 1) THEN
    SELECT ID, SCJSRQ, JSZQ
      INTO V_TZLX, V_SCJSRQ, V_JSZQ
      FROM CRMII.TKHTZLXDY
     WHERE TZLXBM = V_TZLXBM;
     SELECT MAX(JYR.JYR)
    INTO V_MONLASTJYR
    FROM DSC_CFG.T_XTJYR JYR
   WHERE JYR.NY = V_YF;
  IF V_MONLASTJYR <> I_RQ THEN
          O_RETCODE := 1;
          O_RETNOTE := '时间未到，不计算';
          RETURN;
  END IF;
  END IF;
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
                       AND B.TZLXBM = V_TZLXBM) T1 --获取
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
    --有设置对应参数
    INSERT /*+parallel(t,16)*/
    INTO TEMPDATA_BB
      (KHH, N2)
      SELECT A.KHH, A.XSHBQLX FROM CRMII.T_KHXSH A WHERE A.RQ = I_RQ;
    UPDATE TEMPDATA_BB A
       SET (RYXX, N10, C1) =
           (SELECT N1, N2, C2 FROM TEMPDATA B WHERE A.N2 = B.N4) --TEMPDATA_BB的RYXX列上建有索引
     WHERE EXISTS (SELECT 1 FROM TEMPDATA B WHERE A.N2 = B.N4);
    DELETE TEMPDATA_BB WHERE N10 IS NULL;
    MERGE INTO HIS.TKHTZ A
    USING TEMPDATA_BB B
    ON (A.TZLX = B.RYXX AND A.KHH = B.KHH)
    WHEN MATCHED THEN
      UPDATE
         SET TZQZ = B.C1, KHTZ = B.N10, GXRQ = V_RQ
       WHERE A.KHTZ != B.N10
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