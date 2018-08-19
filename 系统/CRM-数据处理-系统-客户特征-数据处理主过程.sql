CREATE OR REPLACE PROCEDURE HIS.PRO_KHTZ_MAIN(O_N_CODE OUT INT,
                                          O_S_NOTE OUT VARCHAR2,
                                          I_N_TJRQ IN NUMBER,
                                          I_N_REDO IN NUMBER DEFAULT 1) IS
    /*-----------------------------------------------------------------------
         ��Ŀ���ƣ�   CRMII4.0
         �û���  ��   HIS
         �������ƣ�   �ͻ�����-���ݴ���������
         ���ܼ�����   �ͻ�����-���ݴ���������
         ������
                  Ӣ������            ��������                ����ȡֵ
                  O_N_CODE            ���ش���                0 ������-1 �쳣
                  O_S_NOTE            ������Ϣ                �ַ�����Ϣ
                  I_N_TJRQ            ͳ������
                  I_N_REDO            0��������    1������
        ���أ�
         �㷨��
         ע�����
         ����Դ��
         �޸ļ�¼;
         ------------------------------------------------------------------------
         ������      ����ʱ��                   ����
         ����      2014/06/12                 ����
         Weitq       2017/03/15                   ���������οͻ������ʲ����߽���������Ӷ�𡢵�λ�ʲ���Ӷ��
    */
    VS_PROC_NAME VARCHAR2(100) := $$PLSQL_UNIT; --������
    VN_LOGID     INT; --LOG ���¼ID
    VN_STEP      INT; --��������
    VN_TJRQ      NUMBER(8) := I_N_TJRQ; --ͳ������
    VN_PROC_NO   PUB_SYS.T_ETL_PROC_MANAGE.PROC_NO%TYPE;
    VS_USER      VARCHAR2(30);
BEGIN
    --������ʼ��
    O_N_CODE := PUB_SYS.PKG_GCONST.PROCRUNRESULTSUCCESSFUL; --��ʼ�����гɹ�
    O_S_NOTE := '��������';
    VS_USER  := 'HIS';
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
    --1.1��������Ϣ���͹��̣�PRO_XY_XXTZ_CKTZRQFZ���ͻ�����_��ת�ʣ�
    VN_STEP := VN_STEP + 1;
    --��¼��־��ϸ������ʼ
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '������Ϣ���͹��̣�PRO_KHTZ_ZZL���ͻ�����_��ת�ʣ���',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '�������У�',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    HIS.PRO_KHTZ_ZZL(O_RETCODE => O_N_CODE,
                     O_RETNOTE => O_S_NOTE,
                     I_RQ      => I_N_TJRQ,
                     I_REDO    => I_N_REDO); --1����
    --��¼��־��ϸ��������
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '������Ϣ���͹��̣�PRO_KHTZ_ZZL���ͻ�����_��ת�ʣ���',
                              I_S_CHANGEDESC     => '��������',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);
    --1.2��������Ϣ���͹��̣�PRO_KHTZ_ZHYK���ͻ�����_�ʻ�ӯ����
    VN_STEP := VN_STEP + 1;
    --��¼��־��ϸ������ʼ
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '������Ϣ���͹��̣�PRO_KHTZ_ZHYK���ͻ�����_�ʻ�ӯ������',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '�������У�',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    HIS.PRO_KHTZ_ZHYK(O_RETCODE => O_N_CODE,
                      O_RETNOTE => O_S_NOTE,
                      I_RQ      => I_N_TJRQ,
                      I_REDO    => I_N_REDO); --1����
    --��¼��־��ϸ��������
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '������Ϣ���͹��̣�PRO_KHTZ_ZHYK���ͻ�����_�ʻ�ӯ������',
                              I_S_CHANGEDESC     => '��������',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);
    --1.3��������Ϣ���͹��̣�PRO_KHTZ_JYYJL���ͻ�����_����Ӷ���ʣ�
    VN_STEP := VN_STEP + 1;
    --��¼��־��ϸ������ʼ
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '������Ϣ���͹��̣�PRO_KHTZ_JYYJL���ͻ�����_����Ӷ���ʣ���',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '�������У�',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    HIS.PRO_KHTZ_JYYJL(O_RETCODE => O_N_CODE,
                       O_RETNOTE => O_S_NOTE,
                       I_RQ      => I_N_TJRQ,
                       I_REDO    => I_N_REDO); --1����
    --��¼��־��ϸ��������
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '������Ϣ���͹��̣�PRO_KHTZ_JYYJL���ͻ�����_����Ӷ���ʣ���',
                              I_S_CHANGEDESC     => '��������',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);
    --1.4��������Ϣ���͹��̣�PRO_KHTZ_JJPZPH���ͻ�����_������ʽ�����׷��ƫ�ã�
    VN_STEP := VN_STEP + 1;
    --��¼��־��ϸ������ʼ
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '������Ϣ���͹��̣�PRO_KHTZ_JJPZPH���ͻ�����_������ʽ�����׷��ƫ�ã���',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '�������У�',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    HIS.PRO_KHTZ_JJPZPH(O_RETCODE => O_N_CODE,
                        O_RETNOTE => O_S_NOTE,
                        I_RQ      => I_N_TJRQ,
                        I_REDO    => I_N_REDO); --1����
    --��¼��־��ϸ��������
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '������Ϣ���͹��̣�PRO_KHTZ_JJPZPH���ͻ�����_������ʽ�����׷��ƫ�ã���',
                              I_S_CHANGEDESC     => '��������',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);
    --1.5��������Ϣ���͹��̣�PRO_KHTZ_TZPZPH���ͻ�����_��Ͷ�ʲ�Ʒƫ�ã�
   /* VN_STEP := VN_STEP + 1;
    --��¼��־��ϸ������ʼ
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '������Ϣ���͹��̣�PRO_KHTZ_TZPZPH���ͻ�����_��Ͷ�ʲ�Ʒƫ�ã���',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '�������У�',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    HIS.PRO_KHTZ_TZPZPH(O_RETCODE => O_N_CODE,
                        O_RETNOTE => O_S_NOTE,
                        I_RQ      => I_N_TJRQ,
                        I_REDO    => I_N_REDO); --1����
    --��¼��־��ϸ��������
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '������Ϣ���͹��̣�PRO_KHTZ_TZPZPH���ͻ�����_��Ͷ�ʲ�Ʒƫ�ã���',
                              I_S_CHANGEDESC     => '��������',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);*/
    --1.6��������Ϣ���͹��̣�PRO_KHTZ_WTFSPH ���ͻ�����_�����׷�ʽƫ�ã�
    VN_STEP := VN_STEP + 1;
    --��¼��־��ϸ������ʼ
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '������Ϣ���͹��̣�PRO_KHTZ_WTFSPH���ͻ�����_�����׷�ʽƫ�ã���',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '�������У�',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    HIS.PRO_KHTZ_WTFSPH(O_RETCODE => O_N_CODE,
                        O_RETNOTE => O_S_NOTE,
                        I_RQ      => I_N_TJRQ,
                        I_REDO    => I_N_REDO); --1����
    --��¼��־��ϸ��������
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '������Ϣ���͹��̣�PRO_KHTZ_WTFSPH���ͻ�����_�����׷�ʽƫ�ã���',
                              I_S_CHANGEDESC     => '��������',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);
    --1.7��������Ϣ���͹��̣�PRO_KHTZ_NL���ͻ�����_�����䣩
    VN_STEP := VN_STEP + 1;
    --��¼��־��ϸ������ʼ
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '������Ϣ���͹��̣�PRO_KHTZ_NL���ͻ�����_�����䣩��',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '�������У�',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    HIS.PRO_KHTZ_NL(O_RETCODE => O_N_CODE,
                        O_RETNOTE => O_S_NOTE,
                        I_RQ      => I_N_TJRQ,
                        I_REDO    => I_N_REDO); --1����
    --��¼��־��ϸ��������
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '������Ϣ���͹��̣�PRO_KHTZ_NL���ͻ�����_�����䣩��',
                              I_S_CHANGEDESC     => '��������',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);
    --1.8��������Ϣ���͹��̣�PRO_KHTZ_FXCSNL���ͻ�����_�����յȼ���
    VN_STEP := VN_STEP + 1;
    --��¼��־��ϸ������ʼ
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '������Ϣ���͹��̣�PRO_KHTZ_FXCSNL���ͻ�����_�����յȼ�����',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '�������У�',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    HIS.PRO_KHTZ_FXCSNL(O_RETCODE => O_N_CODE,
                        O_RETNOTE => O_S_NOTE,
                        I_RQ      => I_N_TJRQ,
                        I_REDO    => I_N_REDO); --1����
    --��¼��־��ϸ��������
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '������Ϣ���͹��̣�PRO_KHTZ_FXCSNL���ͻ�����_�����յȼ�����',
                              I_S_CHANGEDESC     => '��������',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);
   /* --1.9��������Ϣ���͹��̣�PRO_KHTZ_HYPH���ͻ�����_����Ʊ������ҵƫ�ã�
    VN_STEP := VN_STEP + 1;
    --��¼��־��ϸ������ʼ
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '������Ϣ���͹��̣�PRO_KHTZ_HYPH���ͻ�����_����Ʊ������ҵƫ�ã���',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '�������У�',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    HIS.PRO_KHTZ_HYPH(O_RETCODE => O_N_CODE,
                      O_RETNOTE => O_S_NOTE,
                      I_RQ      => I_N_TJRQ,
                      I_REDO    => I_N_REDO); --1����
    --��¼��־��ϸ��������
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '������Ϣ���͹��̣�PRO_KHTZ_HYPH���ͻ�����_����Ʊ������ҵƫ�ã���',
                              I_S_CHANGEDESC     => '��������',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);
    --1.10��������Ϣ���͹��̣�PRO_KHTZ_CXKHJB���ͻ�����_���¿ͻ�����
    VN_STEP := VN_STEP + 1;
    --��¼��־��ϸ������ʼ
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '������Ϣ���͹��̣�PRO_KHTZ_CXKHJB���ͻ�����_���¿ͻ����𣩣�',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '�������У�',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    HIS.PRO_KHTZ_CXKHJB(O_RETCODE => O_N_CODE,
                        O_RETNOTE => O_S_NOTE,
                        I_RQ      => I_N_TJRQ,
                        I_REDO    => I_N_REDO); --1����
    --��¼��־��ϸ��������
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '������Ϣ���͹��̣�PRO_KHTZ_CXKHJB���ͻ�����_���¿ͻ����𣩣�',
                              I_S_CHANGEDESC     => '��������',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);
    --1.11��������Ϣ���͹��̣�PRO_KHTZ_DXKHJB���ͻ�����_���¼���
    VN_STEP := VN_STEP + 1;
    --��¼��־��ϸ������ʼ
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '������Ϣ���͹��̣�PRO_KHTZ_DXKHJB���ͻ�����_���¼��𣩣�',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '�������У�',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    HIS.PRO_KHTZ_DXKHJB(O_RETCODE => O_N_CODE,
                        O_RETNOTE => O_S_NOTE,
                        I_RQ      => I_N_TJRQ,
                        I_REDO    => I_N_REDO); --1����
    --��¼��־��ϸ��������
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '������Ϣ���͹��̣�PRO_KHTZ_DXKHJB���ͻ�����_���¼��𣩣�',
                              I_S_CHANGEDESC     => '��������',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);
    --1.12��������Ϣ���͹��̣�PRO_KHTZ_GXZQ���ͻ�����_����ϵ���ڣ�
    VN_STEP := VN_STEP + 1;
    --��¼��־��ϸ������ʼ
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '������Ϣ���͹��̣�PRO_KHTZ_GXZQ���ͻ�����_����ϵ���ڣ���',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '�������У�',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    HIS.PRO_KHTZ_GXZQ(O_RETCODE => O_N_CODE,
                      O_RETNOTE => O_S_NOTE,
                      I_RQ      => I_N_TJRQ,
                      I_REDO    => I_N_REDO); --1����
    --��¼��־��ϸ��������
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '������Ϣ���͹��̣�PRO_KHTZ_GXZQ���ͻ�����_����ϵ���ڣ���',
                              I_S_CHANGEDESC     => '��������',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);*/
    --1.13��������Ϣ���͹��̣�PRO_KHTZ_TLKH���ͻ�����_���οͻ���
    VN_STEP := VN_STEP + 1;
    --��¼��־��ϸ������ʼ
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '������Ϣ���͹��̣�PRO_KHTZ_TLKH���ͻ�����_���οͻ�����',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '�������У�',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    HIS.PRO_KHTZ_TLKH(O_RETCODE => O_N_CODE,
                      O_RETNOTE => O_S_NOTE,
                      I_RQ      => I_N_TJRQ,
                      I_REDO    => I_N_REDO); --1����
    --��¼��־��ϸ��������
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '������Ϣ���͹��̣�PRO_KHTZ_TLKH���ͻ�����_���οͻ�����',
                              I_S_CHANGEDESC     => '��������',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);
    --1.14��������Ϣ���͹��̣�PRO_KHTZ_GZC���ͻ�����_���ʲ���
    VN_STEP := VN_STEP + 1;
    --��¼��־��ϸ������ʼ
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '������Ϣ���͹��̣�PRO_KHTZ_GZC���ͻ�����_���ʲ�����',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '�������У�',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    HIS.PRO_KHTZ_GZC(O_RETCODE => O_N_CODE,
                      O_RETNOTE => O_S_NOTE,
                      I_RQ      => I_N_TJRQ,
                      I_REDO    => I_N_REDO); --1����
    --��¼��־��ϸ��������
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '������Ϣ���͹��̣�PRO_KHTZ_GZC���ͻ�����_���ʲ�����',
                              I_S_CHANGEDESC     => '��������',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);
    --1.15��������Ϣ���͹��̣�PRO_KHTZ_GJYL���ͻ�����_�߽�������
    VN_STEP := VN_STEP + 1;
    --��¼��־��ϸ������ʼ
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '������Ϣ���͹��̣�PRO_KHTZ_GJYL���ͻ�����_�߽���������',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '�������У�',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    HIS.PRO_KHTZ_GJYL(O_RETCODE => O_N_CODE,
                      O_RETNOTE => O_S_NOTE,
                      I_RQ      => I_N_TJRQ,
                      I_REDO    => I_N_REDO); --1����
    --��¼��־��ϸ��������
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '������Ϣ���͹��̣�PRO_KHTZ_GJYL���ͻ�����_�߽���������',
                              I_S_CHANGEDESC     => '��������',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);
    --1.16��������Ϣ���͹��̣�PRO_KHTZ_GYJ���ͻ�����_��Ӷ��
    VN_STEP := VN_STEP + 1;
    --��¼��־��ϸ������ʼ
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '������Ϣ���͹��̣�PRO_KHTZ_GYJ���ͻ�����_��Ӷ�𣩣�',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '�������У�',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    HIS.PRO_KHTZ_GYJ(O_RETCODE => O_N_CODE,
                      O_RETNOTE => O_S_NOTE,
                      I_RQ      => I_N_TJRQ,
                      I_REDO    => I_N_REDO); --1����
    --��¼��־��ϸ��������
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '������Ϣ���͹��̣�PRO_KHTZ_GYJ���ͻ�����_��Ӷ�𣩣�',
                              I_S_CHANGEDESC     => '��������',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);
    --1.17��������Ϣ���͹��̣�PRO_KHTZ_DWZCGYJ���ͻ�����_��λ�ʲ���Ӷ��
    VN_STEP := VN_STEP + 1;
    --��¼��־��ϸ������ʼ
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '������Ϣ���͹��̣�PRO_KHTZ_DWZCGYJ���ͻ�����_��λ�ʲ���Ӷ�𣩣�',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '�������У�',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    HIS.PRO_KHTZ_DWZCGYJ(O_RETCODE => O_N_CODE,
                      O_RETNOTE => O_S_NOTE,
                      I_RQ      => I_N_TJRQ,
                      I_REDO    => I_N_REDO); --1����
    --��¼��־��ϸ��������
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '������Ϣ���͹��̣�PRO_KHTZ_DWZCGYJ���ͻ�����_��λ�ʲ���Ӷ�𣩣�',
                              I_S_CHANGEDESC     => '��������',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);
     --1.18��������Ϣ���͹��̣�PRO_KHTZ_KHFC���ͻ�����_�ͻ��ֲ㣩
    VN_STEP := VN_STEP + 1;
    --��¼��־��ϸ������ʼ
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '������Ϣ���͹��̣�PRO_KHTZ_KHFC���ͻ�����_�ͻ��ֲ㣩��',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '�������У�',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    HIS.PRO_KHTZ_KHFC(O_RETCODE => O_N_CODE,
                      O_RETNOTE => O_S_NOTE,
                      I_RQ      => I_N_TJRQ,
                      I_REDO    => I_N_REDO); --1����
    --��¼��־��ϸ��������
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '������Ϣ���͹��̣�PRO_KHTZ_KHFC���ͻ�����_�ͻ��ֲ㣩��',
                              I_S_CHANGEDESC     => '��������',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);
     --1.19��������Ϣ���͹��̣�PRO_KHTZ_ICKHFCLB���ͻ�����_IC�ͻ��ֳ����
    VN_STEP := VN_STEP + 1;
    --��¼��־��ϸ������ʼ
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '������Ϣ���͹��̣�PRO_KHTZ_ICKHFCLB���ͻ�����_IC�ͻ��ֳ���𣩣�',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '�������У�',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    HIS.PRO_KHTZ_ICKHFCLB(O_RETCODE => O_N_CODE,
                      O_RETNOTE => O_S_NOTE,
                      I_RQ      => I_N_TJRQ,
                      I_REDO    => I_N_REDO); --1����
    --��¼��־��ϸ��������
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '������Ϣ���͹��̣�PRO_KHTZ_ICKHFCLB���ͻ�����_IC�ͻ��ֳ���𣩣�',
                              I_S_CHANGEDESC     => '��������',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);                          
    
     --1.20��������Ϣ���͹��̣�PRO_KHTZ_HGH���ͻ�����_�ϸ�ͻ���
    VN_STEP := VN_STEP + 1;
    --��¼��־��ϸ������ʼ
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '������Ϣ���͹��̣�PRO_KHTZ_HGH���ͻ�����_�ϸ�ͻ�����',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '�������У�',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    HIS.PRO_KHTZ_HGH(O_RETCODE => O_N_CODE,
                      O_RETNOTE => O_S_NOTE,
                      I_RQ      => I_N_TJRQ,
                      I_REDO    => I_N_REDO); --1����
    --��¼��־��ϸ��������
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '������Ϣ���͹��̣�PRO_KHTZ_HGH���ͻ�����_�ϸ�ͻ�����',
                              I_S_CHANGEDESC     => '��������',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);
      --1.21��������Ϣ���͹��̣�PRO_KHTZ_YXH���ͻ�����_��Ч����
    VN_STEP := VN_STEP + 1;
    --��¼��־��ϸ������ʼ
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '������Ϣ���͹��̣�PRO_KHTZ_YXH���ͻ�����_��Ч������',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '�������У�',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    HIS.PRO_KHTZ_YXH(O_RETCODE => O_N_CODE,
                      O_RETNOTE => O_S_NOTE,
                      I_RQ      => I_N_TJRQ,
                      I_REDO    => I_N_REDO); --1����
    --��¼��־��ϸ��������
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '������Ϣ���͹��̣�PRO_KHTZ_YXH���ͻ�����_��Ч������',
                              I_S_CHANGEDESC     => '��������',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);
      --1.22��������Ϣ���͹��̣�PRO_KHTZ_KHXSHZT_SR���ͻ�����_�ͻ����ϻ�״̬_���գ�
    VN_STEP := VN_STEP + 1;
    --��¼��־��ϸ������ʼ
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '������Ϣ���͹��̣�PRO_KHTZ_KHXSHZT_SR���ͻ�����_�ͻ����ϻ�״̬_���գ���',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '�������У�',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    HIS.PRO_KHTZ_KHXSHZT_SR(O_RETCODE => O_N_CODE,
                      O_RETNOTE => O_S_NOTE,
                      I_RQ      => I_N_TJRQ,
                      I_REDO    => I_N_REDO); --1����
    --��¼��־��ϸ��������
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '������Ϣ���͹��̣�PRO_KHTZ_KHXSHZT_SR���ͻ�����_�ͻ����ϻ�״̬_���գ���',
                              I_S_CHANGEDESC     => '��������',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);
      --1.23��������Ϣ���͹��̣�PRO_KHTZ_KHXSHZT_SYM���ͻ�����_�ͻ����ϻ�״̬_����ĩ��
    VN_STEP := VN_STEP + 1;
    --��¼��־��ϸ������ʼ
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '������Ϣ���͹��̣�PRO_KHTZ_KHXSHZT_SYM���ͻ�����_�ͻ����ϻ�״̬_����ĩ����',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '�������У�',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    HIS.PRO_KHTZ_KHXSHZT_SYM(O_RETCODE => O_N_CODE,
                      O_RETNOTE => O_S_NOTE,
                      I_RQ      => I_N_TJRQ,
                      I_REDO    => I_N_REDO); --1����
    --��¼��־��ϸ��������
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '������Ϣ���͹��̣�PRO_KHTZ_KHXSHZT_SR���ͻ�����_�ͻ����ϻ�״̬_����ĩ����',
                              I_S_CHANGEDESC     => '��������',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1); 
     --1.24��������Ϣ���͹��̣�PRO_KHTZ_KHYWSJLXFS���ͻ�����_�ͻ������ֻ���ϵ��ʽ��
    VN_STEP := VN_STEP + 1;
    --��¼��־��ϸ������ʼ
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '������Ϣ���͹��̣�PRO_KHTZ_KHYWSJLXFS���ͻ�����_�ͻ������ֻ���ϵ��ʽ����',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '�������У�',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    HIS.PRO_KHTZ_KHYWSJLXFS(O_RETCODE => O_N_CODE,
                      O_RETNOTE => O_S_NOTE,
                      I_RQ      => I_N_TJRQ,
                      I_REDO    => I_N_REDO); --1����
    --��¼��־��ϸ��������
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '������Ϣ���͹��̣�PRO_KHTZ_KHYWSJLXFS���ͻ�����_�ͻ������ֻ���ϵ��ʽ����',
                              I_S_CHANGEDESC     => '��������',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);                                   
                      
    -- mod by ken 20180105 
    --1.25��������Ϣ���͹��̣�PRO_KHTZ_SFYKTJJL���ͻ����� -- �Ƿ��ѿ�ͨ�۽�����
    VN_STEP := VN_STEP + 1;
    --��¼��־��ϸ������ʼ
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '������Ϣ���͹��̣�PRO_KHTZ_SFYKTJJL���ͻ�����_�Ƿ��ѿ�ͨ�۽�������',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '�������У�',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    HIS.PRO_KHTZ_SFYKTJJL(O_RETCODE => O_N_CODE,
                      O_RETNOTE => O_S_NOTE,
                      I_RQ      => I_N_TJRQ,
                      I_REDO    => I_N_REDO); --1����
    --��¼��־��ϸ��������
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '������Ϣ���͹��̣�PRO_KHTZ_SFYKTJJL���ͻ�����_�Ƿ��ѿ�ͨ�۽�������',
                              I_S_CHANGEDESC     => '��������',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);                                   
                      
    -- mod by KEN 20180413
    --1.26��������Ϣ���͹��̣�PRO_KHTZ_LRQZKH���ͻ����� -- �Ƿ�����Ǳ�ڿͻ���
    VN_STEP := VN_STEP + 1;
    --��¼��־��ϸ������ʼ
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '������Ϣ���͹��̣�PRO_KHTZ_LRQZKH���ͻ����� -- �Ƿ�����Ǳ�ڿͻ�����',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '�������У�',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    HIS.PRO_KHTZ_LRQZKH(O_RETCODE => O_N_CODE,
                      O_RETNOTE => O_S_NOTE,
                      I_RQ      => I_N_TJRQ,
                      I_REDO    => I_N_REDO); --1����                      
                      
    --��¼��־��ϸ��������
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '������Ϣ���͹��̣�PRO_KHTZ_KHYWSJLXFS���ͻ����� -- �Ƿ�����Ǳ�ڿͻ�����',
                              I_S_CHANGEDESC     => '��������',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);                                   
    -- chenjianbo 20180610
    --1.27��������Ϣ���͹��̣�PRO_KHTZ_ZHSX���ͻ������������ -- �˻����ԣ�
    VN_STEP := VN_STEP + 1;
    --��¼��־��ϸ������ʼ
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '������Ϣ���͹��̣�PRO_KHTZ_ZHSX���ͻ������������ -- �˻����ԣ���',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '�������У�',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    HIS.PRO_KHTZ_ZHSX(O_RETCODE => O_N_CODE,
                      O_RETNOTE => O_S_NOTE,
                      I_RQ      => I_N_TJRQ,
                      I_REDO    => I_N_REDO); --1����                      
                      
    --��¼��־��ϸ��������
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '������Ϣ���͹��̣�PRO_KHTZ_ZHSX���ͻ������������ -- �˻����ԣ���',
                              I_S_CHANGEDESC     => '��������',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);        
                              
    -- mod by KEN 20180622
    --1.28��������Ϣ���͹��̣�PRO_KHTZ_DXKH���ͻ����� -- �����ͻ���
    VN_STEP := VN_STEP + 1;
    --��¼��־��ϸ������ʼ
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '������Ϣ���͹��̣�PRO_KHTZ_DXKH���ͻ����� -- �����ͻ�����',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '�������У�',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    HIS.PRO_KHTZ_DXKH(O_RETCODE => O_N_CODE,
                      O_RETNOTE => O_S_NOTE,
                      I_RQ      => I_N_TJRQ,
                      I_REDO    => I_N_REDO); --1����                      
                      
    --��¼��־��ϸ��������
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '������Ϣ���͹��̣�PRO_KHTZ_DXKH���ͻ����� -- �����ͻ�����',
                              I_S_CHANGEDESC     => '��������',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);                                                                                                                          
                              
    --�洢�������гɹ�
    O_N_CODE := 0;
    O_S_NOTE := '��������';
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
        O_N_CODE := -1;
        O_S_NOTE := O_S_NOTE || SQLERRM;
        ROLLBACK;
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
END PRO_KHTZ_MAIN;