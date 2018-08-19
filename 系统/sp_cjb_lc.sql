CREATE OR REPLACE PROCEDURE CRMII.SP_CJB_LC(I_LC_TYPE IN VARCHAR2) AS
  v_temp_table_name varchar2(100):='temp_cjb_lc';
  v_sql  varchar2(30000);
  v_i number;
  v_lc_name varchar2(100);
  v_wf_name varchar2(100);
BEGIN
  select count(1) into v_i from user_tables where table_name=upper(v_temp_table_name);
  if v_i>0 then
    execute immediate 'drop table '||v_temp_table_name ;
  end if;
  case upper(I_LC_TYPE)
    when 'YGZC' then --员工注册
      v_lc_name:='lcYXRYZCBD';
      v_wf_name:='WF_YXRYZC';
    when 'YGZX' then --员工注销
      v_lc_name:='lcYXRYZXBD';
      v_wf_name:='WF_YXRYZX';
    when 'YZHKTSQ' then --域账号开通申请
      v_lc_name:='lcYGYZHKTSQ';
      v_wf_name:='WF_YGYZHKTSQGZL';
    when 'YGHYYB' then --员工换营业部
      v_lc_name:='LCRYHYYBBD';
      v_wf_name:='WF_RYHYYB';
    when 'YGQXSQ' then --员工权限申请
      v_lc_name:='lcJSSQHBG';
      v_wf_name:='WF_JSSQHBGGZL';
    when 'YGLJTZ' then --员工类级调整
      v_lc_name:='lcYXRYJBTZBD';
      v_wf_name:='WF_YXRYJBTZ';
    when 'PTKFGXRL' then --普通开发关系认领
      v_lc_name:='lcYXRYKHRLBD';
      v_wf_name:='WF_YXRYKHRL';
    when 'PTKFGXJC' then --普通开发关系解除
      v_lc_name:='lcYXRYKHGXZX';
      v_wf_name:='WF_YXRYKHGXZX';
    when 'PTKFGXZY' then --普通开发关系转移
      v_lc_name:='lcYXRYKHGXZYBD';
      v_wf_name:='WF_YXRYKHGXZY';
    when 'XYKFGXRL' then --信用开发关系认领
      v_lc_name:='lcRZRQKFKHRL';
      v_wf_name:='WF_RZRQKFKHRL';
    when 'ICGXRL' then --IC关系认领
      v_lc_name:='lcICKHRL';
      v_wf_name:='WF_ICKHRLGZL';
    when 'ICGXJC' then --IC关系解除
      v_lc_name:='lcICKHZX';
      v_wf_name:='WF_ICKHZXGZL';
    when 'ICGXZY' then --IC关系转移
      v_lc_name:='lcICGXZY';
      v_wf_name:='WF_ICGXZYGZL';
    when 'WDKHFC' then --我的客户分成
      v_lc_name:='lcRYFCBD';
      v_wf_name:='WF_ICKHGXRYFCGZL';
    when 'XMSRSJWH' then --项目收入数据维护
      v_lc_name:='WO_XMSRSJWHBD';
      v_wf_name:='WF_XMSRSJWHBDGZL';
    when 'JGCRM' then --协同项目
      v_lc_name:='WO_JGCRM';
      v_wf_name:='WF_JGCRMGZL';
    when 'CFKHRD' then --财富客户认定
      v_lc_name:='LCCFKHRD';
      v_wf_name:='WF_CFKHRDGZL';
    when 'GLJYTJBS' then --关联交易统计报送
      v_lc_name:='LCGLJYTJ';
      v_wf_name:='WF_GLJYTJGZL';
    else
      v_lc_name:=null;
      v_wf_name:=null;
  end case;
  case upper(I_LC_TYPE)
  when 'GLJYTJBS' then --关联交易统计报送; 无djr编码字段，用tjr代替; 特殊处理
    v_sql:='
      select T1.owner_name,T.* from (
      select substr(dbms_lob.substr(WF_definition,100,dbms_lob.instr(WF_definition,''id="''||c.step_id||''" name="'')),
      instr(dbms_lob.substr(WF_definition,100,dbms_lob.instr(WF_definition,''id="''||c.step_id||''" name="'')),''"'',1,3)+1,
      instr(dbms_lob.substr(WF_definition,100,dbms_lob.instr(WF_definition,''id="''||c.step_id||''" name="'')),''"'',1,4)-instr(dbms_lob.substr(WF_definition,100,dbms_lob.instr(WF_definition,''id="''||c.step_id||''" name="'')),''"'',1,3)-1
      ) owner_role,c.owner owner_id,e.name tjr_name,f.name spr_name,case b.state when 1 then ''处理中'' when 3 then ''已终止'' when 4 then ''已完成'' end state,
      case a.spzt when -1 then ''审批不通过'' when 0 then ''未审批'' when 1 then ''已审批'' end spzt_note,a.* from '
      ||v_lc_name||
      ' A left join tuser e on to_char(e.id)=to_char(a.tjr)
      left join tuser f on to_char(f.id)=to_char(a.spr),
      OS_WFENTRY B,OS_CURRENTSTEP C,OS_WORKFLOWDEFS d
      where wf_name='''
      ||v_wf_name||
      ''' and a.instid=b.id and c.entry_id=a.instid order by a.id desc
      ) T,(
      select to_char(wm_concat(e.name)) owner_name,T2.entry_id from (
      select c.owner owner_id,c.entry_id from OS_WFENTRY B,OS_CURRENTSTEP C
      where c.entry_id=b.id) T2
      left join tuser e on instr(T2.owner_id,e.id)>0 and e.id<>0 group by T2.entry_id
      ) T1 where t.instid=t1.entry_id
      union all
      select '''','''','''',e.name tjr_name,f.name spr_name,case b.state when 1 then ''处理中'' when 3 then ''已终止'' when 4 then ''已完成'' end state,
      case a.spzt when -1 then ''审批不通过'' when 0 then ''未审批'' when 1 then ''已审批'' end spzt_note,a.* from '
      ||v_lc_name||
      ' A 
      left join tuser e on to_char(e.id)=to_char(a.tjr) 
      left join tuser f on to_char(f.id)=to_char(a.spr), 
      OS_WFENTRY B where a.instid=b.id and b.state<>1 order by 6,8 desc
      ';
  when 'JGCRM' then --协同项目; 无djr编码字段，用clr代替; 特殊处理
    v_sql:='
      select T1.owner_name,T.* from (
      select substr(dbms_lob.substr(WF_definition,100,dbms_lob.instr(WF_definition,''id="''||c.step_id||''" name="'')),
      instr(dbms_lob.substr(WF_definition,100,dbms_lob.instr(WF_definition,''id="''||c.step_id||''" name="'')),''"'',1,3)+1,
      instr(dbms_lob.substr(WF_definition,100,dbms_lob.instr(WF_definition,''id="''||c.step_id||''" name="'')),''"'',1,4)-instr(dbms_lob.substr(WF_definition,100,dbms_lob.instr(WF_definition,''id="''||c.step_id||''" name="'')),''"'',1,3)-1
      ) owner_role,c.owner owner_id,a.djr djr_name,e.name clr_name,case b.state when 1 then ''处理中'' when 3 then ''已终止'' when 4 then ''已完成'' end state,f.note spzt_note,a.* from '
      ||v_lc_name||
      ' A left join tuser e on to_char(e.id)=to_char(a.clr),OS_WFENTRY B,OS_CURRENTSTEP C,OS_WORKFLOWDEFS d,(select ibm, note from TXTDM where fldm=''JGCRMLCSPZT'') f
      where wf_name='''
      ||v_wf_name||
      ''' and a.instid=b.id and c.entry_id=a.instid and a.spzt=f.ibm order by a.id desc
      ) T,(
      select to_char(wm_concat(e.name)) owner_name,T2.entry_id from (
      select c.owner owner_id,c.entry_id from OS_WFENTRY B,OS_CURRENTSTEP C
      where c.entry_id=b.id) T2
      left join tuser e on instr(T2.owner_id,e.id)>0 and e.id<>0 group by T2.entry_id
      ) T1 where t.instid=t1.entry_id
      union all
      select '''','''','''',a.djr djr_name,e.name clr_name,case b.state when 1 then ''处理中'' when 3 then ''已终止'' when 4 then ''已完成'' end state,f.note spzt_note,a.* from '
      ||v_lc_name||
      ' A 
      left join tuser e on to_char(e.id)=to_char(a.clr), 
      OS_WFENTRY B,(select ibm, note from TXTDM where fldm=''JGCRMLCSPZT'') f where a.instid=b.id and b.state<>1 and a.spzt=f.ibm order by 6,8 desc
      ';
    when 'WDKHFC' then --我的客户分成; 无djr字段，用sqry代替；且只会有1个owner; 特殊处理
    v_sql:='
      select T1.owner_name,T.* from (
      select substr(dbms_lob.substr(WF_definition,100,dbms_lob.instr(WF_definition,''id="''||c.step_id||''" name="'')),
      instr(dbms_lob.substr(WF_definition,100,dbms_lob.instr(WF_definition,''id="''||c.step_id||''" name="'')),''"'',1,3)+1,
      instr(dbms_lob.substr(WF_definition,100,dbms_lob.instr(WF_definition,''id="''||c.step_id||''" name="'')),''"'',1,4)-instr(dbms_lob.substr(WF_definition,100,dbms_lob.instr(WF_definition,''id="''||c.step_id||''" name="'')),''"'',1,3)-1
      ) owner_role,c.owner owner_id,e.name djr_name,case b.state when 1 then ''处理中'' when 3 then ''已终止'' when 4 then ''已完成'' end state,a.* from '
      ||v_lc_name||
      ' A left join tuser e on e.id=a.sqry,OS_WFENTRY B,OS_CURRENTSTEP C,OS_WORKFLOWDEFS d
      where wf_name='''
      ||v_wf_name||
      ''' and a.instid=b.id and c.entry_id=a.instid order by a.id desc
      ) T,(
      select to_char(wm_concat(e.name)) owner_name,T2.entry_id from (
      select c.owner owner_id,c.entry_id from OS_WFENTRY B,OS_CURRENTSTEP C
      where c.entry_id=b.id) T2
      left join tuser e on instr(T2.owner_id,e.id)>0 and e.id<>0 group by T2.entry_id
      ) T1 where t.instid=t1.entry_id
      union all
      select '''','''','''',e.name,case b.state when 1 then ''处理中'' when 3 then ''已终止'' when 4 then ''已完成'' end state,a.* from OS_WFENTRY B,'
      ||v_lc_name||
      ' A 
      left join tuser e on e.id=a.sqry 
      where a.instid=b.id and b.state<>1 order by 5,6 desc
      ';
  else
    v_sql:='
      select T1.owner_name,T.* from (
      select substr(dbms_lob.substr(WF_definition,100,dbms_lob.instr(WF_definition,''id="''||c.step_id||''" name="'')),
      instr(dbms_lob.substr(WF_definition,100,dbms_lob.instr(WF_definition,''id="''||c.step_id||''" name="'')),''"'',1,3)+1,
      instr(dbms_lob.substr(WF_definition,100,dbms_lob.instr(WF_definition,''id="''||c.step_id||''" name="'')),''"'',1,4)-instr(dbms_lob.substr(WF_definition,100,dbms_lob.instr(WF_definition,''id="''||c.step_id||''" name="'')),''"'',1,3)-1
      ) owner_role,c.owner owner_id,e.name djr_name,case b.state when 1 then ''处理中'' when 3 then ''已终止'' when 4 then ''已完成'' end state,a.* from '
      ||v_lc_name||
      ' A,OS_WFENTRY B,OS_CURRENTSTEP C,OS_WORKFLOWDEFS d,tuser e
      where wf_name='''
      ||v_wf_name||
      ''' and a.instid=b.id and c.entry_id=a.instid and e.id=a.djr order by a.id desc
      ) T,(
      select to_char(wm_concat(e.name)) owner_name,T2.entry_id from (
      select c.owner owner_id,c.entry_id from OS_WFENTRY B,OS_CURRENTSTEP C
      where c.entry_id=b.id) T2
      left join tuser e on instr(T2.owner_id,e.id)>0 and e.id<>0 group by T2.entry_id
      ) T1 where t.instid=t1.entry_id
      union all
      select '''','''','''',e.name,case b.state when 1 then ''处理中'' when 3 then ''已终止'' when 4 then ''已完成'' end state,a.* from OS_WFENTRY B,'
      ||v_lc_name||
      ' A 
      left join tuser e on e.id=a.djr 
      where a.instid=b.id and b.state<>1 order by 5,6 desc
      ';
  end case;
  if v_lc_name is null then
    v_sql:=null;
  end if;
/*    
      delete test_para4 where proc='cjb';
      insert into test_para4 values(sysdate,'cjb',v_sql);
      commit;
*/  
    --create table
  if v_sql is not null then
    execute immediate 'create table '||v_temp_table_name||' as '||v_sql;
  end if;
END;