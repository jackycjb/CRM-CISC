drop table txtzbsm_170918
select * from txtzbsm_170925
create table txtzbsm_170925 as select * from txtzbsm order by cddm,zblb,zbdm

select * from tzblbsx order by zblb

select * from txtzbsm order by cddm,zblb,zbdm
select * from txtzbsm where zblb like '%19%' order by cddm,zblb,zbdm

update txtzbsm set zblb='11客户基础' where zblb='11基础'
update txtzbsm set zblb='12客户资产' where zblb='12资产'
update txtzbsm set zblb='13客户交易' where zblb='13交易'
update txtzbsm set zblb='16客户线上化' where zblb='16线上化'

commit

update 

select * from txtzbsm_170918
