CREATE OR REPLACE PROCEDURE SP_CJB_LC(I_LC_TYPE IN VARCHAR2) AS

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
    when 'PTKFGXRL' then --普通开发关系认领
      v_lc_name:='lcYXRYKHRLBD';
      v_wf_name:='WF_YXRYKHRL';
    when 'ICGXRL' then --IC关系认领
      v_lc_name:='lcICKHRL';
      v_wf_name:='WF_ICKHRLGZL';
    when 'XMSRSJWH' then --项目收入数据维护
      v_lc_name:='WO_XMSRSJWHBD';
      v_wf_name:='WF_XMSRSJWHBDGZL';

    else
      v_lc_name:=null;
      v_wf_name:=null;
  end case;

  if v_lc_name is not null then
    v_sql:='
      select T1.owner_name,T.* from (
      select substr(dbms_lob.substr(WF_definition,100,dbms_lob.instr(WF_definition,''id="''||c.step_id||''" name="'')),
      instr(dbms_lob.substr(WF_definition,100,dbms_lob.instr(WF_definition,''id="''||c.step_id||''" name="'')),''"'',1,3)+1,
      instr(dbms_lob.substr(WF_definition,100,dbms_lob.instr(WF_definition,''id="''||c.step_id||''" name="'')),''"'',1,4)-instr(dbms_lob.substr(WF_definition,100,dbms_lob.instr(WF_definition,''id="''||c.step_id||''" name="'')),''"'',1,3)-1
      ) owner_role,c.owner owner_id,e.name djr_name,b.state,a.* from '
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
      select '''','''','''','''',b.state,a.* from '
      ||v_lc_name||
      ' A,OS_WFENTRY B where a.instid=b.id and b.state<>1
      ';
  else
     v_sql:=null;
  end if;

    --create table
  if v_sql is not null then
    execute immediate 'create table '||v_temp_table_name||' as '||v_sql;
  end if;
END;
