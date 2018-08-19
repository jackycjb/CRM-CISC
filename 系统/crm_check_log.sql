 -- 采集，dw to crm
SELECT * FROM PUB_SYS.T_PROC_LOG T 
  WHERE T.Tjrq=DSC_CFG.F_GET_JYR_DATE(to_char(sysdate,'yyyymmdd'),-1) and ret_code<>0 -- ret_code>0表示有错误
    and proc_no in (select proc_no from PUB_SYS.T_SRC_ETL_JOB_STATUS)
  ORDER BY T.BEGIN_TIME DESC  

 -- ETL数据清洗
select * from  PUB_SYS.T_ETL_PROC_MANAGE where is_valid=1 and exec_flag=2 --还在执行的ETL过程
  and exec_tjrq=DSC_CFG.F_GET_JYR_DATE(to_char(sysdate,'yyyymmdd'),-1) 


 -- 中投个性数据采集日志，proc = 50-80 -> 1-29 -> 18 -> 30-36
select * from  his.test_para9 where to_char(sj,'yyyymmdd')=to_char(sysdate,'yyyymmdd') order by sj desc

 -- 通用日志记录
select * from TLOGMSG where rq=to_char(sysdate,'yyyymmdd') and errtype<>0 and instr(cmd,'SERVICES')=0 order by time desc -- 日常检查，由PRO_WRITELOG产生, his的也在此处
SELECT * FROM TLOGMSG where rq>20180801 and cmd like '%PRO_KHTZ_ZHSX%' order by rq desc  --某个过程的历史执行情况

SELECT * FROM PUB_SYS.T_PROC_LOG T 
  WHERE T.Tjrq=DSC_CFG.F_GET_JYR_DATE(to_char(sysdate,'yyyymmdd'),-1) and ret_code<>0
  ORDER BY T.BEGIN_TIME DESC   -- 日常检查：ret_code<>0表示有错误或仍在执行
SELECT * FROM PUB_SYS.T_PROC_LOG where tjrq>20180801 and proc_name like '%PRO_KHTZ_MAIN%' order by tjrq desc  --某个过程的历史执行情况

 -- 每日计算业绩指标，his.test_para9.proc=29
select * from crm_xc.TLOGMSG where rq=to_char(sysdate,'yyyymmdd') and errtype<>0 order by time desc --日常检查，错误部分，由crm_xc.PRO_WRITELOG产生
select * from crm_xc.TDATAJOB where no between 200 and 300 order by no --任务执行清单，客户专员绩效
select * from crm_xc.TDATAJOB where no between 700 and 800 order by no --任务执行清单，互联网投顾绩效

 -- 实时采集日志
select * from  PUB_TEST.T_SRC_PROC_MANAGE_REAL order by proc_no  --清单定义：数据仓库->CRM源层
select * from PUB_SYS.T_REAL_MANAGE order by real_no  --清单定义： CRM源层->CRM应用层
select * from pub_sys.t_real_log where tjrq=to_char(sysdate,'yyyymmdd') order by real_log_id desc --日志清单
select * from pub_sys.t_real_log where ret_code<>0 and tjrq=to_char(sysdate,'yyyymmdd') order by real_log_id desc --日志错误部分
select * from pub_sys.t_real_log where real_no=101040 and tjrq=to_char(sysdate,'yyyymmdd') order by real_log_id desc -- 单项日志
select * from PUB_SYS.T_REAL_LOG_ADV WHERE TJRQ = to_char(sysdate,'yyyymmdd') /* and REAL_NO = 101040 */ order by real_no; -- 时间过滤记录
