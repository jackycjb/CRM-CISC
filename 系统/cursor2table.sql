/*
20171111  �½���  sp��������α�ת�����û����Բ���sp����϶��sp�������ݲ�ѯ�ʹ���
*/

DECLARE
  TYPE ref_cursor IS REF CURSOR; 
  v_cursor ref_cursor; 
  v_cursor_id NUMBER; 
  v_cursor_column_count NUMBER;  
  v_cursor_column_desc_tab DBMS_SQL.DESC_TAB; 
  
  /*���޸Ĳ��֣�Ŀ������ƣ��������¼��*/
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
  /*ִ����ɺ�����ѯ��������[output]���гɹ���¼����ʧ��ԭ��*/
  -- select * from temp_cjb_temp1
  -- select count(1) from temp_cjb_temp1
-- select distinct Ӫҵ�� from temp_cjb_temp1
  /*���޸Ĳ��֣��洢���̵��ã��������α�����Ĳ��������֧�����֡��ַ����ͣ�����Ҫ�����ɸĽű���*/
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
                1, --��ѯ��ʽ(1|��Ա;2|�Ŷ�;3|Ӫҵ��)
                '809811001', --��ѯֵ(1|��ԱID;2|�Ŷ�ID;3|Ӫҵ��ID)
                null, --�ͻ����𣨴��մ���ȫ����
                null, --��ϵ����(���մ���ȫ��)
                null, --�ͻ�����ֵ�����ɸ�and exists(select 1 from HIS.T_KHTZ_TZMX TKHTZ where TKHTZ.KHH=TKHXX.ID AND TKHTZ.KHTZ='101')��䣩
                null, --�ͻ�Ⱥ������ͻ�Ⱥ�Զ��ŷָ�����,��:12,13,14��
                null, --֤ȯ����
                null, --��ѯ����(�����ͻ��ţ��ͻ��������ʲ���Χ���߼�����ɸѡ)
                null, --�����ѡ��(��|ȫ��;1|�������;2|�������)
                1 , --��ѯ����(1|�ͻ��б�;21|����ͻ��б�;22|�ֻ��ͻ��б�;3|Ա��΢��;4|�ͻ��б���)Ĭ��Ϊ1
--                6270, --������(TUSER.ID)
                1, --������(TUSER.ID)
                null, --������ ,�ڵ�������(i_cxcj = 4)��ʱ�����õ�
                null, --��ϵҵ������(���մ���ȫ��)
                null -- �Զ����������θ�ʽ [{id1=value1},{id2=value2}.......]
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
            null, --��ѯ�㼶(1|��ϵ;2|�Ŷ�;3|Ӫҵ��)
            null, --��ѯֵ(1|��ϵID;2|�Ŷ�ID;3|Ӫҵ��ID)
            20171117, --����
            1,--�ع���Լ���,--1 �ع� 2���ۻع�
            null, --��ϵ����(���մ���ȫ��)
            null, --Ա��
            null, --�ͻ�����ֵ�����ɸ�and exists(select 1 from HIS.T_KHTZ_TZMX TKHTZ where TKHTZ.KHH=TKHXX.ID AND TKHTZ.KHTZ='101')��䣩
            null, --�ͻ�Ⱥ������ͻ�Ⱥ�Զ��ŷָ�����,��:12,13,14��
            null, --I_KHKSRQ
            null, --I_KHJSRQ
            null, --I_KHH
            null, --I_ZQDM
            null, --I_ZQSLXX --֤ȯ��������
            null, --I_ZQSLSX --֤ȯ��������
            null, --I_ZQJEXX --֤ȯ�������
            null, --I_ZQJESX --֤ȯ�������
            1     --I_CXFS   --��ѯ��ʽ
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

