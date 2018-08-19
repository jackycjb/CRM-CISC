CREATE OR REPLACE PROCEDURE HIS.PRO_JS_KHYJFL(O_RETCODE OUT NUMBER,
                                          O_RETNODE OUT VARCHAR2,
                                          I_KSRQ    IN NUMBER,
                                          I_JSRQ    IN NUMBER,
                                          I_REDO    IN NUMBER) IS
    /* ----------------------------------------------------------------------- 
    
     ��Ŀ���ƣ�   BSS
     ��������:    PRO_JS_KHYJFL
     ���ܼ�����   �ͻ����ʱ䶯����       
     ҵ���߼���
          20120814 ��ΰǿ  ����������HIS.tkhyjfl_ls��ʱ,ֵ���ֶζ�Ӧ�д�
          20120306  ����ǿ     ����ʷӶ�������ݱ�����HIS.tkhyjfl_ls��
          20111213 Ҷ������HIS.tkhyjfl������ԭETL�ɼ�����������ݸ�Ϊֱ��ͨ�������̽��м���ó�
                           �������̴�CRMII�Ƶ�DCUSER�û��¡�
          
          20111128 cyx �ų��Ѿ�ǩԼ�ͻ��ļ���
          20111123 cyx ��HIS.tkhyjfl_ls���Ϊtkhyjlbgb
          20110816 cyx �ͻ����ʱ䶯����      
    
     �޸ļ�¼;
     ------------------------------------------------------------------------
     ������           ����ʱ��       �汾            ����
       wukm          20130625       v.4.0.1          ����   
       LIWEI         2016/11/08                      �޸ģ���¼��־
    -----------------------------------------------------------------------*/
    V_STARTTIME DATE := SYSDATE;
    V_SQLCOUNT  NUMBER := 0;
    VS_PROC_NAME VARCHAR2(100) := $$PLSQL_UNIT;
    VN_LOGID     INT; --LOG ���¼ID
    VN_PROC_NO   PUB_SYS.T_ETL_PROC_MANAGE.PROC_NO%TYPE;
    VS_USER      VARCHAR2(30);
    VN_TJRQ      NUMBER(8) := I_KSRQ; --ͳ������
BEGIN
    --������ʼ��
    VS_USER := 'HIS';
    SELECT PUB_SYS.SEQ_T_PROC_LOG.NEXTVAL INTO VN_LOGID FROM DUAL; --��־���к�
    --��ȡETL���̵ı��
    VN_PROC_NO := PUB_SYS.F_GET_PROC_NO(I_S_OWNER     => VS_USER,
                                        I_S_PROC_NAME => VS_PROC_NAME);
    --��¼��־������ʼ
    PUB_SYS.P_LOG_PROC(I_N_PROCNO         => VN_PROC_NO,
                       I_N_LOGID          => VN_LOGID,
                       I_S_USER           => VS_USER,
                       I_S_PROCNAME       => VS_PROC_NAME,
                       I_N_TJRQ           => VN_TJRQ,
                       I_N_RETCODE        => 1,
                       I_S_RETNOTE        => '�������У�',
                       I_S_FLAG           => I_REDO,
                       I_N_INSERTORUPDATE => 0);
    
    O_RETCODE := 1;
    O_RETNODE := 'ִ�гɹ�';
    --20111213ͨ��������ϸ����A��ƽ��Ӷ���ʣ��۳�ëӶ��С����5Ԫ�ļ�¼
    --20120306 �������������ֶ�
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
    -- �¿���
    INSERT INTO HIS.TKHYJFL_LS
        (KHH, FL1, FL2, BDRQ)
        SELECT B.KHH, B.FL, B.FL, I_JSRQ
          FROM HIS.TKHYJFL B
         WHERE NOT EXISTS (SELECT 1 FROM HIS.TKHYJFL_LS A WHERE A.KHH = B.KHH);
    V_SQLCOUNT := SQL%ROWCOUNT;
    -- ���ʷ����䶯, �ĳɴ洢��HIS.tkhyjfl_ls
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
                      '�ͻ�������ʷ���¼�¼',
                      'pro_update_khfl()',
                      0,
                      '�������,��ʱ' || TRUNC((SYSDATE - V_STARTTIME) * 1440.00 * 60) || '��' ||
                      ',����:' || TO_CHAR(SYSDATE, 'yyyyMMdd'));
    COMMIT;
    
  --��¼��־�����ɹ�����
  PUB_SYS.P_LOG_PROC(I_N_PROCNO         => VN_PROC_NO,
                     I_N_LOGID          => VN_LOGID,
                     I_S_USER           => VS_USER,
                     I_S_PROCNAME       => VS_PROC_NAME,
                     I_N_TJRQ           => VN_TJRQ,
                     I_N_RETCODE        => 0,
                     I_S_RETNOTE        => '�ɹ�',
                     I_S_FLAG           => I_REDO,
                     I_N_INSERTORUPDATE => 1);
    
EXCEPTION
    WHEN OTHERS THEN
        BEGIN
            O_RETNODE := SQLERRM;
            O_RETCODE := -1;
            ROLLBACK;
            --��¼��־����ʧ�ܽ���
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