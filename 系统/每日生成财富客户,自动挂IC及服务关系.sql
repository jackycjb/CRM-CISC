CREATE OR REPLACE PROCEDURE HIS.PRO_CFKHGL(O_RESULT OUT NUMBER,
                                              O_NOTE   OUT VARCHAR2,
                                              I_RQ     IN NUMBER) IS
  V_TABLENAME VARCHAR2(50) := 'TCFKHGL';
  V_COUNT     NUMBER(8) := 0;
  V_NAME      VARCHAR2(60) := 'ÿ�����ɲƸ��ͻ�';
  V_DATETIME  DATE := SYSDATE;
  V_PROC      VARCHAR2(60) := 'PRO_CFKHGL';
  v_yf        number;
  --20170309  guoxiating ÿ�����ɲƸ��ͻ�
  --20170830  wujun      �����ͻ����Զ��ҽӹ�ϵ
  --20171013  wujun      ��IC��������������ϵ������IC��ϵ�Ľ����־����Ӱ���̨�Զ���IC
  --20171116  wujun      �Ӳֿ�ȡ��ֵ��ʱ���ӵ�Ϊnull��Ϊ0������ͻ�ȥ�����߽��꼤���ҳ�Ϊ�Ƹ��ͻ�����׼��ֵ��Ϊ��
  --20180118  wujun      �޸����ʲ�Ӧ���Ǿ��ʲ�
  --20180205  chenjianbo ���Ӵ��ڿͻ���ص�3���У������tjrq_dzkh,jzjzl_dzkh,sfdzkh�����ݵ�ÿ�ո���
  
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
  --�������·�ֵ�ʲ�
  UPDATE CRMII.TCFKHGL A SET (A.XFZZC,a.fzzcrq)=(
         SELECT ZZC-ZFZ,I_RQ FROM DM.T_STAT_KHH_R B WHERE TO_CHAR(A.KHH)=B.KHH AND B.RQ=I_RQ AND A.XFZZC<(B.ZZC-B.ZFZ))
    WHERE EXISTS(SELECT 1 FROM DM.T_STAT_KHH_R B WHERE TO_CHAR(A.KHH)=B.KHH AND B.RQ=I_RQ AND A.XFZZC<(B.ZZC-B.ZFZ));
  COMMIT;
  --����ǲƸ��ͻ������ʲ��ﵽ500000���ˣ��͸��³ɲƸ��ͻ�
  UPDATE crmii.tcfkhgl a SET a.sfcfkh=1,a.tjrq=i_rq,a.zc=a.xfzzc,
      a.jzjzl=0--CASE WHEN a.xfzzc>=2000000 THEN 2000 ELSE 1000 END
   WHERE a.fzzcrq=i_rq AND a.sfcfkh=0 AND a.xfzzc>=500000;
 COMMIT;
 
 --���������ĲƸ��ͻ��������2017����ǰ�����ģ���ȡ�ֿ�Ļ�׼��ֵ��
  UPDATE crmii.tcfkhgl a SET a.jzjzl=nvl((SELECT b.cust_value FROM his.tcfkhjzjzl_ck b WHERE a.khh=b.user_code),0)
  WHERE EXISTS(SELECT 1 FROM his.tcfkhjzjzl_ck b WHERE a.khh=b.user_code)
  AND EXISTS(SELECT 1 FROM crmii.tkhxx c WHERE a.khh=c.id AND c.khrq<20170100)
  AND a.tjrq=i_rq
  AND a.sfcfkh=1;
  COMMIT;
  
  --д�뵱�������Ŀͻ�
  insert INTO crmii.tcfkhgl(id,yyb,jzjzl,tjfs,lrr,tjrq,khh,zc,xfzzc,fzzcrq,sfcfkh)
  SELECT crmii.func_nextid('tCFKHGL'),a.yyb,0/*CASE WHEN a.zzc>=2000000 THEN 2000 ELSE 1000 END*/,1,0,i_rq,a.khh,a.zzc-A.ZFZ,a.zzc-A.ZFZ,
         a.rq,CASE WHEN (a.zzc-A.ZFZ)>=500000 THEN 1 ELSE 0 END
    FROM dm.t_stat_khh_r a
   WHERE NOT EXISTS(SELECT 1 FROM crmii.tcfkhgl b WHERE a.khh=to_char(b.khh))
     AND a.yyb NOT IN(9906,8808,8801,7071,9907)  --�ų���Ͷ���пͻ�
     --AND a.zzc>=500000
     AND a.rq=i_rq;
  COMMIT;
  --���������Ŀͻ�����ǻ����ͻ��������óɲƸ��ͻ�
  UPDATE crmii.tcfkhgl a SET a.sfcfkh=1 
  WHERE a.sfcfkh=0 AND a.tjrq=i_rq AND EXISTS(SELECT 1 FROM crmii.tkhxx b WHERE a.khh=b.id and b.khlx=1 AND b.khzt=0);
  COMMIT;
  
  --����Ƹ��ͻ����ʲ�С��50�����·�ֵ�ʲ�����50�������
  /*UPDATE crmii.tcfkhgl a SET tjrq=i_rq,zc=xfzzc WHERE a.sfcfkh=1 AND a.zc<500000 AND a.xfzzc>=500000
  AND EXISTS(SELECT 1 FROM crmii.tkhxx b WHERE a.khh=b.id AND b.khzt=0 AND b.khlx=0);
  COMMIT;*/
  --2017��֮���¿��ĲƸ��ͻ���׼��ֵ�����ó�0
  UPDATE crmii.tcfkhgl t SET t.jzjzl=0 WHERE t.tjrq=i_rq AND t.sfcfkh=1 AND t.tjfs=1
  AND EXISTS(SELECT 1 FROM crmii.tkhxx a WHERE t.khh=a.id AND a.khrq>20170100);
  COMMIT;
  --����IC��ϵ���������ͨ������ϵ���ҿ�������״̬������IC�Ļ����Զ���IC��ϵ�ͷ����ϵ   
  FOR ekh IN(SELECT * FROM crmii.tcfkhgl t WHERE /*t.tjrq=i_rq AND*/ t.sfcfkh=1 
               AND NOT EXISTS(SELECT 1 FROM crmii.tkhxx kh WHERE t.khh=kh.id and kh.khlx=1)
               AND NOT EXISTS(SELECT 1 FROM crmii.tkhgx b WHERE t.khh=b.khh /*AND b.zt=0*/ AND b.gxlx IN (SELECT IBM FROM CRMII.TKHGXLX WHERE GXGL=1 AND QYZT=1)) --������IC��ϵ��
               AND EXISTS(SELECT 1 FROM crmii.tkhgx m,crmii.tryjbxx n WHERE m.ryxx=n.ryxx AND n.ryfl=188 AND n.zt=0
                                           AND m.zt=0 AND m.gxlx=10 AND t.khh=m.khh)
               AND NOT EXISTS(SELECT 1 FROM his.tkhgxls ls WHERE t.khh=ls.khh AND ls.gxlx=13/* IN (SELECT IBM FROM CRMII.TKHGXLX WHERE GXGL=1 AND QYZT=1)*/)
               ) LOOP
    SELECT nvl(MAX(ryxx),0) INTO v_ryxx FROM crmii.tkhgx a WHERE a.khh=ekh.khh AND a.zt=0 AND a.gxlx=10
    AND EXISTS(SELECT 1 FROM crmii.tryjbxx b WHERE a.ryxx=b.ryxx AND b.ryfl=188 AND b.zt=0);
    IF v_ryxx>0 THEN
      --IC��ϵ
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
      --��������ϵ����
      UPDATE crmii.tkhgx a SET a.zt=1,a.zxrq=to_char(to_date(to_char(i_rq),'yyyymmdd')-1,'yyyymmdd'),
                                a.jzrq=to_char(to_date(to_char(i_rq),'yyyymmdd')-1,'yyyymmdd')
                 WHERE a.khh=ekh.khh AND a.zt=0 AND a.ryxx<>v_ryxx AND gxlx=1;
      SELECT COUNT(1) INTO v_count FROM dual 
      WHERE EXISTS(SELECT 1 FROM crmii.tkhgx a WHERE a.khh=ekh.khh AND a.ryxx=v_ryxx AND a.zt=0 AND a.gxlx=1);
      IF v_count<1 THEN
        INSERT INTO crmii.TFWGXFH
              (ID, FWKHH, KHYYB, XKHJL, FWGXLX,CZLX,CZSM,CZRQ,CZY,FHBZ,XFWTD)
              SELECT crmii.func_nextid('TFWGXFH'),ekh.khh,ekh.yyb,v_ryxx,1,1,'�Զ�����IC��ϵʱ��ͬʱ�ҽӷ����ϵ',TO_NUMBER(TO_CHAR(SYSDATE, 'YYYYMMDD')),0,1,NULL
                FROM DUAL;
            --���������ϵ
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
  --���²Ƹ��ͻ���ʶ
  UPDATE crmii.tkhxx a SET a.cfkhlx=4; COMMIT;
  --�����ͻ�
  -- KEN 8 ��ϴǮ���߻� 20171228
  UPDATE crmii.tkhxx a SET a.cfkhlx=3 WHERE a.khlx=1 AND a.khzt in (0,8)
  AND EXISTS(SELECT 1 FROM dsc_bas.t_zjzh b WHERE a.khh=b.khh AND b.zhzt=0);
  COMMIT;
  --�Ƹ��ͻ�
  UPDATE crmii.tkhxx a SET a.cfkhlx=1 
  WHERE a.cfkhlx=4 AND a.khzt in (0,8) AND EXISTS(SELECT 1 from crmii.tcfkhgl b WHERE a.id=b.khh AND b.sfcfkh=1)
  AND EXISTS(SELECT 1 FROM dsc_bas.t_zjzh c WHERE a.khh=c.khh AND c.zhzt=0);
  COMMIT;
  --���ڿͻ�
  UPDATE crmii.tkhxx a SET a.cfkhlx=2 WHERE a.cfkhlx=4 AND a.khzt in (0,8)
  AND EXISTS(SELECT 1 FROM dsc_bas.t_zjzh b WHERE a.khh=b.khh AND b.zhzt=0);
  COMMIT;
  --888,999,7071,7074,8801,8812,9001,9002,9003,9906,9907,17001,17010,8096 Ӫҵ����������Ŀͻ�ȫ�������³������ͻ�
  UPDATE crmii.tkhxx a SET a.cfkhlx=4
  WHERE a.yyb IN(888,999,7071,7074,8801,8812,9001,9002,9003,9906,9907,17001,17010,8096);
  
  -- mod by ken 20180205 ��������09������ֵ�ʲ�
  
  execute immediate 'TRUNCATE table crmii.T_FZZC_XY';
  INSERT INTO CRMII.T_FZZC_XY(USER_CODE,FZZC_XY,FZZC_XYZC,FZZC_XYFZ)
  SELECT USER_CODE,FZZC_XY,FZZC_XYZC,FZZC_XYFZ FROM STATS.K_FZZC_XY_MONTHS_NOW@DWDB; 
  COMMIT;
  
  --chenjianbo 20180205 ���������Ŀͻ������Ϊ���ڿͻ���������3���е�����
  --��һ���Գ�ʼ�������׼��ֵ��(tjrq_dzkh=20180101),��ֵ��������tjzjzl_dzkh_2017
  --��һ���Գ�ʼ��20180101-20180202�����Ĵ��ڿͻ���update crmii.tcfkhgl a set tjrq_dzkh=20180202,sfdzkh=1,jzjzl_dzkh=0 where exists (select 1 from crmii.tkhxx b where a.khh=b.id and b.khrq>=20180101 and b.cfkhlx=2); 
  update crmii.tcfkhgl a set tjrq_dzkh=I_RQ,sfdzkh=1,jzjzl_dzkh=0
  where exists (select 1 from crmii.tkhxx b where a.khh=b.id and b.khrq=I_RQ and b.cfkhlx=2); 
  commit;

  CRMII.PRO_WRITELOG(2,
                     V_NAME,
                     V_PROC,
                     0,
                     'ִ�гɹ�',
                     NULL,
                     TRUNC((SYSDATE - V_DATETIME) * 1440.00 * 60));
  O_RESULT := 1;
  O_NOTE   := '�ɹ�';
  COMMIT;
EXCEPTION
  WHEN OTHERS THEN
    O_RESULT := -1;
    O_NOTE   := SQLERRM;
    ROLLBACK;
    CRMII.PRO_WRITELOG(2, V_NAME, V_PROC, 2, O_NOTE);
END;