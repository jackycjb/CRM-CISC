 -- �ɼ���dw to crm
SELECT * FROM PUB_SYS.T_PROC_LOG T 
  WHERE T.Tjrq=DSC_CFG.F_GET_JYR_DATE(to_char(sysdate,'yyyymmdd'),-1) and ret_code<>0 -- ret_code>0��ʾ�д���
    and proc_no in (select proc_no from PUB_SYS.T_SRC_ETL_JOB_STATUS)
  ORDER BY T.BEGIN_TIME DESC  

 -- ETL������ϴ
select * from  PUB_SYS.T_ETL_PROC_MANAGE where is_valid=1 and exec_flag=2 --����ִ�е�ETL����
  and exec_tjrq=DSC_CFG.F_GET_JYR_DATE(to_char(sysdate,'yyyymmdd'),-1) 


 -- ��Ͷ�������ݲɼ���־��proc = 50-80 -> 1-29 -> 18 -> 30-36
select * from  his.test_para9 where to_char(sj,'yyyymmdd')=to_char(sysdate,'yyyymmdd') order by sj desc

 -- ͨ����־��¼
select * from TLOGMSG where rq=to_char(sysdate,'yyyymmdd') and errtype<>0 and instr(cmd,'SERVICES')=0 order by time desc -- �ճ���飬��PRO_WRITELOG����, his��Ҳ�ڴ˴�
SELECT * FROM TLOGMSG where rq>20180801 and cmd like '%PRO_KHTZ_ZHSX%' order by rq desc  --ĳ�����̵���ʷִ�����

SELECT * FROM PUB_SYS.T_PROC_LOG T 
  WHERE T.Tjrq=DSC_CFG.F_GET_JYR_DATE(to_char(sysdate,'yyyymmdd'),-1) and ret_code<>0
  ORDER BY T.BEGIN_TIME DESC   -- �ճ���飺ret_code<>0��ʾ�д��������ִ��
SELECT * FROM PUB_SYS.T_PROC_LOG where tjrq>20180801 and proc_name like '%PRO_KHTZ_MAIN%' order by tjrq desc  --ĳ�����̵���ʷִ�����

 -- ÿ�ռ���ҵ��ָ�꣬his.test_para9.proc=29
select * from crm_xc.TLOGMSG where rq=to_char(sysdate,'yyyymmdd') and errtype<>0 order by time desc --�ճ���飬���󲿷֣���crm_xc.PRO_WRITELOG����
select * from crm_xc.TDATAJOB where no between 200 and 300 order by no --����ִ���嵥���ͻ�רԱ��Ч
select * from crm_xc.TDATAJOB where no between 700 and 800 order by no --����ִ���嵥��������Ͷ�˼�Ч

 -- ʵʱ�ɼ���־
select * from  PUB_TEST.T_SRC_PROC_MANAGE_REAL order by proc_no  --�嵥���壺���ݲֿ�->CRMԴ��
select * from PUB_SYS.T_REAL_MANAGE order by real_no  --�嵥���壺 CRMԴ��->CRMӦ�ò�
select * from pub_sys.t_real_log where tjrq=to_char(sysdate,'yyyymmdd') order by real_log_id desc --��־�嵥
select * from pub_sys.t_real_log where ret_code<>0 and tjrq=to_char(sysdate,'yyyymmdd') order by real_log_id desc --��־���󲿷�
select * from pub_sys.t_real_log where real_no=101040 and tjrq=to_char(sysdate,'yyyymmdd') order by real_log_id desc -- ������־
select * from PUB_SYS.T_REAL_LOG_ADV WHERE TJRQ = to_char(sysdate,'yyyymmdd') /* and REAL_NO = 101040 */ order by real_no; -- ʱ����˼�¼
