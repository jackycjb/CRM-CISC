CREATE OR REPLACE PROCEDURE CRMII.PCX_KHGL_MAINQUERY1(O_CODE         OUT NUMBER,
                                               O_NOTE         OUT VARCHAR2,
                                               O_HASRECORDSET IN OUT NUMBER,
                                               O_RESULT       OUT SYS_REFCURSOR,
                                               I_PAGING       IN NUMBER,
                                               I_PAGENO       IN NUMBER,
                                               I_PAGELENGTH   IN NUMBER,
                                               I_TOTALROWS    IN OUT NUMBER,
                                               SQLS           IN VARCHAR2,
                                               COLLIST        IN VARCHAR2,
                                               HASWHERE       IN BOOLEAN := TRUE,
                                               GROUPISLAST    IN BOOLEAN := FALSE,
                                               I_SORT         IN VARCHAR2 := '',
                                               I_HASWITH      IN BOOLEAN := FALSE) IS
    /*-----------------------------------------------------------------------
      -- Created on 2010/3/16 4.0.0.1 by LUZHIFEI ,APEXSOFT
      -----------------------------------------------------------------------
      ��Ŀ���ƣ�   �㷢֤ȯ
      ��������:    PCX_KHGL_MAINQUERY
      ���ܼ�����   ִ�в�ѯ����ҳ�ȵ�
      ������
             Ӣ������            ��������                ����ȡֵ
             o_code              ����ֵ
             o_note              ������Ϣ
             o_hasrecordset      0/1                     ���ͣ�����1����ʾ�з���o_result,���û��o_result(Ϊ��ֵ)
             o_result            ���ص����ݼ���          ��һ�����У���ͨ�����ڷ��ؽ�����ϡ�
             i_paging            �Ƿ��ҳ                1��ʾ��ҳ��0��ʾ����ҳ������ʹ����ҳ������£�Ҳ�����i_totalrows.
                                                         ������ʲô�Ƿ���Ҫ��ҳ�������ζ��ԡ�
             i_pageNo            ҳ��
             i_pageLength        ҳ��
             i_totalrows         ������                  -1��δ֪����ʾ��Ҫ�����ܳ�����In��out����.���i_totalrows>=0,���ټ������ָ��
                                                         �ںܷ�ҳ��ʱ�򣬿������Ч�ʡ�
             SQLS                SQLs���                ����ذ����ض���ʽ��
             haswhere            �Ƿ���where�־�         Ĭ������.
             groupislast         ����group������
                                 ���һ������            Ĭ��false;
             i_sort              �����־�                ͨ����.
      ���أ�
      �㷨��
      ע�����
      ����Դ��
      �޸ļ�¼;
      ------------------------------------------------------------------------
      ������      ����ʱ��                   ����
      lzf         20100-03-16                 ����
      lzf         20100-03-18                 �޸ģ�����һ������������where������󲿷ֵ������
                                              ����where ������󲿷ֵ������Ҫ���ڲ���
      lzf         20100-03-19                �޸�,���Ӷ������֧��.
      lzf         20100-04-01                �޸�,����һ��bug.
      ����Դ      2010-12-02                 �޸����ݼ�Ϊ��ʱ��ʾ������
      ��ΰǿ      2012-05-08                 �޸Ĳ���ҳʱ,�������ƴ�ӷ�ʽ
      ��ΰǿ      2012-06-12                 �޸ģ�ɾ���������
    */
    VSQLS         VARCHAR2(32767);
    VSQLS1        VARCHAR2(32767);
    VSTARTROW     NUMBER;
    VENDROW       NUMBER;
    VPAGESQLWHERE VARCHAR2(32767);
    V_SORTSQL     VARCHAR2(1000);
    V_COMPLEX     BOOLEAN;
    ---
    B_HASWITH BOOLEAN := I_HASWITH;
    V_WITHSQL VARCHAR2(32767);
    V_WITHPOS NUMBER;
    /*v_othersql Varchar2(32767);
    v_startpos Number;
    v_endPos   Number;  */
    VRUNABLE INT;
BEGIN
    
    V_COMPLEX := GROUPISLAST;
    IF I_TOTALROWS = -1 THEN
        --�����ܵ�����
        CRMII.PRO_CAL_TOTALROWS_1(I_TOTALROWS, O_NOTE, SQLS, GROUPISLAST);
        IF I_TOTALROWS = 0 THEN
            --û�����ݣ��򷵻�һ���տ�
            O_CODE := 1;
            O_NOTE := '�ɹ�';
            IF O_HASRECORDSET = 1 THEN
                --�����Ҫ�������ݣ���ֱ������.
                IF COLLIST IS NOT NULL THEN
                    VSQLS := 'select ' || COLLIST || ' from
                    (' || SQLS || ')';
                ELSE
                    VSQLS := SQLS;
                END IF;
                OPEN O_RESULT FOR VSQLS;
            END IF;
            RETURN;
        ELSIF I_TOTALROWS = -1 THEN
            --ֻҪ�쳣���Ͳ��������ݼ��ϡ�
            O_CODE         := -1;
            O_NOTE         := '���������������쳣:' || O_NOTE;
            O_HASRECORDSET := 0;
            
            RETURN;
        END IF;
    END IF;
    IF O_HASRECORDSET = 1 THEN
        --�����Ҫ��������.
        V_SORTSQL := CASE
                         WHEN I_SORT IS NOT NULL THEN
                          ' order by ' || I_SORT
                         ELSE
                          NULL
                     END;
        IF I_PAGING = 1 AND I_TOTALROWS > I_PAGELENGTH THEN
            --�����ҳ
            --��ҳ�봦���й�
            VSTARTROW := (I_PAGENO - 1) * I_PAGELENGTH + 1;
            VENDROW   := I_PAGENO * I_PAGELENGTH;
            IF I_SORT IS NOT NULL THEN
                V_COMPLEX := TRUE;
            END IF;
            /*�˴����Կ���ʡ�ԣ��Խ�Լʱ��*/
            /*If upper(substr(Trim(sqls),1,4))='WITH' Then
               b_hasWith:=True;
            Else
               b_hasWith:=False;
            End If; */
            ---���� rownum r����----------------------------------------------------------------------
            VSQLS := SQLS;
            IF B_HASWITH THEN
                V_WITHPOS := INSTR(VSQLS, '/**with**/');
                V_WITHSQL := SUBSTR(VSQLS, 1, V_WITHPOS - 1);
                VSQLS     := SUBSTR(VSQLS, V_WITHPOS + 10);
            END IF;
            IF V_COMPLEX = FALSE THEN
                --�������򵥵ģ������򣬷��飬�ȵȵģ�
                VSQLS         := REPLACE(VSQLS, '/* rownum r,*/', ' rownum r,');
                VPAGESQLWHERE := CASE
                                     WHEN HASWHERE THEN
                                      ' and rownum<=' || VENDROW
                                     ELSE
                                      ' where rownum<=' || VENDROW
                                 END;
                VSQLS         := 'select ' || COLLIST || ' from
                (' || VSQLS || VPAGESQLWHERE ||
                                 ') where r>=' || VSTARTROW;
            ELSE
                --����Ǹ��ӵ�
                VSQLS := ' select ' || COLLIST || ' from
                 (
                    select rownum r,a.*
                      from
                      (' || VSQLS || V_SORTSQL || '
                      ) a
                      where rownum<=' || VENDROW || '
                  )
                  where r>=' || VSTARTROW;
            END IF;
            ---����with���
            IF B_HASWITH THEN
                VSQLS := V_WITHSQL || '
                ' || VSQLS;
            END IF;
        ELSE
            --����ҳ
            IF COLLIST IS NOT NULL THEN
                VSQLS := 'select ' || COLLIST || ' from
                  (' || SQLS || V_SORTSQL || ')';
            ELSE
                VSQLS := SQLS || V_SORTSQL;
            END IF;
        END IF;
    END IF;
    O_CODE := 1;
    O_NOTE := '�ɹ�';
    
            Insert Into test_para2(sj,proc,sqls) Values(Sysdate, 'PCX_KHGL_MAINQUERY1',vsqls);Commit;
    IF O_HASRECORDSET = 1 THEN
        ---select sys_context('userenv','ip_address')  Into clientIp from dual;
        /*If sys_context('userenv','ip_address')='192.168.0.173' Then
          Insert Into test_para Values(Sysdate,'4-PCX_KHGL_MAINQUERY',VSQLS); Commit;
        End If;*/
        /* select runable into vRunable
              from crmii.trunflag where rownum=1;
        if vRunAble=1 then
          Insert Into test_para(sj,proc,sqls) Values(Sysdate, 'PCX_KHGL_MAINQUERY',vsqls);Commit;
        end if;*/
        --delete from tempdata_xxl ;
        Insert Into test_para2(sj,proc,sqls) Values(Sysdate, 'PCX_KHGL_MAINQUERY1',vsqls);Commit;
        OPEN O_RESULT FOR VSQLS;
     /*  Insert Into test_para Values(Sysdate,'4-PCX_KHGL_MAINQUERY',VSQLS);
    commit;*/
    END IF;
   
EXCEPTION
    WHEN OTHERS THEN
        O_CODE         := -1;
        O_NOTE         := SQLERRM;
        O_HASRECORDSET := -1;
           Insert Into test_para2 Values(Sysdate,'4-PCX_KHGL_MAINQUERY',VSQLS);
    commit;
END PCX_KHGL_MAINQUERY1;