PROCEDURE         P_TRAN_XY_JGMXLS(O_N_CODE OUT INT,
                                                     O_S_NOTE OUT VARCHAR2,
                                                     I_N_TJRQ IN INT,
                                                     I_N_REDO IN INT DEFAULT 0)
/*-----------------------------------------------------------------------
         ��Ŀ���ƣ�   NDSC-���ݷ�������
         �û�����     EMC_JZU
         ��������:    P_TRAN_XY_JGMXLS
         ���ܼ�����   ���ý�����ϸ��ˮ��ת��
         ������
                  Ӣ������            ��������                ����ȡֵ
                  O_N_CODE            ���ش���                0 ������-1 �쳣
                  O_S_NOTE            ������Ϣ                �ַ�����Ϣ
                  I_N_STATDATE        ͳ������
                  I_N_REDO            ������ʶ                0��������    1������   2:��ʼ��
         ���أ�
         �㷨��
              1���漰���Ϻ�ծȯ�Ķ����Խ��׵�λ ��CJSL*10
              2��Ӫҵ˰��YYS=��S1 - (S11 + S12 + S13 + S15 + S16)����Ӫҵ˰��
                 Ӫҵ˰�����Ա� DSC_CFG.T_YYSLCS [Ӫҵ��1��ʾ�ܲ�,Ӫҵ��δ���ò���ʱ���ܲ�����Ϊ׼]
                 ֧����ʷ���㣬���Բ���DSC_CFG.T_YYSLCS�е�IS_VALID��������
         ע�����
                  1��DSC_BAS.T_XY_JGMXLS           ��Ϊȫ�����±�
                  2��EMC_PUB.F_GET_ETL_DIC_SQL  ���ر�׼�ֵ���ϴSQL�ĺ���
         ����Դ��
                 1��SRC_JZUXY.H_MATCHING          ��ʷ�ɽ�
                 2��SRC_JZUXY.H_MATCHING_FEE      ��ʷ�ɽ�������ϸ
                 3��SRC_JZUXY.SECURITIES          ֤ȯ��Ϣ
                 4��SRC_JZUXY.SHARE_LOG           �ɷݱ䶯��ˮ
         �޸ļ�¼;
         ------------------------------------------------------------------------
         ������      ����ʱ��                   ����
         �µ���      2015/10/21                 ����
         LIWEI       2016/11/05                 �޸ģ�������Ӷ����㷨����Ӷ��=������-���ַ�-�����-���׹��
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
    VN_YYSL      NUMBER(9, 6); --�ܲ�Ӫҵ˰˰��
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
    --��ȡ�ܲ�Ӫҵ˰˰��
    SELECT A.SL
      INTO VN_YYSL
      FROM DSC_CFG.T_YYSLCS A
     WHERE A.YYB = '1'
       AND A.KSRQ <= VN_TJRQ
       AND A.JSRQ >= VN_TJRQ;
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
                                  I_S_ACTIONDESC     => '��ʼ�������[DSC_BAS.T_XY_JGMXLS]Ŀ�����ɾ����ʷ�����ڣ�' ||
                                                        VN_TJRQ || '�����ݣ�',
                                  I_S_CHANGEDESC     => NULL,
                                  I_N_TJRQ           => VN_TJRQ,
                                  I_N_RETCODE        => 1,
                                  I_S_RETNOTE        => '�������У�',
                                  I_S_FLAG           => I_N_REDO,
                                  I_N_INSERTORUPDATE => 0);
        --������
        EXECUTE IMMEDIATE 'TRUNCATE TABLE DSC_BAS.T_XY_JGMXLS';
        SELECT COUNT(*)
          INTO VN_ROWCOUNT
          FROM DSC_HIS.T_XY_JGMXLS_HIS A
         WHERE A.CJRQ = VN_TJRQ
           AND ROWNUM = 1;
        IF VN_ROWCOUNT <> 0 THEN
            DELETE DSC_HIS.T_XY_JGMXLS_HIS WHERE CJRQ = VN_TJRQ;
            VN_ROWCOUNT := SQL%ROWCOUNT;
            COMMIT;
        END IF;
        --��¼��־��ϸ��������
        PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                                  I_N_LOGDETAILID    => VN_STEP,
                                  I_S_USER           => VS_USER,
                                  I_S_ACTIONDESC     => '��ʼ�������[DSC_BAS.T_XY_JGMXLS]Ŀ�����ɾ����ʷ�����ڣ�' ||
                                                        VN_TJRQ || '�����ݣ�',
                                  I_S_CHANGEDESC     => '[DSC_BAS.T_XY_JGMXLS]������գ���ʷ�������Ѿ�ɾ��' ||
                                                        VN_ROWCOUNT || '����',
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
                              I_S_ACTIONDESC     => '��Դ��[SRC_JZUXY.H_MATCHING]��������ϴת����Ŀ���[DSC_BAS.T_XY_JGMXLS]�У�',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '�������У�',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    EXECUTE IMMEDIATE 'TRUNCATE TABLE EMC_JZU.TMP_COMMON ';
    INSERT INTO EMC_JZU.TMP_COMMON
        (C1, --CUST_CODE
         C2, --SERIAL_NO
         N1, --CJJE
         N2, --LXJG
         N3, --S1
         N4, --S2
         N5, --S3
         N6, --S4
         N7, --S5
         N8, --S6
         N9, --JYSFY_FXJ
         N10, --JYSFY_ZQF
         N11, --JYSFY_JSF
         N12 --JYSFY_QT
         )
        SELECT CUST_CODE, --c1
               SERIAL_NO, --c2
               SUM(CASE FEE_ID
                       WHEN 1 THEN
                        ABS(FEE_AMT)
                       ELSE
                        0.00
                   END) CJJE, --n1
               SUM(CASE FEE_ID
                       WHEN 2 THEN
                        FEE_AMT
                       ELSE
                        0.00
                   END) LXJG, --n2
               SUM(CASE FEE_ID
                       WHEN 100 THEN
                        FEE_AMT
                       ELSE
                        0.00
                   END) S1, --n3
               SUM(CASE FEE_ID
                       WHEN 101 THEN
                        FEE_AMT
                       ELSE
                        0.00
                   END) S2, --n4
               SUM(CASE FEE_ID
                       WHEN 102 THEN
                        FEE_AMT
                       ELSE
                        0.00
                   END) S3, --n5
               SUM(CASE FEE_ID
                       WHEN 109 THEN
                        FEE_AMT
                       ELSE
                        0.00
                   END) S4, --n6
               SUM(CASE FEE_ID
                       WHEN 107 THEN
                        FEE_AMT
                       ELSE
                        0.00
                   END) S5, --n7
               SUM(CASE FEE_ID
                       WHEN 106 THEN
                        FEE_AMT
                       ELSE
                        0.00
                   END) S6, --n8
               SUM(CASE FEE_ID
                       WHEN 111 THEN
                        FEE_AMT
                       ELSE
                        0.00
                   END) JYSFY_FXJ, --n9
               SUM(CASE FEE_ID
                       WHEN 105 THEN
                        FEE_AMT
                       ELSE
                        0.00
                   END) JYSFY_ZQF, --n10
               SUM(CASE FEE_ID
                       WHEN 104 THEN
                        FEE_AMT
                       ELSE
                        0.00
                   END) JYSFY_JSF, --n11
               SUM(CASE FEE_ID
                       WHEN 103 THEN
                        FEE_AMT
                       ELSE
                        0.00
                   END) JYSFY_QT --n12
          FROM SRC_JZUXY.H_MATCHING_FEE
         WHERE TRD_DATE = VN_TJRQ
         GROUP BY CUST_CODE, SERIAL_NO;
    COMMIT;
    --������
    VS_SQL := '
    INSERT
    INTO DSC_BAS.T_XY_JGMXLS
        (SEQNO,
         LSH,
         JGZLLB,
         WTH,
         KHH,
         KHXM,
         GDH,
         GDXM,
         JYS,
         JSLX,
         JSJG,
         JSZH,
         BZ,
         WTFS,
         YYB,
         XWDM,
         ZQDM,
         ZQMC,
         ZQLB,
         JYLB,
         CJBH,
         CJRQ,
         CJSJ,
         SBSJ,
         CJBS,
         CJSL,
         CJJG,
         JSJ,
         LXJG,
         CJJE,
         LXJE,
         BZS1,
         S1,
         S2,
         S3,
         S4,
         S5,
         S6,
         YSJE,
         S11,
         S12,
         S13,
         S15,
         S16,
         YSJE_YJ,
         BCYE,
         ZJMX_LSH,
         DJJE,
         YSSL,
         BCSL,
         BCDJSL,
         DJSL,
         BCYK,
         SETTLE_DATE,
         RZRQ,
         FSYYB,
         LOGINID,
         FHGY,
         JYJ,
         ZY,
         YYS,
         GT_ZQLB,
         GT_JYLB,
         GT_WTFS)
  SELECT SEQNO,
         LSH,
         JGZLLB,
         WTH,
         KHH,
         KHXM,
         GDH,
         GDXM,
         JYS,
         JSLX,
         JSJG,
         JSZH,
         BZ,
         WTFS,
         T1.YYB,
         XWDM,
         ZQDM,
         ZQMC,
         ZQLB,
          ' ||
              EMC_PUB.F_GET_ETL_DIC_SQL(I_SRC_TB_ALIAS     => 'T1',
                                        I_SRC_COL_NAME     => 'TRD_ID',
                                        I_TAR_OWNER        => 'DSC_BAS',
                                        I_TAR_TB_NAME      => 'T_JGMXLS',
                                        I_TAR_COL_NAME     => 'JYLB',
                                        I_IS_ERR_OLD_VALUE => PUB_SYS.PKG_GCONST.YES,
                                        I_IS_TRAN_FLAG     => PUB_SYS.PKG_GCONST.YES) ||
              ' AS  JYLB,
         CJBH,
         CJRQ,
         CJSJ,
         SBSJ,
         CJBS,
         CJSL,
         CJJG,
         JSJ,
         LXJG,
         CJJE,
         LXJE,
         BZS1,
         S1,
         S2,
         S3,
         S4,
         S5,
         S6,
         YSJE,
         S11,
         S12,
         S13,
         S15,
         S16,
         YSJE + JYJ + (S2 + S3 + S4 + S5 + S6) AS YSJE_YJ,
         BCYE,
         ZJMX_LSH,
         DJJE,
         YSSL,
         BCSL,
         BCDJSL,
         DJSL,
         BCYK,
         SETTLE_DATE,
         RZRQ,
         FSYYB,
         LOGINID,
         FHGY,
         JYJ,
         ZY,
         JYJ*NVL(T2.SL,' || VN_YYSL ||
              ') AS YYS,
         GT_ZQLB,
         GT_JYLB,
         GT_WTFS
    FROM (SELECT SERIAL_NO AS SEQNO,
                 SERIAL_NO AS LSH,
                 ''0'' AS JGZLLB,
                 TRIM(A.ORDER_ID) AS WTH,
                 A.CUST_CODE AS KHH,
                 TRIM(A.SECU_ACC_NAME) AS KHXM,
                 A.SECU_ACC AS GDH,
                 TRIM(A.SECU_ACC_NAME) AS GDXM,' ||
              EMC_PUB.F_GET_ETL_DIC_SQL(I_SRC_TB_ALIAS     => '',
                                        I_SRC_COL_NAME     => 'A.MARKET||A.BOARD',
                                        I_TAR_OWNER        => 'DSC_BAS',
                                        I_TAR_TB_NAME      => 'T_JGMXLS',
                                        I_TAR_COL_NAME     => 'JYS',
                                        I_IS_ERR_OLD_VALUE => PUB_SYS.PKG_GCONST.YES,
                                        I_IS_TRAN_FLAG     => PUB_SYS.PKG_GCONST.YES) ||
              ' AS JYS,
                 NULL AS JSLX,
                 A.EXT_INST AS JSJG,
                 TRIM(A.ACCOUNT ||
                   (CASE A.CURRENCY
                    WHEN ''0'' THEN
                          ''01''
                    WHEN ''1'' THEN
                          ''02''
                    WHEN ''2'' THEN
                         ''03''
                    ELSE
                         ''01''
                 END)) AS JSZH, ' ||
              EMC_PUB.F_GET_ETL_DIC_SQL(I_SRC_TB_ALIAS     => 'A',
                                        I_SRC_COL_NAME     => 'CURRENCY',
                                        I_TAR_OWNER        => 'DSC_BAS',
                                        I_TAR_TB_NAME      => 'T_JGMXLS',
                                        I_TAR_COL_NAME     => 'BZ',
                                        I_IS_ERR_OLD_VALUE => PUB_SYS.PKG_GCONST.YES,
                                        I_IS_TRAN_FLAG     => PUB_SYS.PKG_GCONST.YES) ||
              '  AS BZ, ' ||
              EMC_PUB.F_GET_ETL_DIC_SQL(I_SRC_TB_ALIAS     => 'A',
                                        I_SRC_COL_NAME     => 'CHANNEL',
                                        I_TAR_OWNER        => 'DSC_BAS',
                                        I_TAR_TB_NAME      => 'T_JGMXLS',
                                        I_TAR_COL_NAME     => 'WTFS',
                                        I_IS_ERR_OLD_VALUE => PUB_SYS.PKG_GCONST.YES,
                                        I_IS_TRAN_FLAG     => PUB_SYS.PKG_GCONST.YES) ||
              '  AS WTFS,' ||
              EMC_PUB.F_GET_NEW_YYB_SQL(I_SRC_TB_ALIAS => 'A', I_SRC_COL_NAME => 'BRANCH') ||
              ' AS YYB,
                 TRIM(A.SEAT) AS XWDM,
                 A.SECU_CODE AS ZQDM,
                 TRIM(A.SECU_NAME) AS ZQMC,' ||
              EMC_PUB.F_GET_ETL_DIC_SQL(I_SRC_TB_ALIAS     => 'A',
                                        I_SRC_COL_NAME     => 'SECU_CLS',
                                        I_TAR_OWNER        => 'DSC_BAS',
                                        I_TAR_TB_NAME      => 'T_JGMXLS',
                                        I_TAR_COL_NAME     => 'ZQLB',
                                        I_IS_ERR_OLD_VALUE => PUB_SYS.PKG_GCONST.YES,
                                        I_IS_TRAN_FLAG     => PUB_SYS.PKG_GCONST.YES) || '
                  AS ZQLB,  case
         when order_type = ''01'' then
          ''RA''
         when order_type = ''02'' then
          ''RB''
         when order_type = ''03'' then
          ''RC''
         when order_type = ''04'' then
          ''RD''
         when order_type = ''05'' then
          ''RE''
         when order_type = ''06'' then
          ''RF''
         else
          trd_id
       end TRD_ID  ,
                 A.MATCHED_SN AS CJBH,
                 A.TRD_DATE AS CJRQ ,
                 A.MATCHED_TIME AS CJSJ,
                 NULL AS SBSJ,
                 1 AS CJBS,
                 NVL(A.MATCHED_QTY,0) AS CJSL,
                 NVL(A.MATCHED_PRICE,0) AS CJJG,
                 NVL(A.MATCHED_PRICE,0)+NVL(B.N2,0) AS JSJ,   --��ȷ����
                 NVL(B.N2, 0.00) AS LXJG,
                 NVL(B.N1, 0.00) AS CJJE,
                 NVL(B.N2, 0.00) * NVL(A.MATCHED_QTY,0) AS LXJE,
                 NVL(B.N3, 0.00) AS BZS1,
                 NVL(B.N3, 0.00) AS S1,
                 NVL(B.N4, 0.00) AS S2,
                 NVL(B.N5, 0.00) AS S3,
                 NVL(B.N6, 0.00) AS S4,
                 NVL(B.N7, 0.00) AS S5,
                 NVL(B.N8, 0.00) AS S6,
                 A.SETT_AMT AS YSJE,
                 NVL(B.N11,0) AS S11, --һ������_���ַ�(N11--JYSFY_JSF)
                 NVL(B.N10,0) AS S12, --һ������_֤�ܷ�(N10--JYSFY_ZQF)
                 NVL(B.N12,0) AS S13, --һ������_������(N12--JYSFY_QT��
                 0 AS S15,            --һ������_�����
                 NVL(B.N9,0) AS S16, --һ������_���ջ���(N9--JYSFY_FXJ)
                 0 AS YSJE_YJ, -- A.YSJE-(A.S11 + A.S12 + A.S13 + A.S15 + A.S16)+(S1+S2+S3+S4+S5+S6)
                 A.BALANCE AS BCYE,
                 0 AS ZJMX_LSH,
                 0 AS DJJE,
                 A.SETT_QTY AS YSSL,
                 A.SHARE_BLN AS BCSL,
                 0 AS BCDJSL,
                 0 AS DJSL,
                 A.PROFIT AS BCYK,
                 A.SETT_SHARE_DATE AS SETTLE_DATE,
                 A.COME_IN_DATE AS RZRQ,' ||
              EMC_PUB.F_GET_NEW_YYB_SQL(I_SRC_TB_ALIAS => 'A', I_SRC_COL_NAME => 'OP_BRH') ||
              ' AS FSYYB,
                 A.OP_USER AS LOGINID,
                 NULL AS FHGY,
                 NVL(B.N3,0)-(NVL(B.N8 + B.N10 + B.N11, 0.00)) AS JYJ,   --modified by 20161105
                 TRIM(A.REMARK) AS ZY,
                 A.SECU_CLS AS GT_ZQLB,
                 A.TRD_ID AS GT_JYLB,
                 A.CHANNEL AS GT_WTFS
           FROM SRC_JZUXY.H_MATCHING A
  LEFT JOIN EMC_JZU.TMP_COMMON  B ON A.CUST_CODE = B.C1
                                              AND A.SERIAL_NO = B.C2
 WHERE TRD_DATE =' || VN_TJRQ || ' ) T1
        LEFT JOIN (SELECT YYB,SL
                     FROM DSC_CFG.T_YYSLCS
                    WHERE KSRQ<=' || VN_TJRQ || 'AND JSRQ>=' || VN_TJRQ ||
              ') T2 ON T1.YYB=T2.YYB
      ';
    --��¼SQL���нű�
    PUB_SYS.P_SQL_TRACE(O_N_CODE       => O_N_CODE,
                        O_S_NOTE       => O_S_NOTE,
                        I_S_PROC_OWNER => VS_USER,
                        I_S_PROC_NAME  => VS_PROC_NAME,
                        I_S_EXEC_SQL   => VS_SQL,
                        I_S_NOTE       => '��֤U������_������ϸ��ˮ��ת��[H_MATCHING]');
    --ִ��SQL
    EXECUTE IMMEDIATE VS_SQL;
    VN_ROWCOUNT := SQL%ROWCOUNT;
    COMMIT;
    --��¼��־��ϸ�����ɹ�����
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '��Դ��[SRC_JZUXY.H_MATCHING]��������ϴת����Ŀ���[DSC_BAS.T_XY_JGMXLS]�У�',
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
                              I_S_ACTIONDESC     => '��Դ��[SRC_JZUXY.SHARE_LOG]��������ϴת����Ŀ���[DSC_BAS.T_XY_JGMXLS]�У�',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '�������У�',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    VS_SQL := '
    INSERT
    INTO DSC_BAS.T_XY_JGMXLS
        (SEQNO,
         LSH,
         JGZLLB,
         WTH,
         KHH,
         KHXM,
         GDH,
         GDXM,
         JYS,
         JSLX,
         JSJG,
         JSZH,
         BZ,
         WTFS,
         YYB,
         XWDM,
         ZQDM,
         ZQMC,
         ZQLB,
         JYLB,
         CJBH,
         CJRQ,
         CJSJ,
         SBSJ,
         CJBS,
         CJSL,
         CJJG,
         JSJ,
         LXJG,
         CJJE,
         LXJE,
         BZS1,
         S1,
         S2,
         S3,
         S4,
         S5,
         S6,
         YSJE,
         S11,
         S12,
         S13,
         S15,
         S16,
         YSJE_YJ,
         BCYE,
         ZJMX_LSH,
         DJJE,
         YSSL,
         BCSL,
         BCDJSL,
         DJSL,
         BCYK,
         SETTLE_DATE,
         RZRQ,
         FSYYB,
         LOGINID,
         FHGY,
         JYJ,
         ZY,
         YYS,
         GT_ZQLB,
         GT_JYLB,
         GT_WTFS)
  SELECT SEQNO,
         LSH,
         JGZLLB,
         WTH,
         KHH,
         KHXM,
         GDH,
         GDXM,
         JYS,
         JSLX,
         JSJG,
         JSZH,
         BZ,
         WTFS,
         T1.YYB,
         XWDM,
         ZQDM,
         ZQMC,
         ZQLB,
         JYLB,
         CJBH,
         CJRQ,
         CJSJ,
         SBSJ,
         CJBS,
         CJSL,
         CJJG,
         JSJ,
         LXJG,
         CJJE,
         LXJE,
         BZS1,
         S1,
         S2,
         S3,
         S4,
         S5,
         S6,
         YSJE,
         S11,
         S12,
         S13,
         S15,
         S16,
         YSJE + JYJ + (S2 + S3 + S4 + S5 + S6) AS YSJE_YJ,
         BCYE,
         ZJMX_LSH,
         DJJE,
         YSSL,
         BCSL,
         BCDJSL,
         DJSL,
         BCYK,
         SETTLE_DATE,
         RZRQ,
         FSYYB,
         LOGINID,
         FHGY,
         JYJ,
         ZY,
         JYJ*NVL(T2.SL,' || VN_YYSL || ') AS YYS,
         GT_ZQLB,
         GT_JYLB,
         GT_WTFS
    FROM (SELECT B.SERIAL_NO AS SEQNO,
                 B.SERIAL_NO AS LSH,
                 ''0'' AS JGZLLB,
                 B.SERIAL_NO AS WTH,
                 B.CUST_CODE AS KHH,
                 '' '' AS KHXM,
                 B.SECU_ACC AS GDH,
                 '' '' AS GDXM,' ||
              EMC_PUB.F_GET_ETL_DIC_SQL(I_SRC_TB_ALIAS     => '',
                                        I_SRC_COL_NAME     => 'A.MARKET||A.BOARD',
                                        I_TAR_OWNER        => 'DSC_BAS',
                                        I_TAR_TB_NAME      => 'T_JGMXLS',
                                        I_TAR_COL_NAME     => 'JYS',
                                        I_IS_ERR_OLD_VALUE => PUB_SYS.PKG_GCONST.YES,
                                        I_IS_TRAN_FLAG     => PUB_SYS.PKG_GCONST.YES) ||
              ' AS JYS,
                 NULL AS JSLX,
                 B.EXT_INST AS JSJG,
                 TRIM(B.ACCOUNT ||
                   (CASE A.CURRENCY
                    WHEN ''0'' THEN
                          ''01''
                    WHEN ''1'' THEN
                          ''02''
                    WHEN ''2'' THEN
                         ''03''
                    ELSE
                         ''01''
                 END)) AS JSZH, ' ||
              EMC_PUB.F_GET_ETL_DIC_SQL(I_SRC_TB_ALIAS     => 'A',
                                        I_SRC_COL_NAME     => 'CURRENCY',
                                        I_TAR_OWNER        => 'DSC_BAS',
                                        I_TAR_TB_NAME      => 'T_JGMXLS',
                                        I_TAR_COL_NAME     => 'BZ',
                                        I_IS_ERR_OLD_VALUE => PUB_SYS.PKG_GCONST.YES,
                                        I_IS_TRAN_FLAG     => PUB_SYS.PKG_GCONST.YES) ||
              '  AS BZ, ' ||
              EMC_PUB.F_GET_ETL_DIC_SQL(I_SRC_TB_ALIAS     => 'B',
                                        I_SRC_COL_NAME     => 'CHANNEL',
                                        I_TAR_OWNER        => 'DSC_BAS',
                                        I_TAR_TB_NAME      => 'T_JGMXLS',
                                        I_TAR_COL_NAME     => 'WTFS',
                                        I_IS_ERR_OLD_VALUE => PUB_SYS.PKG_GCONST.YES,
                                        I_IS_TRAN_FLAG     => PUB_SYS.PKG_GCONST.YES) ||
              '  AS WTFS,' ||
              EMC_PUB.F_GET_NEW_YYB_SQL(I_SRC_TB_ALIAS => 'B', I_SRC_COL_NAME => 'BRANCH') ||
              ' AS YYB,
                 TRIM(B.SEAT) AS XWDM,
                 A.SECU_CODE AS ZQDM,
                 TRIM(A.SECU_NAME) AS ZQMC,' ||
              EMC_PUB.F_GET_ETL_DIC_SQL(I_SRC_TB_ALIAS     => 'A',
                                        I_SRC_COL_NAME     => 'SECU_CLS',
                                        I_TAR_OWNER        => 'DSC_BAS',
                                        I_TAR_TB_NAME      => 'T_JGMXLS',
                                        I_TAR_COL_NAME     => 'ZQLB',
                                        I_IS_ERR_OLD_VALUE => PUB_SYS.PKG_GCONST.YES,
                                        I_IS_TRAN_FLAG     => PUB_SYS.PKG_GCONST.YES) || '
                  AS ZQLB,
             CASE B.BIZ_CODE
         WHEN 151013 THEN
          ''66''
         WHEN 151012 THEN
          ''65''
       END AS JYLB,
                 B.SERIAL_NO AS CJBH,
                 ' || VN_TJRQ || ' AS CJRQ ,
                 /*TO_CHAR(OCCUR_DATE, ''HH24:MI:SS'') AS CJSJ,*/
                  substr(OCCUR_DATE,9,8) AS CJSJ,--20160826,��ɼ����⣬timestamp���Ͳɼ����ˣ��޸�����Ϊvarchar2(16)
                 NULL AS SBSJ,
                 1 AS CJBS,
                 ABS(NVL(B.SHARE_QTY,0)) AS CJSL,
                 0 AS CJJG,
                 0 AS JSJ,
                 0 AS LXJG,
                 abs(NVL(b.trd_cost,0)) cjje,
                 0 LXJE,
                 0 AS BZS1,
                 0 AS S1,
                 0 AS S2,
                 0 AS S3,
                 0 AS S4,
                 0 AS S5,
                 0 AS S6,
                 0 AS YSJE,
                 0 AS S11, --һ������_���ַ�
                 0 AS S12, --һ������_֤�ܷ�
                 0 AS S13,--NVL(C.FEE_ONE_GHF,0) AS S13, --һ������_������
                 0 AS S15,--NVL(C.FEE_ONE_QSF,0) AS S15, --һ������_�����
                 0 AS S16, --һ������_���ջ���
                 0 AS YSJE_YJ,
                 0 AS BCYE,
                 0 AS ZJMX_LSH,
                 0 AS DJJE,
                 0 AS YSSL,
                 0 AS BCSL,
                 0 AS BCDJSL,
                 0 AS DJSL,
                 0 AS BCYK,
                 B.SETT_DATE AS SETTLE_DATE,
                 0 AS RZRQ,' ||
              EMC_PUB.F_GET_NEW_YYB_SQL(I_SRC_TB_ALIAS => 'B', I_SRC_COL_NAME => 'BRANCH') ||
              ' AS FSYYB,
                 B.OP_USER AS LOGINID,
                 NULL AS FHGY,
                 0 AS JYJ,
                 TRIM(B.REMARK) AS ZY,
                 A.SECU_CLS AS GT_ZQLB,
                 B.BIZ_CODE AS GT_JYLB,
                 B.CHANNEL AS GT_WTFS
           FROM SRC_JZUXY.SECURITIES A, SRC_JZUXY.SHARE_LOG B
 WHERE A.SECU_INTL = B.SECU_INTL
   AND B.SETT_DATE =' || VN_TJRQ || '
   AND B.BIZ_CODE IN (151012, 151013)--�������ǵ���Ʒ����
   ) T1
        LEFT JOIN (SELECT YYB,SL
                     FROM DSC_CFG.T_YYSLCS
                    WHERE KSRQ<=' || VN_TJRQ || 'AND JSRQ>=' || VN_TJRQ ||
              ') T2 ON T1.YYB=T2.YYB
      ';
    --��¼SQL���нű�
    PUB_SYS.P_SQL_TRACE(O_N_CODE       => O_N_CODE,
                        O_S_NOTE       => O_S_NOTE,
                        I_S_PROC_OWNER => VS_USER,
                        I_S_PROC_NAME  => VS_PROC_NAME,
                        I_S_EXEC_SQL   => VS_SQL,
                        I_S_NOTE       => '��֤U������_������ϸ��ˮ��ת��[SHARE_LOG]');
    --ִ��SQL
    EXECUTE IMMEDIATE VS_SQL;
    VN_ROWCOUNT := SQL%ROWCOUNT;
    COMMIT;
    --��¼��־��ϸ�����ɹ�����
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '��Դ��[SRC_JZUXY.SHARE_LOG]��������ϴת����Ŀ���[DSC_BAS.T_XY_JGMXLS]�У�',
                              I_S_CHANGEDESC     => '�����¼��' || VN_ROWCOUNT || '����',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);
    EXECUTE IMMEDIATE 'TRUNCATE TABLE EMC_JZU.TMP_COMMON ';
   --��ȷ�ϣ�����
    UPDATE DSC_BAS.T_XY_JGMXLS A
       SET A.JYS = '6'
     WHERE A.JYS = '5'
       AND A.ZQLB = 'B0'
       AND A.BZ = '3';
    COMMIT;
    --��������֤ȯ���
    VN_STEP := VN_STEP + 1;
    --��¼��־��ϸ������ʼ
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '����Ŀ���[DSC_BAS.T_XY_JGMXLS]��֤ȯ���',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '�������У�',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
   --��ȷ�ϣ�����
    UPDATE DSC_BAS.T_XY_JGMXLS A
       SET ZQLB = CASE
                      WHEN A.JYS IN ('3', '4', '6') AND ZQLB = 'A0' THEN
                       'B0' --���ֳ�B��֤ȯ���
                      WHEN A.JYS = '2' AND ZQLB = 'L0' THEN
                       'J0' --���ֳ��Ϻ�����ͨ
                      ELSE
                       A.ZQLB
                  END
     WHERE A.JYS IN ('2', '3', '4', '6')
       AND ZQLB IN ('A0', 'L0');
    VN_ROWCOUNT := SQL%ROWCOUNT;
    COMMIT;
    --��¼��־��ϸ�����ɹ�����
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '����Ŀ���[DSC_BAS.T_XY_JGMXLS]��֤ȯ���',
                              I_S_CHANGEDESC     => '���¼�¼��' || VN_ROWCOUNT || '����',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);
    --��ȡZQPZ�ֶ�
    --�����ų���С�岿�ֵ�ZQPZ�ֶ�ֵ
    VN_STEP := VN_STEP + 1;
    --��¼��־��ϸ������ʼ
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '����Ŀ���[DSC_BAS.T_XY_JGMXLS]���ų���С�岿�ֵ�ZQPZ�ֶ�ֵ��',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '�������У�',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    --�ų���С��
    MERGE INTO DSC_BAS.T_XY_JGMXLS T
    USING (SELECT DISTINCT JYS, ZQLB, JB3_ZQPZ AS ZQPZ
             FROM DSC_CFG.T_ZQPZ_DY D
            WHERE D.JB3_ZQPZ <> '112'
              AND D.IS_VALID = '1') T1
    ON (T.JYS = T1.JYS AND T.ZQLB = T1.ZQLB)
    WHEN MATCHED THEN
        UPDATE
           SET ZQPZ = T1.ZQPZ
         WHERE NOT (T.ZQDM LIKE '002%' AND T.ZQLB = 'A0' AND T.JYS = '1');
    VN_ROWCOUNT := SQL%ROWCOUNT;
    COMMIT;
    --��¼��־��ϸ�����ɹ�����
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '����Ŀ���[DSC_BAS.T_XY_JGMXLS]���ų���С�岿�ֵ�ZQPZ�ֶ�ֵ��',
                              I_S_CHANGEDESC     => '���¼�¼��' || VN_ROWCOUNT || '����',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);
    --��ȡZQPZ�ֶ�
    --������С�岿�ֵ�ZQPZ�ֶ�ֵ
    VN_STEP := VN_STEP + 1;
    --��¼��־��ϸ������ʼ
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '����Ŀ���[DSC_BAS.T_XY_JGMXLS]����С�岿�ֵ�ZQPZ�ֶ�ֵ��',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '�������У�',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    --��С�岿��
    MERGE INTO DSC_BAS.T_XY_JGMXLS T
    USING (SELECT DISTINCT JYS, ZQLB, JB3_ZQPZ AS ZQPZ
             FROM DSC_CFG.T_ZQPZ_DY D
            WHERE D.JB3_ZQPZ = '112'
              AND D.IS_VALID = '1') T1
    ON (T.JYS = T1.JYS AND T.ZQLB = T1.ZQLB)
    WHEN MATCHED THEN
        UPDATE
           SET ZQPZ = T1.ZQPZ
         WHERE T.ZQDM LIKE '002%'
           AND T.ZQLB = 'A0'
           AND T.JYS = '1';
    VN_ROWCOUNT := SQL%ROWCOUNT;
    COMMIT;
    --��¼��־��ϸ�����ɹ�����
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '����Ŀ���[DSC_BAS.T_XY_JGMXLS]����С�岿�ֵ�ZQPZ�ֶ�ֵ��',
                              I_S_CHANGEDESC     => '���¼�¼��' || VN_ROWCOUNT || '����',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);
    --��ȡZQPZ�ֶ�
    --����֮ǰ����Ļ��𲿷ֵ�ZQPZ�ֶ�ֵ
    VN_STEP := VN_STEP + 1;
    --��¼��־��ϸ������ʼ
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '����Ŀ���[DSC_BAS.T_XY_JGMXLS]�л��𲿷ֵ�ZQPZ�ֶ�ֵ��',
                              I_S_CHANGEDESC     => NULL,
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => 1,
                              I_S_RETNOTE        => '�������У�',
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 0);
    --���»��𲿷�
    UPDATE DSC_BAS.T_XY_JGMXLS T
       SET T.ZQPZ = NVL((SELECT PARAM_VALUE
                          FROM EMC_PUB.T_PARAM_VALUE T1
                         WHERE T1.PARAM_KIND = '01' --�޶�����ΪETFƷ�ַ���
                           AND T1.PARAM_VALUE2 = T.ZQDM),
                        '222') --�鲻��ʱ��Ĭ��Ϊ222
     WHERE T.ZQPZ = 221;
    VN_ROWCOUNT := SQL%ROWCOUNT;
    COMMIT;
    --��¼��־��ϸ�����ɹ�����
    PUB_SYS.P_LOG_PROC_DETAIL(I_N_LOGID          => VN_LOGID,
                              I_N_LOGDETAILID    => VN_STEP,
                              I_S_USER           => VS_USER,
                              I_S_ACTIONDESC     => '����Ŀ���[DSC_BAS.T_XY_JGMXLS]�л��𲿷ֵ�ZQPZ�ֶ�ֵ��',
                              I_S_CHANGEDESC     => '���¼�¼��' || VN_ROWCOUNT || '����',
                              I_N_TJRQ           => VN_TJRQ,
                              I_N_RETCODE        => O_N_CODE,
                              I_S_RETNOTE        => O_S_NOTE,
                              I_S_FLAG           => I_N_REDO,
                              I_N_INSERTORUPDATE => 1);
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
END P_TRAN_XY_JGMXLS;