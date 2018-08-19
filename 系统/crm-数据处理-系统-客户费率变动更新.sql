CREATE OR REPLACE PROCEDURE HIS.PRO_JS_KHYJFL(O_RETCODE OUT NUMBER,
                                          O_RETNODE OUT VARCHAR2,
                                          I_KSRQ    IN NUMBER,
                                          I_JSRQ    IN NUMBER,
                                          I_REDO    IN NUMBER) IS
    /* ----------------------------------------------------------------------- 
    
     项目名称：   BSS
     过程名称:    PRO_JS_KHYJFL
     功能简述：   客户费率变动更新       
     业务逻辑：
          20120814 周伟强  将数据移入HIS.tkhyjfl_ls表时,值与字段对应有错
          20120306  郭富强     将历史佣金率数据保留在HIS.tkhyjfl_ls里
          20111213 叶金鹏　HIS.tkhyjfl数据由原ETL采集任务产生数据改为直接通过本过程进行计算得出
                           将本过程从CRMII移到DCUSER用户下。
          
          20111128 cyx 排除已经签约客户的计算
          20111123 cyx 由HIS.tkhyjfl_ls变更为tkhyjlbgb
          20110816 cyx 客户费率变动更新      
    
     修改记录;
     ------------------------------------------------------------------------
     操作人           操作时间       版本            操作
       wukm          20130625       v.4.0.1          新增   
       LIWEI         2016/11/08                      修改：记录日志
    -----------------------------------------------------------------------*/
    V_STARTTIME DATE := SYSDATE;
    V_SQLCOUNT  NUMBER := 0;
    VS_PROC_NAME VARCHAR2(100) := $$PLSQL_UNIT;
    VN_LOGID     INT; --LOG 表记录ID
    VN_PROC_NO   PUB_SYS.T_ETL_PROC_MANAGE.PROC_NO%TYPE;
    VS_USER      VARCHAR2(30);
    VN_TJRQ      NUMBER(8) := I_KSRQ; --统计日期
BEGIN
    --变量初始化
    VS_USER := 'HIS';
    SELECT PUB_SYS.SEQ_T_PROC_LOG.NEXTVAL INTO VN_LOGID FROM DUAL; --日志序列号
    --获取ETL过程的编号
    VN_PROC_NO := PUB_SYS.F_GET_PROC_NO(I_S_OWNER     => VS_USER,
                                        I_S_PROC_NAME => VS_PROC_NAME);
    --记录日志——开始
    PUB_SYS.P_LOG_PROC(I_N_PROCNO         => VN_PROC_NO,
                       I_N_LOGID          => VN_LOGID,
                       I_S_USER           => VS_USER,
                       I_S_PROCNAME       => VS_PROC_NAME,
                       I_N_TJRQ           => VN_TJRQ,
                       I_N_RETCODE        => 1,
                       I_S_RETNOTE        => '正在运行！',
                       I_S_FLAG           => I_REDO,
                       I_N_INSERTORUPDATE => 0);
    
    O_RETCODE := 1;
    O_RETNODE := '执行成功';
    --20111213通过交割明细计算A股平均佣金率，扣除毛佣金小等于5元的记录
    --20120306 增加生成日期字段
    EXECUTE IMMEDIATE 'truncate table HIS.tkhyjfl';
    INSERT INTO HIS.TKHYJFL
        (KHH, FL, RQ)
        SELECT KHH, TO_CHAR(NVL(SUM(S1) / SUM(CJJE), 0.0000)) FL, I_JSRQ
        --to_char(sysdate,'YYYYMMDD')
          FROM HIS.TJGMXLS
         WHERE CJRQ BETWEEN I_KSRQ AND I_JSRQ
           AND S1 > 5
           AND JYS IN (1, 2)
         GROUP BY KHH;
    -- 新开户
    INSERT INTO HIS.TKHYJFL_LS
        (KHH, FL1, FL2, BDRQ)
        SELECT B.KHH, B.FL, B.FL, I_JSRQ
          FROM HIS.TKHYJFL B
         WHERE NOT EXISTS (SELECT 1 FROM HIS.TKHYJFL_LS A WHERE A.KHH = B.KHH);
    V_SQLCOUNT := SQL%ROWCOUNT;
    -- 费率发生变动, 改成存储在HIS.tkhyjfl_ls
    INSERT INTO HIS.TKHYJFL_LS
        (KHH, FL1, FL2, BDRQ)
        SELECT A.KHH,
               B.FL2,
               CASE
                   WHEN ABS(B.FL2 - A.FL) < 0.0001 THEN
                    B.FL2
                   ELSE
                    A.FL
               END XYJL,
               I_JSRQ BDRQ
          FROM HIS.TKHYJFL A,
               HIS.TKHYJFL_LS B,
               (SELECT KHH, MAX(BDRQ) BDRQ FROM HIS.TKHYJFL_LS GROUP BY KHH) C
         WHERE A.KHH = B.KHH
           AND B.KHH = C.KHH
           AND B.BDRQ = C.BDRQ
           AND A.FL <> B.FL2
           AND ABS(B.FL2 - A.FL) >= 0.0001;
    /* insert into HIS.tkhyjfl_ls
    select a.yyb, a.khh, b.fl2, case when abs(b.fl2-a.fl)<0.0001 then b.fl2 else a.fl end fl1, i_bdrq bdrq, '' sm
    from HIS.tkhyjfl a, HIS.tkhyjfl_ls b,(select khh,max(bdrq) bdrq from HIS.tkhyjfl_ls group by khh) c
    where a.khh = b.khh and b.khh = c.khh and b.bdrq = c.bdrq and a.fl <> b.fl2 and abs(b.fl2-a.fl)>=0.0001 ;*/
    V_SQLCOUNT := SQL%ROWCOUNT;
    CRMII.PRO_WRITELOG(2,
                      '客户费率历史更新记录',
                      'pro_update_khfl()',
                      0,
                      '运行完成,用时' || TRUNC((SYSDATE - V_STARTTIME) * 1440.00 * 60) || '秒' ||
                      ',日期:' || TO_CHAR(SYSDATE, 'yyyyMMdd'));
    COMMIT;
    
  --记录日志——成功结束
  PUB_SYS.P_LOG_PROC(I_N_PROCNO         => VN_PROC_NO,
                     I_N_LOGID          => VN_LOGID,
                     I_S_USER           => VS_USER,
                     I_S_PROCNAME       => VS_PROC_NAME,
                     I_N_TJRQ           => VN_TJRQ,
                     I_N_RETCODE        => 0,
                     I_S_RETNOTE        => '成功',
                     I_S_FLAG           => I_REDO,
                     I_N_INSERTORUPDATE => 1);
    
EXCEPTION
    WHEN OTHERS THEN
        BEGIN
            O_RETNODE := SQLERRM;
            O_RETCODE := -1;
            ROLLBACK;
            --记录日志——失败结束
            PUB_SYS.P_LOG_PROC(I_N_PROCNO         => VN_PROC_NO,
                               I_N_LOGID          => VN_LOGID,
                               I_S_USER           => VS_USER,
                               I_S_PROCNAME       => VS_PROC_NAME,
                               I_N_TJRQ           => VN_TJRQ,
                               I_N_RETCODE        => O_RETCODE,
                               I_S_RETNOTE        => O_RETNODE,
                               I_S_FLAG           => I_REDO,
                               I_N_INSERTORUPDATE => 1);
            
        END;
END PRO_JS_KHYJFL;