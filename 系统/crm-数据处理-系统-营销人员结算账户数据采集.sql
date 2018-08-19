CREATE OR REPLACE PROCEDURE CRM_XC.PRO_SJCJ_JSZH_YX
(o_result out number,
o_noteoutvarchar2,
i_yybinnumber,
 i_rq    in  number 
)
is
/*
20130711  肖洁 增加判断部门类别是否区分的配置信息，默认不区分
20130705  肖洁 tryjszh表增加khdx，采集做相应修改
20130607  肖洁  将tjjrjszh采集改成从tryjszh采集
20120521谢淑仁修正归档TRYXX_JSZH_LS限制营业部条件错误
20110504谢淑仁从CRM数据库采集营销人员结算账户数据
营销人员结算账户数据从CRMII.TJJRJSZH进行增量（按开户日期和销户日期）采集
服务人员结算账户数据自动生成
采集前先将数据归档到历史表
20170921  wujun   取消删除不在tryxx表中人员的结算账号，避免产生本月转为非IC而计算上月时找不到结算账号问题                  
*/
v_tablenamevarchar2(50):='TRYXX_JSZH_YX';
v_count      number(8):=0;
v_name      varchar2(60):='采集营销人员结算账户数据';
v_datetime  date:=sysdate;
v_proc      varchar2(60):='PRO_SJCJ_JSZH_YX' ;
v_ksrqnumber(8):=floor(i_rq/100)*100+1;
v_jsrq      number(8):=to_char(last_day(to_date(i_rq,'yyyymmdd')),'yyyymmdd');
v_syc        number(8):=to_char(add_months(to_date(i_rq,'yyyymmdd'),-1),'yyyymm')||'01';--上月初
v_yfnumber(6):=to_char(add_months(to_date(i_rq,'yyyymmdd'),-1),'yyyymm');--上月份
v_xcsjsxfa  number(8);
v_id        number(16);
v_bmlbpz    number(4);
begin
    o_result := 1;
    select nvl(max(QZ),0) into v_xcsjsxfa from TXTCS_YYB where YYB=1 and CSDM='XCSJSXFA';
    if(v_xcsjsxfa=1) then --薪酬更新数据当月生效,只能采集一次
        select count(1) into v_count from dual
        where exists(select 1 from TSJCJJL where (YYB=i_yyb or YYB=1) and STATUS=1 and YF=v_yf and TABLENAME=v_tablename);
        if(v_count>0) then
            o_result:=1;
            o_note:='数据已采集过';
            return;
        end if;
    end if;
    begin
        select NAME into v_name from tDATAJOB where PROC=v_proc;
    Exception when others then
        o_result := 0;
    end;
    select count(1) into v_count from dual
    where exists(select 1 from TRYXX_JSZH_LS where BMLB=1 and (YYB=i_yyb or i_yyb=1) and YF=v_yf);
    if(v_count=0) then --上月数据未归档，需要进行归档
insert into TRYXX_JSZH_LS(JSZH_ID,RYID,BMLB,JSRY,JSZH,XCYE,CBJYE,DYZCJE,XCJSXH,ZHSX,ZHZT,KHRQ,XHRQ,YYB,YF,GDRQ)
        select   ID,RYID,BMLB,JSRY,JSZH,XCYE,CBJYE,DYZCJE,XCJSXH,ZHSX,ZHZT,KHRQ,XHRQ,YYB,v_yf,to_char(sysdate,'yyyymm')
        from TRYXX_JSZH where BMLB=1 and (YYB=i_yyb or i_yyb=1);
    end if;
      v_count:=0;
      select SEQ_SJCJJL.NEXTVAL into v_id from dual;
      insert into TSJCJJL(ID,YF,TABLENAME,YYB,CJSJ,STATUS,MSG,ROWSCOUNT,YS)
      values(v_id,v_yf,v_tablename,i_yyb,sysdate,0,null,0,0);
      
      --获取部门类别是否区分的配置信息，默认不区分
      begin
          select qz into v_bmlbpz from TXTCS_YYB where csdm = 'BMLBSFQF' and yyb = 1;
      Exception when others then
          v_bmlbpz := 0;
      end;
      
      --不区分部门类别，bmlb字段默认为1，全部采集
      if(v_bmlbpz<1) then   
         if(i_yyb=1) then 
             
             insert into TRYXX_JSZH(ID,RYID,BMLB,JSRY,JSZH,XCYE,CBJYE,DYZCJE,XCJSXH,ZHSX,ZHZT,KHRQ,XHRQ,YYB)
             select a.ID,a.RYXX,1,a.khdx,a.JSZH,a.XCYE,a.CBJYE,a.DYZCJE,0 XCJSXH,a.ZHSX,a.ZHZT,a.KHRQ,a.XHRQ,a.YYB
             from TRYJSZH@db_crm a 
             where not exists(select 1 from TRYXX_JSZH c where a.id=c.id);
             
             v_count:=v_count+sql%rowcount;
             update TRYXX_JSZH a set (RYID,JSRY,ZHZT,XHRQ)=(select ID,JSRY,ZHZT,XHRQ from TRYXX b where a.JSRY=b.JSRY)
             where exists(select 1 from TRYXX b where a.JSRY=b.JSRY) and a.BMLB=1;
             commit;
             
         else 
             insert into TRYXX_JSZH(ID,RYID,BMLB,JSRY,JSZH,XCYE,CBJYE,DYZCJE,XCJSXH,ZHSX,ZHZT,KHRQ,XHRQ,YYB)
             select a.ID,a.RYXX,1,a.khdx,a.JSZH,a.XCYE,a.CBJYE,a.DYZCJE,0 XCJSXH,a.ZHSX,a.ZHZT,a.KHRQ,a.XHRQ,a.YYB
             from TRYJSZH@db_crm a 
             where not exists(select 1 from TRYXX_JSZH c where a.id=c.id)
             and a.YYB=i_yyb;
              
             v_count:=v_count+sql%rowcount;
              
             update TRYXX_JSZH a set (RYID,JSRY,ZHZT,XHRQ)=(select ID,JSRY,ZHZT,XHRQ from TRYXX b where a.JSRY=b.JSRY)
             where exists(select 1 from TRYXX b where a.JSRY=b.JSRY) and a.BMLB=1;
             commit;
         end if;
        
      else
        
        if(i_yyb=1) then 
             /*
             --全采集营销人员结算账户
             delete TRYXX_JSZH where BMLB=1 ;
             insert into TRYXX_JSZH(ID,RYID,BMLB,JSRY,JSZH,XCYE,CBJYE,DYZCJE,XCJSXH,ZHSX,ZHZT,KHRQ,XHRQ,YYB)
             select a.ID,a.RYXX,1,x.id,a.JSZH,a.XCYE,a.CBJYE,a.DYZCJE,0 XCJSXH,a.ZHSX,a.ZHZT,a.KHRQ,a.XHRQ,a.YYB
             from TRYJSZH@db_crm a ,tryjbxx@db_crm x,tryflbm@db_crm b 
             where x.ryxx=a.ryxx and x.ryfl=b.id and b.ywxl=1 and x.zt=0;
            */
             
             insert into TRYXX_JSZH(ID,RYID,BMLB,JSRY,JSZH,XCYE,CBJYE,DYZCJE,XCJSXH,ZHSX,ZHZT,KHRQ,XHRQ,YYB)
             select a.ID,a.RYXX,1,a.khdx,a.JSZH,a.XCYE,a.CBJYE,a.DYZCJE,0 XCJSXH,a.ZHSX,a.ZHZT,a.KHRQ,a.XHRQ,a.YYB
             from TRYJSZH@db_crm a,tryjbxx@db_crm x,tryflbm@db_crm b 
             where x.id=a.khdx and x.ryfl=b.id and b.ywxl=1  
             and not exists(select 1 from TRYXX_JSZH c where a.id=c.id);
             
             v_count:=v_count+sql%rowcount;
             update TRYXX_JSZH a set (RYID,JSRY,ZHZT,XHRQ)=(select ID,JSRY,ZHZT,XHRQ from TRYXX b where a.JSRY=b.JSRY)
             where exists(select 1 from TRYXX b where a.JSRY=b.JSRY) and a.BMLB=1;
             commit;
             
        else 
             /*
             --全采集营销人员结算账户
             delete TRYXX_JSZH where BMLB=1  and YYB=i_yyb;
             insert into TRYXX_JSZH(ID,RYID,BMLB,JSRY,JSZH,XCYE,CBJYE,DYZCJE,XCJSXH,ZHSX,ZHZT,KHRQ,XHRQ,YYB)
             select a.ID,a.RYXX,1,x.id,a.JSZH,a.XCYE,a.CBJYE,a.DYZCJE,0 XCJSXH,a.ZHSX,a.ZHZT,a.KHRQ,a.XHRQ,a.YYB
             from TRYJSZH@db_crm a , tryjbxx@db_crm x,tryflbm@db_crm b 
             where x.ryxx=a.ryxx and x.ryfl=b.id and b.ywxl=1 and x.zt=0 
               and  a.YYB=i_yyb;
             */
             insert into TRYXX_JSZH(ID,RYID,BMLB,JSRY,JSZH,XCYE,CBJYE,DYZCJE,XCJSXH,ZHSX,ZHZT,KHRQ,XHRQ,YYB)
             select a.ID,a.RYXX,1,a.khdx,a.JSZH,a.XCYE,a.CBJYE,a.DYZCJE,0 XCJSXH,a.ZHSX,a.ZHZT,a.KHRQ,a.XHRQ,a.YYB
             from TRYJSZH@db_crm a , tryjbxx@db_crm x,tryflbm@db_crm b 
             where a.khdx=x.id and x.ryfl=b.id and b.ywxl=1 
             and not exists(select 1 from TRYXX_JSZH c where a.id=c.id)
             and a.YYB=i_yyb;
              
             v_count:=v_count+sql%rowcount;
              
             update TRYXX_JSZH a set (RYID,JSRY,ZHZT,XHRQ)=(select ID,JSRY,ZHZT,XHRQ from TRYXX b where a.JSRY=b.JSRY)
             where exists(select 1 from TRYXX b where a.JSRY=b.JSRY) and a.BMLB=1;
             commit;
        end if;
      end if;
         
      --修正结算账户的状态与人员状态不一致
      update tryxx_jszh a set zhzt=(select zhzt from tryxx b where a.zhzt!=b.zhzt  and b.zhzt!=0 and a.bmlb=b.bmlb and a.jsry=b.jsry and a.bmlb=1  )
      where exists(select zhzt from tryxx b where a.zhzt!=b.zhzt and b.zhzt!=0 and a.bmlb=b.bmlb and a.jsry=b.jsry and a.bmlb=1) and (a.yyb=i_yyb or i_yyb=1);
      /*DELETE TRYXX_JSZH a WHERE NOT EXISTS(SELECT 1 from tryxx b WHERE a.ryid=b.id) AND (a.yyb=i_yyb OR i_yyb=1);*/
      update TSJCJJL set ROWSCOUNT=v_count,YS=trunc((sysdate-v_datetime)*1440.00*60),STATUS=1 where ID=v_id;
      PRO_WRITELOG(2,v_name,v_proc||'(o_result)',0,'执行成功['||v_count||'],用时'||trunc((sysdate-v_datetime)*1440.00*60)||'秒',v_count,trunc((sysdate-v_datetime)*1440.00*60));
      o_result := 1;
      o_note:='成功';
      commit;
    Exception when others then
          o_result :=-1;
          o_note:=SUBSTR(DBMS_UTILITY.FORMAT_ERROR_BACKTRACE,1,1000)||SQLERRM;
          ROLLBACK;
          update TSJCJJL set YS=trunc((sysdate-v_datetime)*1440.00*60),STATUS=-1,MSG=o_note
          where ID=v_id;
          PRO_WRITELOG(2,v_name,v_proc||'(o_result)',2,o_note);
 
end PRO_SJCJ_JSZH_YX;
 