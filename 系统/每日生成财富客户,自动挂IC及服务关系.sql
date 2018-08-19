CREATE OR REPLACE PROCEDURE HIS.PRO_CFKHGL(O_RESULT OUT NUMBER,
                                              O_NOTE   OUT VARCHAR2,
                                              I_RQ     IN NUMBER) IS
  V_TABLENAME VARCHAR2(50) := 'TCFKHGL';
  V_COUNT     NUMBER(8) := 0;
  V_NAME      VARCHAR2(60) := '每日生成财富客户';
  V_DATETIME  DATE := SYSDATE;
  V_PROC      VARCHAR2(60) := 'PRO_CFKHGL';
  v_yf        number;
  --20170309  guoxiating 每日生成财富客户
  --20170830  wujun      机构客户不自动挂接关系
  --20171013  wujun      除IC（自主开发）关系外其它IC关系的解除日志，不影响后台自动挂IC
  --20171116  wujun      从仓库取价值量时增加当为null则为0，避免客户去年休眠今年激活且成为财富客户但基准价值量为空
  --20180118  wujun      修复，资产应该是净资产
  --20180205  chenjianbo 增加大众客户相关的3个列（新添加tjrq_dzkh,jzjzl_dzkh,sfdzkh）数据的每日更新
  
  v_ryxx      NUMBER;
  V_GXID      NUMBER;
BEGIN
  /*insert into crmii.tcfkhgl(id,yyb,tjfs,lrr,tjrq,khh,ZC)
select crmii.func_nextid('tCFKHGL'),a.yyb,1,0,b.date_id,a.id,b.highestasset
  --from crmii.tkhxx a,stats.k_fzzc_daily@DWDB b
  from crmii.tkhxx a,stats.k_jsc_highestasset@dwdb b
 where a.khh=b.user_code
   and a.yyb in(8004,8012,8019,8023,8072)
   and b.highestasset>=500000
   and not exists(select 1 from crmii.tcfkhgl c where a.id=c.khh);
*/
  --更新最新峰值资产
  UPDATE CRMII.TCFKHGL A SET (A.XFZZC,a.fzzcrq)=(
         SELECT ZZC-ZFZ,I_RQ FROM DM.T_STAT_KHH_R B WHERE TO_CHAR(A.KHH)=B.KHH AND B.RQ=I_RQ AND A.XFZZC<(B.ZZC-B.ZFZ))
    WHERE EXISTS(SELECT 1 FROM DM.T_STAT_KHH_R B WHERE TO_CHAR(A.KHH)=B.KHH AND B.RQ=I_RQ AND A.XFZZC<(B.ZZC-B.ZFZ));
  COMMIT;
  --如果非财富客户当天资产达到500000万了，就更新成财富客户
  UPDATE crmii.tcfkhgl a SET a.sfcfkh=1,a.tjrq=i_rq,a.zc=a.xfzzc,
      a.jzjzl=0--CASE WHEN a.xfzzc>=2000000 THEN 2000 ELSE 1000 END
   WHERE a.fzzcrq=i_rq AND a.sfcfkh=0 AND a.xfzzc>=500000;
 COMMIT;
 
 --当天生产的财富客户，如果是2017年以前开户的，则取仓库的基准价值量
  UPDATE crmii.tcfkhgl a SET a.jzjzl=nvl((SELECT b.cust_value FROM his.tcfkhjzjzl_ck b WHERE a.khh=b.user_code),0)
  WHERE EXISTS(SELECT 1 FROM his.tcfkhjzjzl_ck b WHERE a.khh=b.user_code)
  AND EXISTS(SELECT 1 FROM crmii.tkhxx c WHERE a.khh=c.id AND c.khrq<20170100)
  AND a.tjrq=i_rq
  AND a.sfcfkh=1;
  COMMIT;
  
  --写入当天新增的客户
  insert INTO crmii.tcfkhgl(id,yyb,jzjzl,tjfs,lrr,tjrq,khh,zc,xfzzc,fzzcrq,sfcfkh)
  SELECT crmii.func_nextid('tCFKHGL'),a.yyb,0/*CASE WHEN a.zzc>=2000000 THEN 2000 ELSE 1000 END*/,1,0,i_rq,a.khh,a.zzc-A.ZFZ,a.zzc-A.ZFZ,
         a.rq,CASE WHEN (a.zzc-A.ZFZ)>=500000 THEN 1 ELSE 0 END
    FROM dm.t_stat_khh_r a
   WHERE NOT EXISTS(SELECT 1 FROM crmii.tcfkhgl b WHERE a.khh=to_char(b.khh))
     AND a.yyb NOT IN(9906,8808,8801,7071,9907)  --排除中投自有客户
     --AND a.zzc>=500000
     AND a.rq=i_rq;
  COMMIT;
  --当天新增的客户如果是机构客户，则设置成财富客户
  UPDATE crmii.tcfkhgl a SET a.sfcfkh=1 
  WHERE a.sfcfkh=0 AND a.tjrq=i_rq AND EXISTS(SELECT 1 FROM crmii.tkhxx b WHERE a.khh=b.id and b.khlx=1 AND b.khzt=0);
  COMMIT;
  
  --如果财富客户的资产小于50万，最新峰值资产大于50万，则更新
  /*UPDATE crmii.tcfkhgl a SET tjrq=i_rq,zc=xfzzc WHERE a.sfcfkh=1 AND a.zc<500000 AND a.xfzzc>=500000
  AND EXISTS(SELECT 1 FROM crmii.tkhxx b WHERE a.khh=b.id AND b.khzt=0 AND b.khlx=0);
  COMMIT;*/
  --2017年之后新开的财富客户基准价值量设置成0
  UPDATE crmii.tcfkhgl t SET t.jzjzl=0 WHERE t.tjrq=i_rq AND t.sfcfkh=1 AND t.tjfs=1
  AND EXISTS(SELECT 1 FROM crmii.tkhxx a WHERE t.khh=a.id AND a.khrq>20170100);
  COMMIT;
  --处理IC关系，如果有普通开发关系，且开发人是状态正常的IC的话，自动挂IC关系和服务关系   
  FOR ekh IN(SELECT * FROM crmii.tcfkhgl t WHERE /*t.tjrq=i_rq AND*/ t.sfcfkh=1 
               AND NOT EXISTS(SELECT 1 FROM crmii.tkhxx kh WHERE t.khh=kh.id and kh.khlx=1)
               AND NOT EXISTS(SELECT 1 FROM crmii.tkhgx b WHERE t.khh=b.khh /*AND b.zt=0*/ AND b.gxlx IN (SELECT IBM FROM CRMII.TKHGXLX WHERE GXGL=1 AND QYZT=1)) --不存在IC关系的
               AND EXISTS(SELECT 1 FROM crmii.tkhgx m,crmii.tryjbxx n WHERE m.ryxx=n.ryxx AND n.ryfl=188 AND n.zt=0
                                           AND m.zt=0 AND m.gxlx=10 AND t.khh=m.khh)
               AND NOT EXISTS(SELECT 1 FROM his.tkhgxls ls WHERE t.khh=ls.khh AND ls.gxlx=13/* IN (SELECT IBM FROM CRMII.TKHGXLX WHERE GXGL=1 AND QYZT=1)*/)
               ) LOOP
    SELECT nvl(MAX(ryxx),0) INTO v_ryxx FROM crmii.tkhgx a WHERE a.khh=ekh.khh AND a.zt=0 AND a.gxlx=10
    AND EXISTS(SELECT 1 FROM crmii.tryjbxx b WHERE a.ryxx=b.ryxx AND b.ryfl=188 AND b.zt=0);
    IF v_ryxx>0 THEN
      --IC关系
      V_GXID:=crmii.func_nextid('tKHGX');
      insert INTO crmii.tkhgx(id,ryxx,yyb,khh,gxlx,ywlx,tjrq,sxrq,jzrq,khgx,yxlb,zt,szr,khh_xc,syqz,zcqz,cbqz,jszh)
            SELECT V_GXID,v_ryxx,ekh.yyb,ekh.khh,13,0,i_rq,i_rq,20501231,
                   1,0,0,0,ekh.khh,1,1,1,
                   (SELECT max(id) FROM crmii.tryjszh zh WHERE zh.ryxx=v_ryxx AND zh.zhzt=0 AND zh.zhsx=1)
              FROM dual;
      insert INTO CRMII.tkhgx_icfc(ID,fcbl,ryxx,tkhgx_id,zt,JSZH)
        SELECT CRMII.func_nextid('tKHGX_ICFC'),1,V_RYXX,V_GXID,0,
               (SELECT max(id) FROM crmii.tryjszh zh WHERE zh.ryxx=v_ryxx AND zh.zhzt=0 AND zh.zhsx=1)
         FROM DUAL;
      --处理服务关系跟随
      UPDATE crmii.tkhgx a SET a.zt=1,a.zxrq=to_char(to_date(to_char(i_rq),'yyyymmdd')-1,'yyyymmdd'),
                                a.jzrq=to_char(to_date(to_char(i_rq),'yyyymmdd')-1,'yyyymmdd')
                 WHERE a.khh=ekh.khh AND a.zt=0 AND a.ryxx<>v_ryxx AND gxlx=1;
      SELECT COUNT(1) INTO v_count FROM dual 
      WHERE EXISTS(SELECT 1 FROM crmii.tkhgx a WHERE a.khh=ekh.khh AND a.ryxx=v_ryxx AND a.zt=0 AND a.gxlx=1);
      IF v_count<1 THEN
        INSERT INTO crmii.TFWGXFH
              (ID, FWKHH, KHYYB, XKHJL, FWGXLX,CZLX,CZSM,CZRQ,CZY,FHBZ,XFWTD)
              SELECT crmii.func_nextid('TFWGXFH'),ekh.khh,ekh.yyb,v_ryxx,1,1,'自动新增IC关系时，同时挂接服务关系',TO_NUMBER(TO_CHAR(SYSDATE, 'YYYYMMDD')),0,1,NULL
                FROM DUAL;
            --新增服务关系
        insert INTO crmii.tkhgx(id,ryxx,yyb,khh,gxlx,ywlx,tjrq,sxrq,jzrq,khgx,yxlb,zt,szr,khh_xc,syqz,jszh)
              SELECT crmii.func_nextid('tKHGX'),v_ryxx,ekh.yyb,ekh.khh,1,0,i_rq,i_rq,20501231,
                     1,0,0,0,ekh.khh,1,
                     (SELECT max(id) FROM crmii.tryjszh zh WHERE zh.ryxx=v_ryxx AND zh.zhzt=0 AND zh.zhsx=1)
                FROM dual;
        UPDATE crmii.tkhxx a SET a.lcjl=v_ryxx WHERE id=ekh.khh;
      end IF;
    end IF;
  END LOOP;
  COMMIT;
  --更新财富客户标识
  UPDATE crmii.tkhxx a SET a.cfkhlx=4; COMMIT;
  --机构客户
  -- KEN 8 反洗钱休眠户 20171228
  UPDATE crmii.tkhxx a SET a.cfkhlx=3 WHERE a.khlx=1 AND a.khzt in (0,8)
  AND EXISTS(SELECT 1 FROM dsc_bas.t_zjzh b WHERE a.khh=b.khh AND b.zhzt=0);
  COMMIT;
  --财富客户
  UPDATE crmii.tkhxx a SET a.cfkhlx=1 
  WHERE a.cfkhlx=4 AND a.khzt in (0,8) AND EXISTS(SELECT 1 from crmii.tcfkhgl b WHERE a.id=b.khh AND b.sfcfkh=1)
  AND EXISTS(SELECT 1 FROM dsc_bas.t_zjzh c WHERE a.khh=c.khh AND c.zhzt=0);
  COMMIT;
  --大众客户
  UPDATE crmii.tkhxx a SET a.cfkhlx=2 WHERE a.cfkhlx=4 AND a.khzt in (0,8)
  AND EXISTS(SELECT 1 FROM dsc_bas.t_zjzh b WHERE a.khh=b.khh AND b.zhzt=0);
  COMMIT;
  --888,999,7071,7074,8801,8812,9001,9002,9003,9906,9907,17001,17010,8096 营业部在这里面的客户全部都更新成其他客户
  UPDATE crmii.tkhxx a SET a.cfkhlx=4
  WHERE a.yyb IN(888,999,7071,7074,8801,8812,9001,9002,9003,9906,9907,17001,17010,8096);
  
  -- mod by ken 20180205 增加信用09年来峰值资产
  
  execute immediate 'TRUNCATE table crmii.T_FZZC_XY';
  INSERT INTO CRMII.T_FZZC_XY(USER_CODE,FZZC_XY,FZZC_XYZC,FZZC_XYFZ)
  SELECT USER_CODE,FZZC_XY,FZZC_XYZC,FZZC_XYFZ FROM STATS.K_FZZC_XY_MONTHS_NOW@DWDB; 
  COMMIT;
  
  --chenjianbo 20180205 当日新增的客户，如果为大众客户，设以下3个列的数据
  --已一次性初始化上年基准价值量(tjrq_dzkh=20180101),价值量数据在tjzjzl_dzkh_2017
  --已一次性初始化20180101-20180202新增的大众客户，update crmii.tcfkhgl a set tjrq_dzkh=20180202,sfdzkh=1,jzjzl_dzkh=0 where exists (select 1 from crmii.tkhxx b where a.khh=b.id and b.khrq>=20180101 and b.cfkhlx=2); 
  update crmii.tcfkhgl a set tjrq_dzkh=I_RQ,sfdzkh=1,jzjzl_dzkh=0
  where exists (select 1 from crmii.tkhxx b where a.khh=b.id and b.khrq=I_RQ and b.cfkhlx=2); 
  commit;

  CRMII.PRO_WRITELOG(2,
                     V_NAME,
                     V_PROC,
                     0,
                     '执行成功',
                     NULL,
                     TRUNC((SYSDATE - V_DATETIME) * 1440.00 * 60));
  O_RESULT := 1;
  O_NOTE   := '成功';
  COMMIT;
EXCEPTION
  WHEN OTHERS THEN
    O_RESULT := -1;
    O_NOTE   := SQLERRM;
    ROLLBACK;
    CRMII.PRO_WRITELOG(2, V_NAME, V_PROC, 2, O_NOTE);
END;