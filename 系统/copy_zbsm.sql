select * from txtzbsm where cddm='00000012'order by zbdm
create table txtzbsm_20170927 as select * from txtzbsm order by cddm,zblb,zbdm

insert into txtzbsm (id,cddm,cdmc,zhlx,zblb,zbdm,zbmc,zbsm) select  func_nextid('TXTZBSM'),'00000011' as cddm,'全局' as cdmc,1,zblb,zbdm,zbmc,zbsm from txtzbsm where cddm='00000012'
insert into txtzbsm (id,cddm,cdmc,zhlx,zblb,zbdm,zbmc,zbsm) select  func_nextid('TXTZBSM'),'00000010' as cddm,'全局' as cdmc,0,zblb,zbdm,zbmc,zbsm from txtzbsm where cddm='00000012'

select * from txtzbsm where cddm='00000011'

delete txtzbsm where cddm='00000010'
delete txtzbsm where cddm='00000011'
commit


insert into txtzbsm_temp (cddm,cdmc,zhlx,zblb,zbdm,zbmc,zbsm) select '00000010' as cddm,'全局' as cdmc,0,zblb,zbdm,zbmc,zbsm from txtzbsm where cddm='00000012' and zbdm='0201'

select * from txtzbsm order by id
commit
