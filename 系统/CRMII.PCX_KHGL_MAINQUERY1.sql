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
      项目名称：   广发证券
      过程名称:    PCX_KHGL_MAINQUERY
      功能简述：   执行查询，分页等等
      参数：
             英文名称            中文名称                可能取值
             o_code              返回值
             o_note              返回信息
             o_hasrecordset      0/1                     整型，返回1，表示有返回o_result,否俄没有o_result(为空值)
             o_result            返回的数据集合          不一定会有，但通常用于返回结果集合。
             i_paging            是否分页                1表示分页，0表示不分页。但即使不分页的情况下，也会计算i_totalrows.
                                                         并不是什么是否都需要分页，看情形而言。
             i_pageNo            页码
             i_pageLength        页长
             i_totalrows         总行数                  -1，未知，表示需要计算总长。是In，out参数.如果i_totalrows>=0,则不再计算这个指，
                                                         在很翻页的时候，可以提高效率。
             SQLS                SQLs语句                请务必包含特定格式。
             haswhere            是否有where字句         默认是有.
             groupislast         类似group条件是
                                 最后一个部分            默认false;
             i_sort              排序字句                通常有.
      返回：
      算法：
      注意事项：
      数据源：
      修改记录;
      ------------------------------------------------------------------------
      操作人      操作时间                   操作
      lzf         20100-03-16                 新增
      lzf         20100-03-18                 修改，增加一个参数，控制where不是最后部分的情况。
                                              对于where 不是最后部分的情况，要求在插入
      lzf         20100-03-19                修改,增加对排序的支持.
      lzf         20100-04-01                修改,修正一个bug.
      郭新源      2010-12-02                 修改数据集为空时显示列问题
      周伟强      2012-05-08                 修改不分页时,排序语句拼接方式
      周伟强      2012-06-12                 修改，删除测试语句
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
        --计算总的行数
        CRMII.PRO_CAL_TOTALROWS_1(I_TOTALROWS, O_NOTE, SQLS, GROUPISLAST);
        IF I_TOTALROWS = 0 THEN
            --没有数据，则返回一个空壳
            O_CODE := 1;
            O_NOTE := '成功';
            IF O_HASRECORDSET = 1 THEN
                --如果需要返回数据，则直接数据.
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
            --只要异常，就不返回数据集合。
            O_CODE         := -1;
            O_NOTE         := '计算总行数出现异常:' || O_NOTE;
            O_HASRECORDSET := 0;
            
            RETURN;
        END IF;
    END IF;
    IF O_HASRECORDSET = 1 THEN
        --如果需要返回数据.
        V_SORTSQL := CASE
                         WHEN I_SORT IS NOT NULL THEN
                          ' order by ' || I_SORT
                         ELSE
                          NULL
                     END;
        IF I_PAGING = 1 AND I_TOTALROWS > I_PAGELENGTH THEN
            --如果分页
            --分页请处理有关
            VSTARTROW := (I_PAGENO - 1) * I_PAGELENGTH + 1;
            VENDROW   := I_PAGENO * I_PAGELENGTH;
            IF I_SORT IS NOT NULL THEN
                V_COMPLEX := TRUE;
            END IF;
            /*此处可以考虑省略，以节约时间*/
            /*If upper(substr(Trim(sqls),1,4))='WITH' Then
               b_hasWith:=True;
            Else
               b_hasWith:=False;
            End If; */
            ---处理 rownum r部分----------------------------------------------------------------------
            VSQLS := SQLS;
            IF B_HASWITH THEN
                V_WITHPOS := INSTR(VSQLS, '/**with**/');
                V_WITHSQL := SUBSTR(VSQLS, 1, V_WITHPOS - 1);
                VSQLS     := SUBSTR(VSQLS, V_WITHPOS + 10);
            END IF;
            IF V_COMPLEX = FALSE THEN
                --如果是最简单的（无排序，分组，等等的）
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
                --如果是复杂的
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
            ---处理with语句
            IF B_HASWITH THEN
                VSQLS := V_WITHSQL || '
                ' || VSQLS;
            END IF;
        ELSE
            --不分页
            IF COLLIST IS NOT NULL THEN
                VSQLS := 'select ' || COLLIST || ' from
                  (' || SQLS || V_SORTSQL || ')';
            ELSE
                VSQLS := SQLS || V_SORTSQL;
            END IF;
        END IF;
    END IF;
    O_CODE := 1;
    O_NOTE := '成功';
    
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