create or replace procedure pro_zxcp_htqdlc(o_code      out number,
                                            o_note      out varchar2,
                                            i_lcname    in varchar2,  --���̱���
                                            i_lcid      in number,  --����id
                                            i_wfname    in varchar2,  --������
                                            i_step      in number,  --����id
                                            i_initiator in number  --������
                                            ) as
  /*------------------------------------------------------------------------
  ��Ŀ���ƣ�   
  ��������:    pro_zxcp_htqdlc
  ���ܼ�����   ��̨��������

  �޸ļ�¼
  ------------------------------------------------------------------------
  ������            ����ʱ��                   ����
  zwq	              2015/01/06                 ����
	chenjianbo        2018/07/25                 �޸ģ����Ӱ�����'���̱���'(LCBT)�ֶθ��¹�������'����'�Ĵ���
  ------------------------------------------------------------------------*/
  
	v_entry_id number(10);
  v_step_id number(10);
	V_LCBT varchar(1000);
	V_COUNT number(10);
	
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
  
  --���ɲ���id
  select seq_os_currentsteps.nextval into v_step_id from dual;
  --���ɹ�������ǰ����
  insert into os_currentstep(id,entry_id,step_id,owner,start_date,status,flag)
  values (v_step_id,v_entry_id,i_step,i_initiator,sysdate,'������',0);
  --���ɹ�������ǰִ����
  insert into lbwfcurrentowner(id,stepid,owner,flag)
  select s_lbwfcurrentowner.nextval,v_step_id,i_initiator,1
    from dual;

	COMMIT;
  
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
end pro_zxcp_htqdlc;
