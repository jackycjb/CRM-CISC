create or replace procedure pro_zxcp_htzxlc(o_code     out number,
                                            o_note     out varchar2,
                                            i_entry_id in varchar2,  --流程实例id
                                            i_step     in number,  --步骤id
                                            i_action   in number,  --动作id
                                            i_owner    in number  --执行人
                                            ) as
  /*------------------------------------------------------------------------
    created by zwq on 2015/01/06 后台执行流程
  ------------------------------------------------------------------------*/
  v_currentstep_id number(10);  --当前步骤id
  v_currentstep_newid number(10);  --新步骤id
  v_finish_date date := sysdate;
  
  v_cnt number(2);
begin
  o_code := 1;
  o_note := '成功';
  
  --获取当前步骤id
  select id into v_currentstep_id from os_currentstep where entry_id=i_entry_id;
  
  --生成工作流历史步骤
  insert into os_historystep(id,entry_id,step_id,action_id,owner,start_date,finish_date,due_date,status,caller,flag)
  select id,entry_id,step_id,i_action,owner,start_date,v_finish_date,due_date,'完成',0,flag
    from os_currentstep
   where id=v_currentstep_id;
  
  --生成os_historystep_prev
  insert into os_historystep_prev(id,previous_id)
  select id,previous_id
    from os_currentstep_prev
   where id=v_currentstep_id;
  
  --生成新步骤id
  select seq_os_currentsteps.nextval into v_currentstep_newid from dual;
  --更新当前步骤
  update os_currentstep set id=v_currentstep_newid,step_id=i_step,owner=i_owner,start_date=v_finish_date where id=v_currentstep_id;
  
  --更新os_currentstep_prev
  select count(1) into v_cnt from os_currentstep_prev where id=v_currentstep_id;
  if v_cnt=0 then
    insert into os_currentstep_prev(id,previous_id) values(v_currentstep_newid,v_currentstep_id);
  else
    update os_currentstep_prev set id=v_currentstep_newid,previous_id=v_currentstep_id where id=v_currentstep_id;
  end if;
  
  --更新工作流当前执行人
  delete lbwfcurrentowner where stepid=v_currentstep_id;
  insert into lbwfcurrentowner(id,stepid,owner,flag)
  select s_lbwfcurrentowner.nextval,v_currentstep_newid,i_owner,1
    from dual;
  
  commit;
  
exception
  when others then
	  rollback;
    o_code := -1;
    o_note := sqlerrm;
end pro_zxcp_htzxlc;