create or replace procedure pro_zxcp_htfqlc(o_code     out number,
                                            o_note     out varchar2,
                                            i_lcname    in varchar2,  --流程表单名
                                            i_lcid      in number,  --流程id
                                            i_wfname    in varchar2,  --流程名
                                            i_step1     in number,  --步骤1id
                                            i_initiator in number,  --发起人
                                            i_step2     in number,  --步骤2id
                                            i_action    in number,  --动作2id
                                            i_owner     in number    --执行人
                                            ) as
  /*------------------------------------------------------------------------
  zwq               2015/01/06                 新增
  chenjianbo        2018/07/25                 修改：增加按表单的'流程标题'(LCBT)字段更新工作流程'主题'的处理
  ------------------------------------------------------------------------*/
  v_entry_id number(10);
  v_step1_id number(10);
  v_step2_id number(10);
  v_date date := sysdate;
  V_COUNT number;
  V_LCBT varchar2(1000);
begin
  o_code := 1;
  o_note := '成功';
  
  --生成工作流实例id
  select seq_os_wfentry.nextval into v_entry_id from dual;
  --生成工作流实例
  insert into os_wfentry(id,name,state,initiator,init_date)
  values (v_entry_id,i_wfname,1,0,sysdate);
  --更新流程表单instid
  execute immediate 'update '||i_lcname||' set instid='||v_entry_id||' where id='||i_lcid;
  
  --生成步骤1id
  select seq_os_currentsteps.nextval into v_step1_id from dual;
  --生成步骤2id
  select seq_os_currentsteps.nextval into v_step2_id from dual;
  --将步骤1写入工作流历史步骤
  insert into os_historystep(id,entry_id,step_id,action_id,owner,start_date,finish_date,due_date,status,caller,flag)
  values(v_step1_id,v_entry_id,i_step1,i_action,i_initiator,v_date,v_date,null,'完成',0,0);
  --将步骤2写入工作流当前步骤
  insert into os_currentstep(id,entry_id,step_id,owner,start_date,status,flag)
  values (v_step2_id,v_entry_id,i_step2,i_owner,v_date,'待处理',0);
  
  --生成工作流当前执行人
  insert into lbwfcurrentowner(id,stepid,owner,flag)
  select s_lbwfcurrentowner.nextval,v_step2_id,i_owner,1
    from dual;
  
  --生成os_currentstep_prev
  insert into os_currentstep_prev(id,previous_id) values(v_step2_id,v_step1_id);
  commit;

  -- 以表单的'流程标题', 更新工作流的'主题'
  execute immediate 'select count(1) from all_tab_cols where table_name='''||i_lcname||''' and column_name=''LCBT''' into V_COUNT;
  if V_COUNT >0 then
    execute immediate 'select LCBT from '||i_lcname||' where id='||i_lcid into V_LCBT;
    update OS_WFENTRY set subject=V_LCBT where id = v_entry_id;
    COMMIT;
  end if;
  
exception
  when others then
    o_code := -1;
    o_note := sqlerrm;
end pro_zxcp_htfqlc;