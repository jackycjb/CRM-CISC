declare
o_result number;
o_note varchar2(2000);

begin
CRM_XC.PRO_SJCJ_JSZH_YX(o_result,o_note,1,20180110);

end;

/*
             select a.ID,a.RYXX,1,a.khdx,a.JSZH,a.XCYE,a.CBJYE,a.DYZCJE,0 XCJSXH,a.ZHSX,a.ZHZT,a.KHRQ,a.XHRQ,a.YYB
             from TRYJSZH@db_crm a,tryjbxx@db_crm x,tryflbm@db_crm b 
             where x.id=a.khdx and x.ryfl=b.id and b.ywxl=1  
             and not exists(select 1 from crm_xc.TRYXX_JSZH c where a.id=c.id)
*/            
