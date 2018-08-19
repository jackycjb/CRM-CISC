CREATE OR REPLACE PROCEDURE HIS.PRO_KHTZ_MAIN(O_N_CODE OUT INT,
                                          O_S_NOTE OUT VARCHAR2,
                                          I_N_TJRQ IN NUMBER,
                                          I_N_REDO IN NUMBER DEFAULT 1) IS
    /*-----------------------------------------------------------------------
         项目名称：   CRMII4.0
         用户名  ：   HIS
         过程名称：   客户特征-数据处理主过程
         功能简述：   客户特征-数据处理主过程
         参数：
                  英文名称            中文名称                可能取值
                  O_N_CODE            返回代码                0 正常；-1 异常
                  O_S_NOTE            返回信息                字符串信息
                  I_N_TJRQ            统计日期
                  I_N_REDO            0：不重做    1：重做
        返回：
         算法：
         注意事项：
         数据源：
         修改记录;
         ------------------------------------------------------------------------
         操作人      操作时间                   操作
         吴邦杰      2014/06/12                 创建
         Weitq       2017/03/15                   新增：套牢客户、高资产、高交易量、高佣金、单位资产高佣金
    */
    VS_PROC_NAME VARCHAR2(100) := $$PLSQL_UNIT; --过程名
    VN_LOGID     INT; --LOG 表记录ID
    VN_STEP      INT; --动作步数
    VN_TJRQ      NUMBER(8) := I_N_TJRQ; --统计日期
    VN_PROC_NO   PUB_SYS.T_ETL_PROC_MANAGE.PROC_NO%TYPE;
    VS_USER      VARCHAR2(30);
BEGIN
    --变量初始化
    O_N_CODE := PUB_SYS.PKG_GCONST.PROCRUNRESULTSUCCESSFUL; --初始化运行成功
    O_S_NOTE := '运行正常';
    VS_USER  := 'HIS';
    SELECT PUB_SYS.SEQ_T_PROC_LOG.NEXTVAL INTO VN_LOGID FROM DUAL; --日志序列号
    --获取ETL过程的编号
    VN_PROC_NO := PUB_SYS.F_GET_PROC_NO(I_S_OWNER     => VS_USER,
                                        I_S_PROC_NAME => VS_PROC_NAME);
    VN_STEP    := 0;
    --过程开始
    --记录日志——开始
    PUB_SYS.P_LOG_PROC(I_N_PROCNO         => VN_PROC_NO,
                       I_N_LOGID          => VN_LOGID,
                       I_S_USER           => VS_USER,
                       I_S_PROCNAME       => VS_PROC_NAME,
                       I_N_TJRQ           => VN_TJRQ,
                       I_N_RETCODE        => 1,
                       I_S_RETNOTE        => '正在运行！',
                       I_S_FLAG           => I_N_REDO,
                       I_N_INSERTORUPDATE => 0);
    --1.1：调度消息推送过程：PRO_XY_XXTZ_CKTZRQFZ（客户特征_周转率）
    VN_STEP := VN_STEP + 1;
    --记录日志明细——开始
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '调度消息推送过程：PRO_KHTZ_ZZL（客户特征_周转率）！',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '正在运行！',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    HIS.PRO_KHTZ_ZZL(O_RETCODE => O_N_CODE,
                     O_RETNOTE => O_S_NOTE,
                     I_RQ      => I_N_TJRQ,
                     I_REDO    => I_N_REDO); --1重做
    --记录日志明细——结束
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '调度消息推送过程：PRO_KHTZ_ZZL（客户特征_周转率）！',
                              I_S_CHANGEDESC     => '运行正常',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);
    --1.2：调度消息推送过程：PRO_KHTZ_ZHYK（客户特征_帐户盈亏）
    VN_STEP := VN_STEP + 1;
    --记录日志明细——开始
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '调度消息推送过程：PRO_KHTZ_ZHYK（客户特征_帐户盈亏）！',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '正在运行！',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    HIS.PRO_KHTZ_ZHYK(O_RETCODE => O_N_CODE,
                      O_RETNOTE => O_S_NOTE,
                      I_RQ      => I_N_TJRQ,
                      I_REDO    => I_N_REDO); --1重做
    --记录日志明细——结束
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '调度消息推送过程：PRO_KHTZ_ZHYK（客户特征_帐户盈亏）！',
                              I_S_CHANGEDESC     => '运行正常',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);
    --1.3：调度消息推送过程：PRO_KHTZ_JYYJL（客户特征_交易佣金率）
    VN_STEP := VN_STEP + 1;
    --记录日志明细——开始
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '调度消息推送过程：PRO_KHTZ_JYYJL（客户特征_交易佣金率）！',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '正在运行！',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    HIS.PRO_KHTZ_JYYJL(O_RETCODE => O_N_CODE,
                       O_RETNOTE => O_S_NOTE,
                       I_RQ      => I_N_TJRQ,
                       I_REDO    => I_N_REDO); --1重做
    --记录日志明细——结束
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '调度消息推送过程：PRO_KHTZ_JYYJL（客户特征_交易佣金率）！',
                              I_S_CHANGEDESC     => '运行正常',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);
    --1.4：调度消息推送过程：PRO_KHTZ_JJPZPH（客户特征_按开放式基金交易风格偏好）
    VN_STEP := VN_STEP + 1;
    --记录日志明细——开始
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '调度消息推送过程：PRO_KHTZ_JJPZPH（客户特征_按开放式基金交易风格偏好）！',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '正在运行！',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    HIS.PRO_KHTZ_JJPZPH(O_RETCODE => O_N_CODE,
                        O_RETNOTE => O_S_NOTE,
                        I_RQ      => I_N_TJRQ,
                        I_REDO    => I_N_REDO); --1重做
    --记录日志明细——结束
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '调度消息推送过程：PRO_KHTZ_JJPZPH（客户特征_按开放式基金交易风格偏好）！',
                              I_S_CHANGEDESC     => '运行正常',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);
    --1.5：调度消息推送过程：PRO_KHTZ_TZPZPH（客户特征_按投资产品偏好）
   /* VN_STEP := VN_STEP + 1;
    --记录日志明细——开始
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '调度消息推送过程：PRO_KHTZ_TZPZPH（客户特征_按投资产品偏好）！',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '正在运行！',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    HIS.PRO_KHTZ_TZPZPH(O_RETCODE => O_N_CODE,
                        O_RETNOTE => O_S_NOTE,
                        I_RQ      => I_N_TJRQ,
                        I_REDO    => I_N_REDO); --1重做
    --记录日志明细——结束
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '调度消息推送过程：PRO_KHTZ_TZPZPH（客户特征_按投资产品偏好）！',
                              I_S_CHANGEDESC     => '运行正常',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);*/
    --1.6：调度消息推送过程：PRO_KHTZ_WTFSPH （客户特征_按交易方式偏好）
    VN_STEP := VN_STEP + 1;
    --记录日志明细——开始
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '调度消息推送过程：PRO_KHTZ_WTFSPH（客户特征_按交易方式偏好）！',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '正在运行！',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    HIS.PRO_KHTZ_WTFSPH(O_RETCODE => O_N_CODE,
                        O_RETNOTE => O_S_NOTE,
                        I_RQ      => I_N_TJRQ,
                        I_REDO    => I_N_REDO); --1重做
    --记录日志明细——结束
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '调度消息推送过程：PRO_KHTZ_WTFSPH（客户特征_按交易方式偏好）！',
                              I_S_CHANGEDESC     => '运行正常',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);
    --1.7：调度消息推送过程：PRO_KHTZ_NL（客户特征_按年龄）
    VN_STEP := VN_STEP + 1;
    --记录日志明细——开始
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '调度消息推送过程：PRO_KHTZ_NL（客户特征_按年龄）！',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '正在运行！',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    HIS.PRO_KHTZ_NL(O_RETCODE => O_N_CODE,
                        O_RETNOTE => O_S_NOTE,
                        I_RQ      => I_N_TJRQ,
                        I_REDO    => I_N_REDO); --1重做
    --记录日志明细——结束
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '调度消息推送过程：PRO_KHTZ_NL（客户特征_按年龄）！',
                              I_S_CHANGEDESC     => '运行正常',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);
    --1.8：调度消息推送过程：PRO_KHTZ_FXCSNL（客户特征_按风险等级）
    VN_STEP := VN_STEP + 1;
    --记录日志明细——开始
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '调度消息推送过程：PRO_KHTZ_FXCSNL（客户特征_按风险等级）！',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '正在运行！',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    HIS.PRO_KHTZ_FXCSNL(O_RETCODE => O_N_CODE,
                        O_RETNOTE => O_S_NOTE,
                        I_RQ      => I_N_TJRQ,
                        I_REDO    => I_N_REDO); --1重做
    --记录日志明细——结束
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '调度消息推送过程：PRO_KHTZ_FXCSNL（客户特征_按风险等级）！',
                              I_S_CHANGEDESC     => '运行正常',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);
   /* --1.9：调度消息推送过程：PRO_KHTZ_HYPH（客户特征_按股票交易行业偏好）
    VN_STEP := VN_STEP + 1;
    --记录日志明细——开始
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '调度消息推送过程：PRO_KHTZ_HYPH（客户特征_按股票交易行业偏好）！',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '正在运行！',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    HIS.PRO_KHTZ_HYPH(O_RETCODE => O_N_CODE,
                      O_RETNOTE => O_S_NOTE,
                      I_RQ      => I_N_TJRQ,
                      I_REDO    => I_N_REDO); --1重做
    --记录日志明细——结束
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '调度消息推送过程：PRO_KHTZ_HYPH（客户特征_按股票交易行业偏好）！',
                              I_S_CHANGEDESC     => '运行正常',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);
    --1.10：调度消息推送过程：PRO_KHTZ_CXKHJB（客户特征_炒新客户级别）
    VN_STEP := VN_STEP + 1;
    --记录日志明细——开始
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '调度消息推送过程：PRO_KHTZ_CXKHJB（客户特征_炒新客户级别）！',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '正在运行！',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    HIS.PRO_KHTZ_CXKHJB(O_RETCODE => O_N_CODE,
                        O_RETNOTE => O_S_NOTE,
                        I_RQ      => I_N_TJRQ,
                        I_REDO    => I_N_REDO); --1重做
    --记录日志明细——结束
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '调度消息推送过程：PRO_KHTZ_CXKHJB（客户特征_炒新客户级别）！',
                              I_S_CHANGEDESC     => '运行正常',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);
    --1.11：调度消息推送过程：PRO_KHTZ_DXKHJB（客户特征_打新级别）
    VN_STEP := VN_STEP + 1;
    --记录日志明细——开始
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '调度消息推送过程：PRO_KHTZ_DXKHJB（客户特征_打新级别）！',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '正在运行！',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    HIS.PRO_KHTZ_DXKHJB(O_RETCODE => O_N_CODE,
                        O_RETNOTE => O_S_NOTE,
                        I_RQ      => I_N_TJRQ,
                        I_REDO    => I_N_REDO); --1重做
    --记录日志明细——结束
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '调度消息推送过程：PRO_KHTZ_DXKHJB（客户特征_打新级别）！',
                              I_S_CHANGEDESC     => '运行正常',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);
    --1.12：调度消息推送过程：PRO_KHTZ_GXZQ（客户特征_按关系周期）
    VN_STEP := VN_STEP + 1;
    --记录日志明细——开始
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '调度消息推送过程：PRO_KHTZ_GXZQ（客户特征_按关系周期）！',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '正在运行！',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    HIS.PRO_KHTZ_GXZQ(O_RETCODE => O_N_CODE,
                      O_RETNOTE => O_S_NOTE,
                      I_RQ      => I_N_TJRQ,
                      I_REDO    => I_N_REDO); --1重做
    --记录日志明细——结束
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '调度消息推送过程：PRO_KHTZ_GXZQ（客户特征_按关系周期）！',
                              I_S_CHANGEDESC     => '运行正常',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);*/
    --1.13：调度消息推送过程：PRO_KHTZ_TLKH（客户特征_套牢客户）
    VN_STEP := VN_STEP + 1;
    --记录日志明细——开始
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '调度消息推送过程：PRO_KHTZ_TLKH（客户特征_套牢客户）！',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '正在运行！',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    HIS.PRO_KHTZ_TLKH(O_RETCODE => O_N_CODE,
                      O_RETNOTE => O_S_NOTE,
                      I_RQ      => I_N_TJRQ,
                      I_REDO    => I_N_REDO); --1重做
    --记录日志明细——结束
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '调度消息推送过程：PRO_KHTZ_TLKH（客户特征_套牢客户）！',
                              I_S_CHANGEDESC     => '运行正常',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);
    --1.14：调度消息推送过程：PRO_KHTZ_GZC（客户特征_高资产）
    VN_STEP := VN_STEP + 1;
    --记录日志明细——开始
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '调度消息推送过程：PRO_KHTZ_GZC（客户特征_高资产）！',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '正在运行！',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    HIS.PRO_KHTZ_GZC(O_RETCODE => O_N_CODE,
                      O_RETNOTE => O_S_NOTE,
                      I_RQ      => I_N_TJRQ,
                      I_REDO    => I_N_REDO); --1重做
    --记录日志明细——结束
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '调度消息推送过程：PRO_KHTZ_GZC（客户特征_高资产）！',
                              I_S_CHANGEDESC     => '运行正常',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);
    --1.15：调度消息推送过程：PRO_KHTZ_GJYL（客户特征_高交易量）
    VN_STEP := VN_STEP + 1;
    --记录日志明细——开始
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '调度消息推送过程：PRO_KHTZ_GJYL（客户特征_高交易量）！',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '正在运行！',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    HIS.PRO_KHTZ_GJYL(O_RETCODE => O_N_CODE,
                      O_RETNOTE => O_S_NOTE,
                      I_RQ      => I_N_TJRQ,
                      I_REDO    => I_N_REDO); --1重做
    --记录日志明细——结束
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '调度消息推送过程：PRO_KHTZ_GJYL（客户特征_高交易量）！',
                              I_S_CHANGEDESC     => '运行正常',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);
    --1.16：调度消息推送过程：PRO_KHTZ_GYJ（客户特征_高佣金）
    VN_STEP := VN_STEP + 1;
    --记录日志明细——开始
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '调度消息推送过程：PRO_KHTZ_GYJ（客户特征_高佣金）！',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '正在运行！',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    HIS.PRO_KHTZ_GYJ(O_RETCODE => O_N_CODE,
                      O_RETNOTE => O_S_NOTE,
                      I_RQ      => I_N_TJRQ,
                      I_REDO    => I_N_REDO); --1重做
    --记录日志明细——结束
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '调度消息推送过程：PRO_KHTZ_GYJ（客户特征_高佣金）！',
                              I_S_CHANGEDESC     => '运行正常',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);
    --1.17：调度消息推送过程：PRO_KHTZ_DWZCGYJ（客户特征_单位资产高佣金）
    VN_STEP := VN_STEP + 1;
    --记录日志明细——开始
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '调度消息推送过程：PRO_KHTZ_DWZCGYJ（客户特征_单位资产高佣金）！',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '正在运行！',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    HIS.PRO_KHTZ_DWZCGYJ(O_RETCODE => O_N_CODE,
                      O_RETNOTE => O_S_NOTE,
                      I_RQ      => I_N_TJRQ,
                      I_REDO    => I_N_REDO); --1重做
    --记录日志明细——结束
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '调度消息推送过程：PRO_KHTZ_DWZCGYJ（客户特征_单位资产高佣金）！',
                              I_S_CHANGEDESC     => '运行正常',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);
     --1.18：调度消息推送过程：PRO_KHTZ_KHFC（客户特征_客户分层）
    VN_STEP := VN_STEP + 1;
    --记录日志明细——开始
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '调度消息推送过程：PRO_KHTZ_KHFC（客户特征_客户分层）！',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '正在运行！',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    HIS.PRO_KHTZ_KHFC(O_RETCODE => O_N_CODE,
                      O_RETNOTE => O_S_NOTE,
                      I_RQ      => I_N_TJRQ,
                      I_REDO    => I_N_REDO); --1重做
    --记录日志明细——结束
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '调度消息推送过程：PRO_KHTZ_KHFC（客户特征_客户分层）！',
                              I_S_CHANGEDESC     => '运行正常',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);
     --1.19：调度消息推送过程：PRO_KHTZ_ICKHFCLB（客户特征_IC客户分成类别）
    VN_STEP := VN_STEP + 1;
    --记录日志明细——开始
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '调度消息推送过程：PRO_KHTZ_ICKHFCLB（客户特征_IC客户分成类别）！',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '正在运行！',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    HIS.PRO_KHTZ_ICKHFCLB(O_RETCODE => O_N_CODE,
                      O_RETNOTE => O_S_NOTE,
                      I_RQ      => I_N_TJRQ,
                      I_REDO    => I_N_REDO); --1重做
    --记录日志明细——结束
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '调度消息推送过程：PRO_KHTZ_ICKHFCLB（客户特征_IC客户分成类别）！',
                              I_S_CHANGEDESC     => '运行正常',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);                          
    
     --1.20：调度消息推送过程：PRO_KHTZ_HGH（客户特征_合格客户）
    VN_STEP := VN_STEP + 1;
    --记录日志明细——开始
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '调度消息推送过程：PRO_KHTZ_HGH（客户特征_合格客户）！',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '正在运行！',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    HIS.PRO_KHTZ_HGH(O_RETCODE => O_N_CODE,
                      O_RETNOTE => O_S_NOTE,
                      I_RQ      => I_N_TJRQ,
                      I_REDO    => I_N_REDO); --1重做
    --记录日志明细——结束
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '调度消息推送过程：PRO_KHTZ_HGH（客户特征_合格客户）！',
                              I_S_CHANGEDESC     => '运行正常',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);
      --1.21：调度消息推送过程：PRO_KHTZ_YXH（客户特征_有效户）
    VN_STEP := VN_STEP + 1;
    --记录日志明细——开始
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '调度消息推送过程：PRO_KHTZ_YXH（客户特征_有效户）！',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '正在运行！',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    HIS.PRO_KHTZ_YXH(O_RETCODE => O_N_CODE,
                      O_RETNOTE => O_S_NOTE,
                      I_RQ      => I_N_TJRQ,
                      I_REDO    => I_N_REDO); --1重做
    --记录日志明细——结束
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '调度消息推送过程：PRO_KHTZ_YXH（客户特征_有效户）！',
                              I_S_CHANGEDESC     => '运行正常',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);
      --1.22：调度消息推送过程：PRO_KHTZ_KHXSHZT_SR（客户特征_客户线上化状态_上日）
    VN_STEP := VN_STEP + 1;
    --记录日志明细——开始
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '调度消息推送过程：PRO_KHTZ_KHXSHZT_SR（客户特征_客户线上化状态_上日）！',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '正在运行！',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    HIS.PRO_KHTZ_KHXSHZT_SR(O_RETCODE => O_N_CODE,
                      O_RETNOTE => O_S_NOTE,
                      I_RQ      => I_N_TJRQ,
                      I_REDO    => I_N_REDO); --1重做
    --记录日志明细——结束
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '调度消息推送过程：PRO_KHTZ_KHXSHZT_SR（客户特征_客户线上化状态_上日）！',
                              I_S_CHANGEDESC     => '运行正常',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);
      --1.23：调度消息推送过程：PRO_KHTZ_KHXSHZT_SYM（客户特征_客户线上化状态_上月末）
    VN_STEP := VN_STEP + 1;
    --记录日志明细——开始
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '调度消息推送过程：PRO_KHTZ_KHXSHZT_SYM（客户特征_客户线上化状态_上月末）！',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '正在运行！',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    HIS.PRO_KHTZ_KHXSHZT_SYM(O_RETCODE => O_N_CODE,
                      O_RETNOTE => O_S_NOTE,
                      I_RQ      => I_N_TJRQ,
                      I_REDO    => I_N_REDO); --1重做
    --记录日志明细——结束
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '调度消息推送过程：PRO_KHTZ_KHXSHZT_SR（客户特征_客户线上化状态_上月末）！',
                              I_S_CHANGEDESC     => '运行正常',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1); 
     --1.24：调度消息推送过程：PRO_KHTZ_KHYWSJLXFS（客户特征_客户有无手机联系方式）
    VN_STEP := VN_STEP + 1;
    --记录日志明细——开始
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '调度消息推送过程：PRO_KHTZ_KHYWSJLXFS（客户特征_客户有无手机联系方式）！',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '正在运行！',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    HIS.PRO_KHTZ_KHYWSJLXFS(O_RETCODE => O_N_CODE,
                      O_RETNOTE => O_S_NOTE,
                      I_RQ      => I_N_TJRQ,
                      I_REDO    => I_N_REDO); --1重做
    --记录日志明细——结束
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '调度消息推送过程：PRO_KHTZ_KHYWSJLXFS（客户特征_客户有无手机联系方式）！',
                              I_S_CHANGEDESC     => '运行正常',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);                                   
                      
    -- mod by ken 20180105 
    --1.25：调度消息推送过程：PRO_KHTZ_SFYKTJJL（客户特征 -- 是否已开通聚金利）
    VN_STEP := VN_STEP + 1;
    --记录日志明细——开始
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '调度消息推送过程：PRO_KHTZ_SFYKTJJL（客户特征_是否已开通聚金利）！',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '正在运行！',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    HIS.PRO_KHTZ_SFYKTJJL(O_RETCODE => O_N_CODE,
                      O_RETNOTE => O_S_NOTE,
                      I_RQ      => I_N_TJRQ,
                      I_REDO    => I_N_REDO); --1重做
    --记录日志明细——结束
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '调度消息推送过程：PRO_KHTZ_SFYKTJJL（客户特征_是否已开通聚金利）！',
                              I_S_CHANGEDESC     => '运行正常',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);                                   
                      
    -- mod by KEN 20180413
    --1.26：调度消息推送过程：PRO_KHTZ_LRQZKH（客户特征 -- 是否两融潜在客户）
    VN_STEP := VN_STEP + 1;
    --记录日志明细——开始
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '调度消息推送过程：PRO_KHTZ_LRQZKH（客户特征 -- 是否两融潜在客户）！',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '正在运行！',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    HIS.PRO_KHTZ_LRQZKH(O_RETCODE => O_N_CODE,
                      O_RETNOTE => O_S_NOTE,
                      I_RQ      => I_N_TJRQ,
                      I_REDO    => I_N_REDO); --1重做                      
                      
    --记录日志明细——结束
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '调度消息推送过程：PRO_KHTZ_KHYWSJLXFS（客户特征 -- 是否两融潜在客户）！',
                              I_S_CHANGEDESC     => '运行正常',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);                                   
    -- chenjianbo 20180610
    --1.27：调度消息推送过程：PRO_KHTZ_ZHSX（客户特征计算过程 -- 账户属性）
    VN_STEP := VN_STEP + 1;
    --记录日志明细——开始
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '调度消息推送过程：PRO_KHTZ_ZHSX（客户特征计算过程 -- 账户属性）！',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '正在运行！',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    HIS.PRO_KHTZ_ZHSX(O_RETCODE => O_N_CODE,
                      O_RETNOTE => O_S_NOTE,
                      I_RQ      => I_N_TJRQ,
                      I_REDO    => I_N_REDO); --1重做                      
                      
    --记录日志明细——结束
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '调度消息推送过程：PRO_KHTZ_ZHSX（客户特征计算过程 -- 账户属性）！',
                              I_S_CHANGEDESC     => '运行正常',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);        
                              
    -- mod by KEN 20180622
    --1.28：调度消息推送过程：PRO_KHTZ_DXKH（客户特征 -- 电销客户）
    VN_STEP := VN_STEP + 1;
    --记录日志明细——开始
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '调度消息推送过程：PRO_KHTZ_DXKH（客户特征 -- 电销客户）！',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '正在运行！',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    HIS.PRO_KHTZ_DXKH(O_RETCODE => O_N_CODE,
                      O_RETNOTE => O_S_NOTE,
                      I_RQ      => I_N_TJRQ,
                      I_REDO    => I_N_REDO); --1重做                      
                      
    --记录日志明细——结束
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '调度消息推送过程：PRO_KHTZ_DXKH（客户特征 -- 电销客户）！',
                              I_S_CHANGEDESC     => '运行正常',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);                                                                                                                          
                              
    --存储过程运行成功
    O_N_CODE := 0;
    O_S_NOTE := '运行正常';
    --记录日志——成功结束
    PUB_SYS.P_LOG_PROC(I_N_PROCNO         => VN_PROC_NO,
                       I_N_LOGID          => VN_LOGID,
                       I_S_USER           => VS_USER,
                       I_S_PROCNAME       => VS_PROC_NAME,
                       I_N_TJRQ           => VN_TJRQ,
                       I_N_RETCODE        => O_N_CODE,
                       I_S_RETNOTE        => O_S_NOTE,
                       I_S_FLAG           => I_N_REDO,
                       I_N_INSERTORUPDATE => 1);
EXCEPTION
    WHEN OTHERS THEN
        O_N_CODE := -1;
        O_S_NOTE := O_S_NOTE || SQLERRM;
        ROLLBACK;
        --记录日志——成功结束
        PUB_SYS.P_LOG_PROC(I_N_PROCNO         => VN_PROC_NO,
                           I_N_LOGID          => VN_LOGID,
                           I_S_USER           => VS_USER,
                           I_S_PROCNAME       => VS_PROC_NAME,
                           I_N_TJRQ           => VN_TJRQ,
                           I_N_RETCODE        => O_N_CODE,
                           I_S_RETNOTE        => O_S_NOTE,
                           I_S_FLAG           => I_N_REDO,
                           I_N_INSERTORUPDATE => 1);
        --记录日志明细——失败结束
        PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                                  I_N_LOGDETAILID    => VN_STEP,
                                  I_S_USER           => VS_USER,
                                  I_S_ACTIONDESC     => '运行失败！',
                                  I_S_CHANGEDESC     => '运行失败！',
                                  I_N_TJRQ           => VN_TJRQ,
                                  I_N_RETCODE        => O_N_CODE,
                                  I_S_RETNOTE        => O_S_NOTE,
                                  I_S_FLAG           => I_N_REDO,
                                  I_N_INSERTORUPDATE => 1);
END PRO_KHTZ_MAIN;