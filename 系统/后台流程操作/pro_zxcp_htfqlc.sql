create or replace procedure pro_zxcp_htfqlc(o_code     out number,
                                            o_note     out varchar2,
                                            i_lcname    in varchar2,  --���̱���
                                            i_lcid      in number,  --����id
                                            i_wfname    in varchar2,  --������
                                            i_step1     in number,  --����1id
                                            i_initiator in number,  --������
                                            i_step2     in number,  --����2id
                                            i_action    in number,  --����2id
                                            i_owner     in number    --ִ����
                                            ) as
  /*------------------------------------------------------------------------
  zwq               2015/01/06                 ����
  chenjianbo        2018/07/25                 �޸ģ����Ӱ�����'���̱���'(LCBT)�ֶθ��¹�������'����'�Ĵ���
  ------------------------------------------------------------------------*/
  v_entry_id number(10);
  v_step1_id number(10);
  v_step2_id number(10);
  v_date date := sysdate;
  V_COUNT number;
  V_LCBT varchar2(1000);
begin
  o_code := 1;
  o_note := '�ɹ�';
  
  --���ɹ�����ʵ��id
  select seq_os_wfentry.nextval into v_entry_id from dual;
  --���ɹ�����ʵ��
  insert into os_wfentry(id,name,state,initiator,init_date)
  values (v_entry_id,i_wfname,1,0,sysdate);
  --�������̱�instid
  execute immediate 'update '||i_lcname||' set instid='||v_entry_id||' where id='||i_lcid;
  
  --���ɲ���1id
  select seq_os_currentsteps.nextval into v_step1_id from dual;
  --���ɲ���2id
  select seq_os_currentsteps.nextval into v_step2_id from dual;
  --������1д�빤������ʷ����
  insert into os_historystep(id,entry_id,step_id,action_id,owner,start_date,finish_date,due_date,status,caller,flag)
  values(v_step1_id,v_entry_id,i_step1,i_action,i_initiator,v_date,v_date,null,'���',0,0);
  --������2д�빤������ǰ����
  insert into os_currentstep(id,entry_id,step_id,owner,start_date,status,flag)
  values (v_step2_id,v_entry_id,i_step2,i_owner,v_date,'������',0);
  
  --���ɹ�������ǰִ����
  insert into lbwfcurrentowner(id,stepid,owner,flag)
  select s_lbwfcurrentowner.nextval,v_step2_id,i_owner,1
    from dual;
  
  --����os_currentstep_prev
  insert into os_currentstep_prev(id,previous_id) values(v_step2_id,v_step1_id);
  commit;

  -- �Ա���'���̱���', ���¹�������'����'
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