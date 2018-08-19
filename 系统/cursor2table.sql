/*
20171111  陈剑波  sp中输出的游标转换到用户表，以测试sp及结合多个sp进行数据查询和处理
*/

DECLARE
  TYPE ref_cursor IS REF CURSOR; 
  v_cursor ref_cursor; 
  v_cursor_id NUMBER; 
  v_cursor_column_count NUMBER;  
  v_cursor_column_desc_tab DBMS_SQL.DESC_TAB; 
  
  /*可修改部分：目标表名称，最大插入记录数*/
  v_temp_table_name varchar2(100):='temp_cjb_temp1';
  v_rows_limit number:=10000;

  v_i number;
  v_j number;
  v_column_list varchar2(2000);
  v_create_column_list varchar2(2000);
  v_cursor_value_str varchar2(2000);
  v_cursor_value_num number;
  v_row_value_str varchar2(32000);
  
  v_n1 number;
  v_n2 number;
  v_n3 number;
  v_s1 varchar2(2000);
BEGIN
  /*执行完成后结果查询：另：窗口[output]中有成功记录数或失败原因*/
  -- select * from temp_cjb_temp1
  -- select count(1) from temp_cjb_temp1
-- select distinct 营业部 from temp_cjb_temp1
  /*需修改部分：存储过程调用（必须有游标输出的参数，入参支持数字、字符类型，如需要其它可改脚本）*/
  --PCX_CFKHCX_NEW(v_cursor,8021,null,null,20100101,20171231,20070101,20171231,null,802111001,null,null,null,null);--802111001
  --CRM_XC.PCX_CXICGCYJ(v_cursor,201710,8021,null,null,null,null,null);
  --CRM_XC.pcx_cxkhxczb(v_cursor,201709,201710,8021,null,null,null,null,null,null,null,null,null,null,null,null,null);
  /*PCX_KHGL_KHLB(v_n1,--O_CODE
                v_s1,--O_NOTE
                v_n2,--O_HASRECORDSET
                v_cursor,
                null,--I_PAGING
                null,--I_PAGENO
                null,--I_PAGELENGTH
                v_n3,--I_TOTALROWS
                null,--I_SORT
                1, --查询方式(1|人员;2|团队;3|营业部)
                '809811001', --查询值(1|人员ID;2|团队ID;3|营业部ID)
                null, --客户级别（传空代表全部）
                null, --关系类型(传空代表全部)
                null, --客户特征值（若干个and exists(select 1 from HIS.T_KHTZ_TZMX TKHTZ where TKHTZ.KHH=TKHXX.ID AND TKHTZ.KHTZ='101')语句）
                null, --客户群（多个客户群以逗号分隔传入,如:12,13,14）
                null, --证券代码
                null, --查询条件(包含客户号，客户姓名，资产范围，高级条件筛选)
                null, --免打扰选项(空|全部;1|有免打扰;2|无免打扰)
                1 , --查询场景(1|客户列表;21|邮箱客户列表;22|手机客户列表;3|员工微信;4|客户列表导出)默认为1
--                6270, --操作人(TUSER.ID)
                1, --操作人(TUSER.ID)
                null, --导出列 ,在导出功能(i_cxcj = 4)的时候有用到
                null, --关系业务序列(传空代表全部)
                null -- 自定义条件传参格式 [{id1=value1},{id2=value2}.......]
                );*/
  /*PCX_HGHY( v_n1,--O_CODE
            v_s1,--O_NOTE
            v_n2,--O_HASRECORDSET
            v_cursor,
            null,--I_PAGING
            null,--I_PAGENO
            null,--I_PAGELENGTH
            v_n3,--I_TOTALROWS
            null,--I_SORT
            null, --查询层级(1|关系;2|团队;3|营业部)
            null, --查询值(1|关系ID;2|团队ID;3|营业部ID)
            20171117, --日期
            1,--回购合约类别,--1 回购 2报价回购
            null, --关系类型(传空代表全部)
            null, --员工
            null, --客户特征值（若干个and exists(select 1 from HIS.T_KHTZ_TZMX TKHTZ where TKHTZ.KHH=TKHXX.ID AND TKHTZ.KHTZ='101')语句）
            null, --客户群（多个客户群以逗号分隔传入,如:12,13,14）
            null, --I_KHKSRQ
            null, --I_KHJSRQ
            null, --I_KHH
            null, --I_ZQDM
            null, --I_ZQSLXX --证券数量下限
            null, --I_ZQSLSX --证券数量上限
            null, --I_ZQJEXX --证券金额下限
            null, --I_ZQJESX --证券金额上限
            1     --I_CXFS   --查询方式
          );*/
--  CRM_XC.pcx_cxICGCYJ(v_cursor,201711,8021,802161002,null,null,null,null);
  CRM_XC.pcx_cxICGCYJ(v_cursor,201711,8045,null,null,null,null,null);
--PCX_KHQJ_ZGK_KHXX(v_n1,v_s1,v_cursor,'22330700',null);
  -- select * from temp_cjb_temp1
                
  dbms_output.put_line(v_s1);                                          
  dbms_output.put_line(v_n1);                                          
  dbms_output.put_line(v_n2);                                          
  dbms_output.put_line(v_n3);                                          
               
  select count(1) into v_i from user_tables where table_name=upper(v_temp_table_name);
  if v_i>0 then
    execute immediate 'drop table '||v_temp_table_name ;
  end if;

  v_cursor_id := DBMS_SQL.to_cursor_number(v_cursor);
  DBMS_SQL.DESCRIBE_COLUMNS(v_cursor_id, v_cursor_column_count, v_cursor_column_desc_tab);
  v_create_column_list:='(';
  v_column_list:='(';
  FOR v_i IN 1..v_cursor_column_count LOOP      
    v_cursor_value_str:=replace(replace(v_cursor_column_desc_tab(v_i).col_name,')'),'(');
    case v_cursor_column_desc_tab(v_i).col_type
      when 2 then 
        v_create_column_list:=v_create_column_list||v_cursor_value_str||' NUMBER';
        v_column_list:=v_column_list||v_cursor_value_str;
        dbms_sql.define_column(v_cursor_id,v_i,v_cursor_value_num);
      else 
        v_create_column_list:=v_create_column_list||v_cursor_value_str||' varchar2(2000)';
        v_column_list:=v_column_list||v_cursor_value_str;
        dbms_sql.define_column(v_cursor_id,v_i,v_cursor_value_str,2000);
    end case;
    if v_i=v_cursor_column_count then
      v_create_column_list:=v_create_column_list||')';
      v_column_list:=v_column_list||')';
    else
      v_create_column_list:=v_create_column_list||',';
      v_column_list:=v_column_list||',';
    end if;
  END LOOP;     

  --create table
  execute immediate 'create table '||v_temp_table_name||v_create_column_list;

  -- insert records
  v_j:=0;
  while dbms_sql.fetch_rows(v_cursor_id)>0 loop
      v_j:=v_j+1;  
      v_row_value_str:=' values(';
      FOR v_i IN 1..v_cursor_column_count LOOP      
           case v_cursor_column_desc_tab(v_i).col_type
             when 2 then 
               dbms_sql.column_value(v_cursor_id,v_i,v_cursor_value_num);
               v_row_value_str:=v_row_value_str||nvl(v_cursor_value_num,0);
             else 
               dbms_sql.column_value(v_cursor_id,v_i,v_cursor_value_str);
               v_row_value_str:=v_row_value_str||''''||v_cursor_value_str||'''';
          end case;
          if v_i=v_cursor_column_count then
               v_row_value_str:=v_row_value_str||')';
          else
               v_row_value_str:=v_row_value_str||',';
          end if;
      END LOOP;
      v_cursor_value_str:='insert into '||v_temp_table_name||v_column_list||v_row_value_str;
      execute immediate v_cursor_value_str;
 
      if v_j>=v_rows_limit then 
        exit; 
      end if;
  end loop;
  
  DBMS_OUTPUT.PUT_LINE('total '||v_j||' rows affected'); 
  dbms_sql.close_cursor(v_cursor_id);
  commit;

  Exception
  When Others Then
    Rollback;
    dbms_sql.close_cursor(v_cursor_id);
    DBMS_OUTPUT.PUT_LINE(sqlerrm); 
END;

