select * from txtzbsm where cdmc like '%自选%' order by cddm,zblb,zbdm 
//01010001
update txtzbsm set cddm=lpad(cddm+20000,8,'0') where id=44
update txtzbsm set cddm='01010001' where id=44

select * from txtzbsm where id=44

update txtzbsm set cddm=lpad(cddm+20000,8,'0') where cdmc like '%自选%'
commit

create table txtzbsm_bak_171027 as select * from txtzbsm

--select * from txtzbsm where zblb like '82%' and zbdm in (1111,1113) and cddm<>'00000000'
insert into txtzbsm 
select FUNC_NEXTID('txtzbsm'),'82020301','绩效-参数设置-薪酬参数设置-薪酬代码信息','82绩效参数',
a.xcdm,a.xcmc,b.gsms,null,null
from CRM_XC.TXCDM a,CRM_XC.TXCDMGSDY b 
where a.xcdm=b.xcdm and a.qyzt=1 and a.xcdm not in (101,1001) order by 1
commit

select a.xcdm,a.xcmc,b.gsms from CRM_XC.TXCDM a,CRM_XC.TXCDMGSDY b where a.xcdm=b.xcdm and a.xcdm not in (101,1001) order by 1
82020301 绩效-参数设置-薪酬参数设置-薪酬代码信息 82绩效参数
