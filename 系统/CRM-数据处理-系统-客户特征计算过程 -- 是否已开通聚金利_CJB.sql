CREATE OR REPLACE PROCEDURE HIS.PRO_KHTZ_SFYKTJJL(O_RETCODE OUT NUMBER,
                                               O_RETNOTE OUT VARCHAR2,
                                               I_RQ      IN NUMBER,
                                               I_REDO    IN NUMBER := 0 --是否强制重新计算 0否，1是
                                               ) AS
  /* -----------------------------------------------------------------------
  项目名称：   CRM4.0
  概要说明：   客户特征计算过程 -- 是否已开通聚金利
        I_RQ           IN NUMBER,  --日期
        I_REDO         IN NUMBER,  --是否强制重新计算 0否，1是
  语法信息：
       输出参数：
  数据准备：
        1)edc_odm.ec_asset_appr_prot@DWDB
  运行原理：
                      根据仓库每日更新的已开通聚金利客户列表来按给客户打上是否开通聚金利客户标签
  修订记录：
      修订日期       版本号    修订人             修改内容简要说明
      20180105       1.0.0     ken                新增
      20180612       1.1.0     陈剑波             修改：协议数据落地改为DSC_BAS.ec_asset_appr_prot; 优化处理
    -----------------------------------------------------------------------*/
  V_DATETIME DATE := SYSDATE;
  V_PROC     VARCHAR2(50) := 'PRO_KHTZ_SFYKTJJL';
  V_NAME     VARCHAR2(50) := '客户特征计算-是否已开通聚金利客户';
  V_COUNT    NUMBER(8) := 0;
  V_RQ       NUMBER(8) := TO_CHAR(SYSDATE, 'yyyymmdd');
  V_TZLXBM   VARCHAR2(30) := 'SFYKTJJL';
  V_TZLX     NUMBER(16);
  V_SCJSRQ   NUMBER(8);
  V_JSZQ     NUMBER(8);
	
BEGIN
  O_RETCODE := 0;
  IF (I_REDO = 0) THEN
    SELECT ID, SCJSRQ, JSZQ
      INTO V_TZLX, V_SCJSRQ, V_JSZQ
      FROM CRMII.TKHTZLXDY
     WHERE TZLXBM = V_TZLXBM;
    IF (V_SCJSRQ IS NOT NULL) THEN
      IF (V_JSZQ > 0) THEN
        --0|每日;1|每月;3|每季度;6|每半年;12|每年;-1|手工
        IF (V_RQ <
           TO_NUMBER(TO_CHAR(ADD_MONTHS(TO_DATE(V_SCJSRQ, 'yyyymmdd'),
                                         V_JSZQ),
                              'yyyymmdd'))) THEN
          O_RETCODE := 1;
          O_RETNOTE := '时间未到，不计算';
          RETURN;
        END IF;
      END IF;
    END IF;
  END IF;
/*
	-- 落地聚金利协议
	select count(1) into V_COUNT from edc_odm.ec_asset_appr_prot@DWDB where date_id=I_RQ; 
	if V_COUNT>0 then -- 源数据存在才刷新，以防不存在源数据时删除落地数据
		EXECUTE IMMEDIATE 'TRUNCATE TABLE DSC_BAS.T_asset_appr_prot';
		insert into DSC_BAS.T_asset_appr_prot(REMARK,DATA_DATE,UPD_DATE,CAL_PROFIT_DATE,DATE_ID,CUST_CODE,ACCOUNT,FUND_INTL,TA_CODE,FUND_CODE
		  ,ASSET_FLOOR,WORKING_ASSET_FLOOR,EXPIRY_DATE,CVT_VOL,STATUS,PAUSE_EXPIRY_DATE,OUT_ORDER_CNT,IN_ORDER_CNT,OUT_VOL_SUM,IN_AMT_SUM)
			select REMARK,DATA_DATE,UPD_DATE,CAL_PROFIT_DATE,DATE_ID,CUST_CODE,ACCOUNT,FUND_INTL,TA_CODE,FUND_CODE
        ,ASSET_FLOOR,WORKING_ASSET_FLOOR,EXPIRY_DATE,CVT_VOL,STATUS,PAUSE_EXPIRY_DATE,OUT_ORDER_CNT,IN_ORDER_CNT,OUT_VOL_SUM,IN_AMT_SUM
      from edc_odm.ec_asset_appr_prot@DWDB;
		COMMIT;
	end if;
*/	
  EXECUTE IMMEDIATE 'truncate table TEMPDATA';
	INSERT INTO TEMPDATA
		(N1 /*TZLX*/,
		 C1 /*TZLXBM*/,
		 N2 /*KHTZ*/,
		 C2 /*TZQZ*/,
		 N3 /*YYB*/,
		 N4)
	  select X.TZLX_ID, X.TZLXBM, X.ID, X.TZZ, 1, X.XSSX
		  from (SELECT A.*, B.TZLXBM
										FROM CRMII.TKHTZQZDY A, CRMII.TKHTZLXDY B
									 WHERE A.TZLX_ID = B.ID
										 AND B.TZLXBM = V_TZLXBM) X;
										 
  SELECT COUNT(1) INTO V_COUNT FROM TEMPDATA;
  IF (V_COUNT > 0) THEN
    EXECUTE IMMEDIATE 'truncate table tempdata_bb';

	--有设置对应参数
    INSERT INTO TEMPDATA_BB(KHH, N2)
      select distinct cust_code, 1 from DSC_BAS.T_asset_appr_prot 
        where status=0;
				
    INSERT INTO TEMPDATA_BB(KHH, N2)
      select id, 2 FROM CRMII.TKHXX KH
        WHERE NOT EXISTS(SELECT 1 FROM DSC_BAS.T_asset_appr_prot JJL WHERE JJL.cust_code = KH.id);
					
    merge into TEMPDATA_BB A
      using (select N1, N2, C2, N4 FROM TEMPDATA) B
      on (A.N2 = B.N4)
    when matched then
      update SET A.RYXX=B.N1,A.N10=B.N2,A.C1=B.C2;

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
				
		-- 不在tempdata_bb中的数据，需要删除（一般是由于状态变为非'正常'）		
		DELETE FROM HIS.TKHTZ a WHERE a.TZLX = (select ID from CRMII.TKHTZLXDY where TZLXBM = V_TZLXBM) 
		  and not exists(select 1 from TEMPDATA_BB b where b.khh = a.khh);
    COMMIT;
	
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
  EXECUTE IMMEDIATE 'truncate table tempdata';
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