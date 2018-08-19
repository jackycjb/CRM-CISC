/*
drop table temp_tables
Create Global Temporary Table temp_tables On Commit Preserve Rows
as select row_number() over(order by num_rows desc) id,owner,table_name from all_tables where owner='EDC_ODM' and table_name like 'EC_%HIS' order by num_rows desc 
 
select * from temp_tables

drop table cjb_temp_comments
create table cjb_temp_comments as 
 select 9999 table_id, a.*,b.column_id from all_col_comments a,all_tab_columns b where 1=2

--select lpad(case table_id when 0 then null else table_id end,2,0) table_id,owner,table_name,column_name,comments,case column_id when 0 then null else column_id end column_id from cjb_temp_comments order by 1
select * from cjb_temp_comments order by table_id,column_id
--truncate table cjb_temp_comments
*/

declare 
       i integer:=1;
       table_c integer;
begin
    select count(*) into table_c from temp_tables;
--    select 3 into table_c from dual;
  while i<=table_c loop
           insert into cjb_temp_comments 
           select i, a.*,b.COLUMN_ID from all_col_comments a,all_tab_columns b, temp_tables c
           where a.owner=c.owner and a.table_name=c.table_name and c.id=i
           and a.OWNER=b.OWNER and a.TABLE_NAME=b.TABLE_NAME and a.COLUMN_NAME=b.COLUMN_NAME 
           order by b.COLUMN_ID;
           
           if i<>table_c then 
                      insert into cjb_temp_comments values(i,' ',' ',' ',' ',999);
                      insert into cjb_temp_comments values(i,' ',' ',' ',' ',999);
           end if;
                      
           i:=i+1;
  end loop;
    
end;
