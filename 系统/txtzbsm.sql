drop table txtzbsm_170918
select * from txtzbsm_170925
create table txtzbsm_170925 as select * from txtzbsm order by cddm,zblb,zbdm

select * from tzblbsx order by zblb

select * from txtzbsm order by cddm,zblb,zbdm
select * from txtzbsm where zblb like '%19%' order by cddm,zblb,zbdm

update txtzbsm set zblb='11�ͻ�����' where zblb='11����'
update txtzbsm set zblb='12�ͻ��ʲ�' where zblb='12�ʲ�'
update txtzbsm set zblb='13�ͻ�����' where zblb='13����'
update txtzbsm set zblb='16�ͻ����ϻ�' where zblb='16���ϻ�'

commit

update 

select * from txtzbsm_170918
