CREATE OR REPLACE PROCEDURE EMC_JZU.P_TRAN_CGZHDY(O_N_CODE OUT INT,
                                                  O_S_NOTE OUT VARCHAR2,
                                                  I_N_TJRQ IN INT,
                                                  I_N_REDO IN INT DEFAULT 0)
/*-----------------------------------------------------------------------
         ��Ŀ���ƣ�   NDSC-���ݷ�������
         �û�����     EMC_JZU
         ��������:    P_TRAN_CGZHDY
         ���ܼ�����   ����˻���Ӧ��ת��
         ������
                  Ӣ������            ��������                ����ȡֵ
                  O_N_CODE            ���ش���                0 ������-1 �쳣
                  O_S_NOTE            ������Ϣ                �ַ�����Ϣ
                  I_N_STATDATE        ͳ������
                  I_N_REDO            ������ʶ                0��������    1������   2:��ʼ��
         ���أ�
         �㷨��
         ע�����
                  1��DSC_BAS.T_CGZHDY           ��Ϊȫ�����±�
                  2��EMC_PUB.F_GET_ETL_DIC_SQL  ���ر�׼�ֵ���ϴSQL�ĺ���
         ����Դ��
                 1��SRC_JZU.EXT_ACC             �ⲿ�����˻�
                 2��SRC_JZU.CUSTOMERS           �ͻ�
                 3��SRC_JZU.USERS               �û�������Ϣ��
                 4��SRC_JZUXY.EXT_ACC           �ⲿ�����˻�_����
         �޸ļ�¼;
         ------------------------------------------------------------------------
         ������      ����ʱ��                   ����
         ������      2015/10/22                 ����
         GUOXIATING  20160920  �ʽ��˺Ų���01,02,03��Ҫ��Ȼ����ĵ���ϴ��������
				 chenjianbo  20180706                   �޸ģ�DSC_BAS.T_CGZHDY��qyzt�У�����Ϊ��biz_open_flagȡ��ԭ��Ϊ��0��
    */
 IS
    VS_PROC_NAME VARCHAR2(100) := $$PLSQL_UNIT; --������
    VN_LOGID     INT; --LOG ���¼ID
    VN_ROWCOUNT  INT; --��¼��
    VN_STEP      INT; --��������
    VN_TJRQ      NUMBER(8) := I_N_TJRQ; --ͳ������
    VN_PROC_NO   PUB_SYS.T_ETL_PROC_MANAGE.PROC_NO%TYPE;
    VS_USER      VARCHAR2(30);
    VS_SQL       VARCHAR2(20000);
BEGIN
    --������ʼ��
    O_N_CODE := PUB_SYS.PKG_GCONST.PROCRUNRESULTSUCCESSFUL; --��ʼ�����гɹ�
    O_S_NOTE := '��������';
    VS_USER  := 'EMC_JZU';
    SELECT PUB_SYS.SEQ_T_PROC_LOG.NEXTVAL INTO VN_LOGID FROM DUAL; --��־���к�
    --��ȡETL���̵ı��
    VN_PROC_NO := PUB_SYS.F_GET_PROC_NO(I_S_OWNER     => VS_USER,
                                        I_S_PROC_NAME => VS_PROC_NAME);
    VN_STEP    := 0;
    --���̿�ʼ
    --��¼��־������ʼ
    PUB_SYS.P_LOG_PROC(I_N_PROCNO         => VN_PROC_NO,
                       I_N_LOGID          => VN_LOGID,
                       I_S_USER           => VS_USER,
                       I_S_PROCNAME       => VS_PROC_NAME,
                       I_N_TJRQ           => VN_TJRQ,
                       I_N_RETCODE        => 1,
                       I_S_RETNOTE        => '�������У�',
                       I_S_FLAG           => I_N_REDO,
                       I_N_INSERTORUPDATE => 0);
    IF I_N_REDO IN (0, 1, 2) THEN
        --��ʼ��ʱ�������
        VN_STEP := VN_STEP + 1;
        --��¼��־��ϸ������ʼ
        PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                                  I_N_LOGDETAILID    => VN_STEP,
                                  I_S_USER           => VS_USER,
                                  I_S_ACTIONDESC     => '��ʼ�������[DSC_BAS.T_CGZHDY]Ŀ���',
                                  I_S_CHANGEDESC     => NULL,
                                  I_N_TJRQ           => VN_TJRQ,
                                  I_N_RETCODE        => 1,
                                  I_S_RETNOTE        => '�������У�',
                                  I_S_FLAG           => I_N_REDO,
                                  I_N_INSERTORUPDATE => 0);
        --������
        EXECUTE IMMEDIATE 'TRUNCATE TABLE DSC_BAS.T_CGZHDY';
        --��¼��־��ϸ��������
        PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                                  I_N_LOGDETAILID    => VN_STEP,
                                  I_S_USER           => VS_USER,
                                  I_S_ACTIONDESC     => '��ʼ�������[DSC_BAS.T_CGZHDY]Ŀ���',
                                  I_S_CHANGEDESC     => '[DSC_BAS.T_CGZHDY]�������',
                                  I_N_TJRQ           => VN_TJRQ,
                                  I_N_RETCODE        => O_N_CODE,
                                  I_S_RETNOTE        => O_S_NOTE,
                                  I_S_FLAG           => I_N_REDO,
                                  I_N_INSERTORUPDATE => 1);
    END IF;
    --�� SRC�������д��DSC��
    VN_STEP := VN_STEP + 1;
    --��¼��־��ϸ������ʼ
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '��Դ��[SRC_JZU.EXT_ACC]��������ϴת����Ŀ���[DSC_BAS.T_CGZHDY]�У�',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '�������У�',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    --������
    VS_SQL := '
    INSERT /*+ APPEND*/
    INTO DSC_BAS.T_CGZHDY
        (KHH, KHXM, YYB, YHDM, CGLB, CGZH, YHZH, BZ, ZJZH, DJRQ, QYZT)
    SELECT A.CUST_CODE AS KHH,
           TRIM(C.USER_NAME) AS KHXM,' ||
              EMC_PUB.F_GET_NEW_YYB_SQL(I_SRC_TB_ALIAS => 'B',
                                        I_SRC_COL_NAME => 'OPEN_BRH') ||
              ' AS YYB,
           A.EXT_INST AS YHDM,
           ''1'' AS CGLB,
           '' '' AS CGZH,
           NVL(TRIM(A.EXT_ACC),'' '') AS YHZH, ' ||
              EMC_PUB.F_GET_ETL_DIC_SQL(I_SRC_TB_ALIAS     => 'A',
                                        I_SRC_COL_NAME     => 'CURRENCY',
                                        I_TAR_OWNER        => 'DSC_BAS',
                                        I_TAR_TB_NAME      => 'T_CGZHDY',
                                        I_TAR_COL_NAME     => 'BZ',
                                        I_IS_ERR_OLD_VALUE => PUB_SYS.PKG_GCONST.YES,
                                        I_IS_TRAN_FLAG     => PUB_SYS.PKG_GCONST.YES) || '
            AS BZ,
           A.ACCOUNT AS ZJZH,
           A.OPEN_DATE AS DJRQ,
--           0 AS QYZT
           case when instr(a.biz_open_flag,'1')>0 then 0 else 1 end AS QYZT -- 51,15,5��3�࣬��Ϊ0:��ǩԼ;1:δǩԼ
      FROM SRC_JZU.EXT_ACC A
      INNER JOIN SRC_JZU.CUSTOMERS B ON A.CUST_CODE = B.CUST_CODE
      LEFT JOIN SRC_JZU.USERS C ON A.CUST_CODE = C.USER_CODE
     WHERE A.EXT_INST <> 0
    ';
    --��¼SQL���нű�  ||DECODE(A.CURRENCY,''0'',''01'',''1'',''02'',''2'',''03'',''01'')
    PUB_SYS.P_SQL_TRACE(O_N_CODE       => O_N_CODE,
                        O_S_NOTE       => O_S_NOTE,
                        I_S_PROC_OWNER => VS_USER,
                        I_S_PROC_NAME  => VS_PROC_NAME,
                        I_S_EXEC_SQL   => VS_SQL,
                        I_S_NOTE       => '��֤U�����˻���Ӧ��ת��-��ͨ');
    --ִ��SQL
    EXECUTE IMMEDIATE VS_SQL;
    VN_ROWCOUNT := SQL%ROWCOUNT;
    COMMIT;
    --��¼��־��ϸ�����ɹ�����
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '��Դ��[SRC_JZU.EXT_ACC]��������ϴת����Ŀ���[DSC_BAS.T_CGZHDY]�У�',
                              I_S_CHANGEDESC     => '�����¼��' || VN_ROWCOUNT || '����',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);
    --�� SRC�������д��DSC��
    VN_STEP := VN_STEP + 1;
    --��¼��־��ϸ������ʼ
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '��Դ��[SRC_JZUXY.EXT_ACC]��������ϴת����Ŀ���[DSC_BAS.T_CGZHDY]�У�',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '�������У�',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    --������
    VS_SQL := '
    INSERT /*+ APPEND*/
    INTO DSC_BAS.T_CGZHDY
        (KHH, KHXM, YYB, YHDM, CGLB, CGZH, YHZH, BZ, ZJZH, DJRQ, QYZT)
    SELECT A.CUST_CODE AS KHH,
           TRIM(C.USER_NAME) AS KHXM,' ||
              EMC_PUB.F_GET_NEW_YYB_SQL(I_SRC_TB_ALIAS => 'B',
                                        I_SRC_COL_NAME => 'OPEN_BRH') ||
              ' AS YYB,
           A.EXT_INST AS YHDM,
           ''2'' AS CGLB,
           '' '' AS CGZH,
           NVL(TRIM(A.EXT_ACC),'' '') AS YHZH, ' ||
              EMC_PUB.F_GET_ETL_DIC_SQL(I_SRC_TB_ALIAS     => 'A',
                                        I_SRC_COL_NAME     => 'CURRENCY',
                                        I_TAR_OWNER        => 'DSC_BAS',
                                        I_TAR_TB_NAME      => 'T_CGZHDY',
                                        I_TAR_COL_NAME     => 'BZ',
                                        I_IS_ERR_OLD_VALUE => PUB_SYS.PKG_GCONST.YES,
                                        I_IS_TRAN_FLAG     => PUB_SYS.PKG_GCONST.YES) || '
            AS BZ,
           A.ACCOUNT AS ZJZH,
           A.OPEN_DATE AS DJRQ,
--           0 AS QYZT
           case when instr(a.biz_open_flag,'1')>0 then 0 else 1 end AS QYZT -- 51,15,5��3�࣬��Ϊ0:��ǩԼ;1:δǩԼ
      FROM SRC_JZUXY.EXT_ACC A
      INNER JOIN SRC_JZU.CUSTOMERS B ON A.CUST_CODE = B.CUST_CODE
      LEFT JOIN SRC_JZU.USERS C ON A.CUST_CODE = C.USER_CODE
     WHERE A.EXT_INST <> 0
    ';
    --��¼SQL���нű�
    PUB_SYS.P_SQL_TRACE(O_N_CODE       => O_N_CODE,
                        O_S_NOTE       => O_S_NOTE,
                        I_S_PROC_OWNER => VS_USER,
                        I_S_PROC_NAME  => VS_PROC_NAME,
                        I_S_EXEC_SQL   => VS_SQL,
                        I_S_NOTE       => '��֤U�����˻���Ӧ��ת��-����');
    --ִ��SQL
    EXECUTE IMMEDIATE VS_SQL;
    VN_ROWCOUNT := SQL%ROWCOUNT;
    COMMIT;
    --��¼��־��ϸ�����ɹ�����
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '��Դ��[SRC_JZUXY.EXT_ACC]��������ϴת����Ŀ���[DSC_BAS.T_CGZHDY]�У�',
                              I_S_CHANGEDESC     => '�����¼��' || VN_ROWCOUNT || '����',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);
    --�� SRC�������д��DSC��(������Ȩ)
    SELECT COUNT(1)
    INTO VN_ROWCOUNT
    FROM ALL_TABLES T
    WHERE T.OWNER='SRC_JZW' AND T.TABLE_NAME='OPT_CUBSB_CONTRACT';
    IF VN_ROWCOUNT=1 THEN
    VN_STEP := VN_STEP + 1;
    --��¼��־��ϸ������ʼ
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '��Դ��[SRC_JZW.OPT_CUBSB_CONTRACT]��������ϴת����Ŀ���[DSC_BAS.T_CGZHDY]�У�',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '�������У�',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    --������
    VS_SQL := '
    INSERT /*+ APPEND*/
    INTO DSC_BAS.T_CGZHDY
        (KHH, KHXM, YYB, YHDM, CGLB, CGZH, YHZH, BZ, ZJZH, DJRQ, QYZT)
    SELECT A.CUST_CODE AS KHH,
           '''' AS KHXM,' || EMC_PUB.F_GET_NEW_YYB_SQL('A', 'INT_ORG') ||
              ' AS YYB,
           A.EXT_ORG AS YHDM,
           ''5'' AS CGLB, --1-��ͨ�˻�, 2-������ȯ���, 5-������Ȩ���
           NVL(A.BDMF_ACCT,'' '') AS CGZH,
           NVL(A.BANK_ACCT,'' '') AS YHZH, ' ||
              EMC_PUB.F_GET_ETL_DIC_SQL(I_SRC_TB_ALIAS     => 'A',
                                        I_SRC_COL_NAME     => 'CURRENCY',
                                        I_TAR_OWNER        => 'DSC_BAS',
                                        I_TAR_TB_NAME      => 'T_CGZHDY',
                                        I_TAR_COL_NAME     => 'BZ',
                                        I_IS_ERR_OLD_VALUE => PUB_SYS.PKG_GCONST.YES,
                                        I_IS_TRAN_FLAG     => PUB_SYS.PKG_GCONST.YES) || '
            AS BZ,
           A.CUACCT_CODE AS ZJZH,
           A.OPEN_DATE AS DJRQ,
           CASE WHEN CONTRACT_STATUS = ''1'' THEN ''0''
              WHEN  CONTRACT_STATUS = ''0'' THEN ''4''
              WHEN CONTRACT_STATUS = ''9'' THEN ''3''
              ELSE ''0'' END
            AS QYZT
      FROM SRC_JZW.OPT_CUBSB_CONTRACT A
    ';
    --��¼SQL���нű�
    PUB_SYS.P_SQL_TRACE(O_N_CODE       => O_N_CODE,
                        O_S_NOTE       => O_S_NOTE,
                        I_S_PROC_OWNER => VS_USER,
                        I_S_PROC_NAME  => VS_PROC_NAME,
                        I_S_EXEC_SQL   => VS_SQL,
                        I_S_NOTE       => '��֤U�����˻���Ӧ��ת��_������Ȩ');
    --ִ��SQL
    EXECUTE IMMEDIATE VS_SQL;
    VN_ROWCOUNT := SQL%ROWCOUNT;
    COMMIT;
    --��¼��־��ϸ�����ɹ�����
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '��Դ��[SRC_JZW.OPT_CUBSB_CONTRACT]��������ϴת����Ŀ���[DSC_BAS.T_CGZHDY]�У�',
                              I_S_CHANGEDESC     => '�����¼��' || VN_ROWCOUNT || '����',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);
    END IF;
    --��¼��־�����ɹ�����
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
        O_N_CODE := PUB_SYS.PKG_GCONST.PROCRUNRESULTFAILED; --����ʧ��
        O_S_NOTE := SQLERRM;
        ROLLBACK;
        --��¼��־����ʧ�ܽ���
        PUB_SYS.P_LOG_PROC(I_N_PROCNO         => VN_PROC_NO,
                           I_N_LOGID          => VN_LOGID,
                           I_S_USER           => VS_USER,
                           I_S_PROCNAME       => VS_PROC_NAME,
                           I_N_TJRQ           => VN_TJRQ,
                           I_N_RETCODE        => O_N_CODE,
                           I_S_RETNOTE        => O_S_NOTE,
                           I_S_FLAG           => I_N_REDO,
                           I_N_INSERTORUPDATE => 1);
        --��¼��־��ϸ����ʧ�ܽ���
        PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                                  I_N_LOGDETAILID    => VN_STEP,
                                  I_S_USER           => VS_USER,
                                  I_S_ACTIONDESC     => '����ʧ�ܣ�',
                                  I_S_CHANGEDESC     => '����ʧ�ܣ�',
                                  I_N_TJRQ           => VN_TJRQ,
                                  I_N_RETCODE        => O_N_CODE,
                                  I_S_RETNOTE        => O_S_NOTE,
                                  I_S_FLAG           => I_N_REDO,
                                  I_N_INSERTORUPDATE => 1);
END P_TRAN_CGZHDY;