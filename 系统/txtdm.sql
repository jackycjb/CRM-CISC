prompt PL/SQL Developer import file
prompt Created on 2017��11��17�� by Administrator
set feedback off
set define off
prompt Disabling triggers for TXTDM...
alter table TXTDM disable all triggers;
prompt Loading TXTDM...
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDJSLX', '�ɶ���������', 1, '1', '��֤���ʻ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDJYQX', '�ɶ�����Ȩ��', 1, '1', '��������Ȩ��', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDJYQX', '�ɶ�����Ȩ��', 2, '2', '�ع�����', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDJYQX', '�ɶ�����Ȩ��', 4, '4', '�ع���ȯ', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDJYQX', '�ɶ�����Ȩ��', 8, '8', 'ETF����', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDJYQX', '�ɶ�����Ȩ��', 16, '16', 'Ȩ֤����', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDJYQX', '�ɶ�����Ȩ��', 32, '32', '���屨��ת��', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDJYQX', '�ɶ�����Ȩ��', 64, '64', '��ҵ��', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDJYQX', '�ɶ�����Ȩ��', 128, '128', 'רҵͶ����ծȯ', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDLB', '�ɶ�����', 1, '1', '���ڸ���Ͷ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDLB', '�ɶ�����', 2, '2', '���ڻ���Ͷ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDLB', '�ɶ�����', 3, '3', '�������Ͷ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDLB', '�ɶ�����', 4, '4', '�������Ͷ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDLB', '�ɶ�����', 5, '5', 'ȯ����Ӫ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDLB', '�ɶ�����', 6, '6', '����ɶ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDSX', '�ɶ�����', 1, '1', '���ɶ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDSX', '�ɶ�����', 2, '2', '����ָ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDSX', '�ɶ�����', 4, '4', '��ֹ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDSX', '�ɶ�����', 8, '8', '��ֹ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDSX', '�ɶ�����', 16, '16', '�ع�ָ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDSX', '�ɶ�����', 32, '32', '����ָ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDSX', '�ɶ�����', 64, '64', '��ֹ��ָ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDSX', '�ɶ�����', 128, '128', '��ֹת�й�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDSX', '�ɶ�����', 256, '256', '����ί��ָ���ɶ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDSX', '�ɶ�����', 1024, '1024', '����Ȩ֤����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDZT', '�ɶ�״̬', 0, '0', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDZT', '�ɶ�״̬', 1, '1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDZT', '�ɶ�״̬', 2, '2', '��ʧ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDZT', '�ɶ�״̬', 3, '3', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDZT', '�ɶ�״̬', 6, '6', 'С������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDZT', '�ɶ�״̬', 7, '7', '���ϸ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDZT', '�ɶ�״̬', 8, '8', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GFLX', '�ɷ�����', 1, '1', '���ҹ�', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GFLX', '�ɷ�����', 2, '2', '���з��˹�', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GFLX', '�ɷ�����', 4, '4', '���ڷ��˹�', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GFLX', '�ɷ�����', 8, '8', '��Ȼ�˷����˹�', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GFLX', '�ɷ�����', 16, '16', '�ڲ�ְ����', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GFLX', '�ɷ�����', 32, '32', '���ȹ�', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GFLX', '�ɷ�����', 64, '64', '���������ʹ�', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GFSX', '�ʻ��淶����', 0, 'code1', 'ɢ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GFSX', '�ʻ��淶����', 1, 'code1', '�л�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GFSX', '�ʻ��淶����', 2, 'code2', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GFSX', '�ʻ��淶����', 3, 'code3', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GFSX', '�ʻ��淶����', 4, 'code4', '��Ӫ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GFSX', '�ʻ��淶����', 5, 'code5', '�ʲ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GFSX', '�ʻ��淶����', 6, 'code6', '������������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GFSX', '�ʻ��淶����', 8, 'code8', 'VIP', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GFSX', '�ʻ��淶����', 9, 'code9', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GFSX', '�ʻ��淶����', 10, 'code10', '�ع�ר��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GFSX', '�ʻ��淶����', 11, 'code11', '�ʻ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GFSX', '�ʻ��淶����', 12, 'code12', '�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GFSX', '�ʻ��淶����', 15, 'code15', 'VIPϯλ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GFSX', '�ʻ��淶����', 16, 'code16', 'С�����߻�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GFSX', '�ʻ��淶����', 17, 'code17', '���ϸ��ʽ��ʻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GFSX', '�ʻ��淶����', 18, 'code18', '���ϸ��ʽ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GFSX', '�ʻ��淶����', 19, 'code19', '���ϸ�֤ȯ�ʻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GFSX', '�ʻ��淶����', 20, 'code20', '����С�����߻�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GGJYPH', '�۹ɽ�������', 1, '1', '�³ɽ����(��)', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GGJYPH', '�۹ɽ�������', 2, '2', '�½��׿ͻ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GGJYPH', '�۹ɽ�������', 3, '3', '�¾�Ӷ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GGKHPH', '�۹ɿ�������', 1, '1', '�ۼƿ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GGKHPH', '�۹ɿ�������', 2, '2', '����������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GGKHPH', '�۹ɿ�������', 3, '3', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GGLX', '��������', 1, '1', 'Ӫ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GGLX', '��������', 2, '2', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GGLX', '��������', 3, '3', '��ƻ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_CGYHYQY', '�߼���ѯ_���������ǩԼ', 2, '6002', 'ũ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_CGYHYQY', '�߼���ѯ_���������ǩԼ', 3, '6007', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_CGYHYQY', '�߼���ѯ_���������ǩԼ', 4, '6005', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_CGYHYQY', '�߼���ѯ_���������ǩԼ', 5, '6004', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_CGYHYQY', '�߼���ѯ_���������ǩԼ', 9, '6000', '�ַ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_CGYHYQY', '�߼���ѯ_���������ǩԼ', 11, '6003', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_CGYHYQY', '�߼���ѯ_���������ǩԼ', 15, '5007', '��ҵ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_CGYHYQY', '�߼���ѯ_���������ǩԼ', 20, '6006', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_FWCP', '���ܵ������ײ�', 701, '701', '���ܵ������ײ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_FWCP', '���ܵ������ײ�', 702, '702', '����Ѷ�����ײ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_FWCP', '���ܵ������ײ�', 703, '703', '����������ײ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_FWCP', '���ܵ������ײ�', 721, '721', '���Ǹ������ײ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_FWCP', '���ܵ������ײ�', 722, '722', '��������ײ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_FWCP', '���ܵ������ײ�', 701, '701', '���ܵ������ײ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_FWCP', '���ܵ������ײ�', 721, '721', '���Ǹ������ײ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_FWCP', '���ܵ������ײ�', 702, '702', '����Ѷ�����ײ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_FWCP', '���ܵ������ײ�', 703, '703', '����������ײ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_FWCP', '���ܵ������ײ�', 722, '722', '��������ײ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_FWCP', '���ܵ������ײ�', 701, '701', '���ܵ������ײ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_FWCP', '���ܵ������ײ�', 721, '721', '���Ǹ������ײ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_FWCP', '���ܵ������ײ�', 702, '702', '����Ѷ�����ײ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_FWCP', '���ܵ������ײ�', 703, '703', '����������ײ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_FWCP', '���ܵ������ײ�', 722, '722', '��������ײ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_FWCP', '���ܵ������ײ�', 701, '701', '���ܵ������ײ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_FWCP', '���ܵ������ײ�', 721, '721', '���Ǹ������ײ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_FWCP', '���ܵ������ײ�', 702, '702', '����Ѷ�����ײ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_FWCP', '���ܵ������ײ�', 703, '703', '����������ײ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_FWCP', '���ܵ������ײ�', 722, '722', '��������ײ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_FWCP', '���ܵ������ײ�', 701, '701', '���ܵ������ײ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_FWCP', '���ܵ������ײ�', 721, '721', '���Ǹ������ײ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_FWCP', '���ܵ������ײ�', 702, '702', '����Ѷ�����ײ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_FWCP', '���ܵ������ײ�', 703, '703', '����������ײ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_FWCP', '���ܵ������ײ�', 722, '722', '��������ײ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_FWCPGJCX_FWCP', '����Ѷ�����ײ�', 702, '702', '����Ѷ�����ײ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_GGQQ_JYFX', '�߼���ѯ_������Ȩ_�������', 1, '1', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_GGQQ_JYFX', '�߼���ѯ_������Ȩ_�������', 2, '2', '������_���뿪��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_GGQQ_JYFX', '�߼���ѯ_������Ȩ_�������', 3, '3', '������_����ƽ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_GGQQ_JYFX', '�߼���ѯ_������Ȩ_�������', 4, '4', '������_��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_GGQQ_JYFX', '�߼���ѯ_������Ȩ_�������', 5, '5', '������_����ƽ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_GGQQ_JYFX', '�߼���ѯ_������Ȩ_�������', 6, '6', '������_���ҿ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_GGQQ_JYFX', '�߼���ѯ_������Ȩ_�������', 7, '7', '������_����ƽ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_GXLX', '�߼���ѯ_��ϵ����', 1, '1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_GXLX', '�߼���ѯ_��ϵ����', 2, '2', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_JYFX', '�߼���ѯ_�������', 1, '1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_JYFX', '�߼���ѯ_�������', 2, '2', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_KHQD', '�߼���ѯ_��������', 1, '1', '�ٹ񿪻�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_KHQD', '�߼���ѯ_��������', 2, '2', '���ֳ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_SFDZ', '�߼���ѯ_�Ƿ���', 1, '1', '�Ѷ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_SFDZ', '�߼���ѯ_�Ƿ���', 2, '2', 'δ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_TJR', '�Ƽ����ֻ���', 1, '1', '�Ƽ����ֻ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_TJR', '�Ƽ����ֻ���', 2, '2', '�Ƽ�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_TJR', '�Ƽ����ֻ���', 1, '1', '�Ƽ����ֻ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_TJR', '�Ƽ����ֻ���', 2, '2', '�Ƽ�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_TJZQ', 'ͳ������', 1, '1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_TJZQ', 'ͳ������', 2, '2', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_TJZQ', 'ͳ������', 3, '3', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_TJZQ', 'ͳ������', 4, '4', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_ZCLX', '�߼���ѯ_�ʲ�����', 1, '1', '���ʲ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_ZCLX', '�߼���ѯ_�ʲ�����', 2, '2', '�ɻ��ʲ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_ZCLX', '�߼���ѯ_�ʲ�����', 3, '3', '�����ʲ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_ZCLX', '�߼���ѯ_�ʲ�����', 4, '4', '������Ȩ�ʲ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_ZHLX', '�߼���ѯ_�˻�����', 1, '1', '�ϲ��˻�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_ZHLX', '�߼���ѯ_�˻�����', 2, '2', '�ɻ��˻�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_ZHLX', '�߼���ѯ_�˻�����', 3, '3', '�����˻�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GPCFG', '��Ʊ�ط��', 1, '1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GPCFG', '��Ʊ�ط��', 2, '2', '�г���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GPFXCSNL', '��Ʊ���ճ�������', 1, '1', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GPFXCSNL', '��Ʊ���ճ�������', 2, '2', '�Ƚ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GPFXCSNL', '��Ʊ���ճ�������', 3, '3', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GPFXCSNL', '��Ʊ���ճ�������', 4, '4', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GPFXCSNL', '��Ʊ���ճ�������', 5, '5', 'ƽ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GRJGBZ', '����/������־', 0, '0', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GRJGBZ', '����/������־', 1, '1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GRZJLX', '����֤������', 0, '0', '���֤', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GRZJLX', '����֤������', 1, '1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GRZJLX', '����֤������', 2, '2', '����֤', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GRZJLX', '����֤������', 3, '3', 'ʿ��֤', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GRZJLX', '����֤������', 4, '4', '����֤', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GRZJLX', '����֤������', 5, '5', '���ڱ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GRZJLX', '����֤������', 6, '6', '�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GRZJLX', '����֤������', 7, '7', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GRZJLX', '����֤������', 8, '8', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GT_MMYZFS', '��̨_������֤��ʽ', 0, '0', '����֤', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GT_MMYZFS', '��̨_������֤��ʽ', 1, '1', '��̨ϵͳ�ʽ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GT_MMYZFS', '��̨_������֤��ʽ', 2, '2', '��̨ϵͳ��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GT_MMYZFS', '��̨_������֤��ʽ', 9, '9', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GT_ZHSX_ZJ', '��̨_�ʽ��˻�����', 2, '2', '��ֹ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GT_ZHSX_ZJ', '��̨_�ʽ��˻�����', 4, '4', '��ֹȡ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GT_ZHSX_ZJ', '��̨_�ʽ��˻�����', 8, '8', '��ֹ��ת֤', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GT_ZHSX_ZJ', '��̨_�ʽ��˻�����', 16, '16', '��ֹ֤ת��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GT_ZHSX_ZJ', '��̨_�ʽ��˻�����', 32, '32', '��ֹ�����ʽ���ת', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GT_ZJJSLX', '�ʽ��������', 1, '1', '��֤�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GT_ZJJSLX', '�ʽ��������', 2, '2', '����������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GT_ZJZHLB', '��̨_�ʽ��˻����', 1, '1', '�����ͨ�ʽ��˻�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GT_ZJZHLB', '��̨_�ʽ��˻����', 2, '1', '��������ʽ��˻�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GT_ZJZHLB', '��̨_�ʽ��˻����', 3, '2', '�Ǵ�������˻�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GT_ZJZHLB', '��̨_�ʽ��˻����', 4, '2', '֧�����˻�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GT_ZJZHZT', '��̨_�ʽ��˻�״̬', 0, '0', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GT_ZJZHZT', '��̨_�ʽ��˻�״̬', 1, '1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GT_ZJZHZT', '��̨_�ʽ��˻�״̬', 2, '2', '��ʧ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GT_ZJZHZT', '��̨_�ʽ��˻�״̬', 3, '3', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GT_ZJZHZT', '��̨_�ʽ��˻�״̬', 4, '4', 'Ԥָ���������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GT_ZJZHZT', '��̨_�ʽ��˻�״̬', 6, '6', 'С������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GT_ZJZHZT', '��̨_�ʽ��˻�״̬', 7, '7', '���ϸ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GT_ZJZHZT', '��̨_�ʽ��˻�״̬', 9, '9', '��˾���ϸ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GT_ZJZHZT', '��̨_�ʽ��˻�״̬', 99, '99', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GX', '��ϵ', 1, '1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GX', '��ϵ', 2, '2', '��ĸ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GX', '��ϵ', 3, '3', '��Ů', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GX', '��ϵ', 4, '4', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GX', '��ϵ', 5, '5', 'ͬ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GX', '��ϵ', 6, '6', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GX', '��ϵ', 7, '7', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GX', '��ϵ', 8, '8', 'ʵ�ʿ����ˣ���ҵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GXFS', '���·�ʽ', 1, '1', '�ֻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GXFS', '���·�ʽ', 2, '2', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GXFS', '���·�ʽ', 3, '3', '�绰����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GXFS', '���·�ʽ', 4, '4', '��ַ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GXFS', '���·�ʽ', 5, '5', '���֤', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GXFS', '���·�ʽ', 6, '6', '�޷�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GXFS', '���·�ʽ', 7, '7', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GXLX', '��ϵ����', 1, '1', 'ͬ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GXLX', '��ϵ����', 2, '2', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GXLX', '��ϵ����', 3, '3', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GZQHFXCSNL', '��ָ�ڻ����ճ�������', 1, '1', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GZQHFXCSNL', '��ָ�ڻ����ճ�������', 2, '2', '�Ƚ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GZQHFXCSNL', '��ָ�ڻ����ճ�������', 3, '3', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GZQHFXCSNL', '��ָ�ڻ����ճ�������', 4, '4', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GZQHFXCSNL', '��ָ�ڻ����ճ�������', 5, '5', 'ƽ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GZRZLB', '������־���', 0, '0', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GZRZLB', '������־���', 1, 'tKHFWJL', '�ͻ�ά��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GZRZLB', '������־���', 2, 'tKHFWJL', 'Ǳ�ڿͻ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GZRZLB', '������־���', 3, 'tKHFWJL', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GZRZLB', '������־���', 4, 'tKHFWJL', '����ά��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GZRZLX', '������־����', 1, '1', '��־', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GZRZLX', '������־����', 2, '2', '��־', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GZRZLX', '������־����', 3, '3', '�½�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GZRZLX', '������־����', 4, '4', '���걨', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GZRZLX', '������־����', 5, '5', '�걨', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GZRZLX', '������־����', 6, '6', '�ڲ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GZRZLX', '������־����', 7, '7', '��ѵ��ѧϰ�ܽ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GZRZLX', '������־����', 8, '8', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GZRZLX', '������־����', 9, '9', '׼���߻����䷽��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GZRZLX', '������־����', 10, '10', '�����߶˿ͻ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GZRZLX', '������־����', 11, '11', '�߶˿ͻ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HDPJ', '�����', 1, 'Code1', 'һ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HDPJ', '�����', 2, 'Code2', '�ܺ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HDPJ', '�����', 3, 'Code3', '�ǳ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HDPJ', '�����', 4, 'Code4', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HDPJ', '�����', 5, 'Code5', '�ܲ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFDXKXLB', '�������ſ������', 1, '1', '����ף��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFDXKXLB', '�������ſ������', 2, '2', '��ʾ-Ȩ֤����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFDXKXLB', '�������ſ������', 3, '3', '��ʾ-�����ծ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFDXKXLB', '�������ſ������', 4, '4', '��ʾ-�¹���ǩ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFDXKXLB', '�������ſ������', 5, '5', '��ʾ-�¹�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFDXKXLB', '�������ſ������', 6, '6', '��ʾ-ҪԼ�չ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFDXKXLB', '�������ſ������', 11, '11', '����-�ֺ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFDXKXLB', '�������ſ������', 12, '12', '����-�Ϲ�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFDXKXLB', '�������ſ������', 21, '21', '�ش�����-ͣ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFDXKXLB', '�������ſ������', 22, '22', '�ش�����-����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFDXKXLB', '�������ſ������', 23, '23', '�ش�����-ת��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFDXKXLB', '�������ſ������', 24, '24', '�ش�����-����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFDXKXLB', '�������ſ������', 25, '25', '�ش�����-�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFDXKXLB', '�������ſ������', 26, '26', '�ش�����-�ֺ��͹�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFDXKXLB', '�������ſ������', 27, '27', '�ش�����-��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFFS', '�ظ���ʽ', 0, '0', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFFS', '�ظ���ʽ', 1, '1', '�ֻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFFS', '�ظ���ʽ', 2, '2', 'Email', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFFS', '�ظ���ʽ', 3, '3', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFFS', '�ظ���ʽ', 4, '4', '�绰', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFFS', '�ظ���ʽ', 11, '11', 'msn', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFGL_HFCLZT', '�طù���_�طô���״̬', 1, '1', '�����ط�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFGL_HFCLZT', '�طù���_�طô���״̬', 2, '2', 'ԤԼ�ط�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFGL_HFCLZT', '�طù���_�طô���״̬', 3, '3', '���˽���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFGL_HFCLZT', '�طù���_�طô���״̬', 4, '4', '�ܾ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFGL_HFCLZT', '�طù���_�طô���״̬', 5, '5', '�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFGL_HFRWZT', '�طù���_�ط�����״̬', 0, '0', 'δ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFGL_HFRWZT', '�طù���_�ط�����״̬', 1, '1', 'δ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFGL_HFRWZT', '�طù���_�ط�����״̬', 2, '2', '���-����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFGL_HFRWZT', '�طù���_�ط�����״̬', 3, '3', '�쳣', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFGL_HFRWZT', '�طù���_�ط�����״̬', 4, '4', '�޷����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFGL_HFZXQK', '�طù���_�ط�ִ�����', 0, '0', 'δʵʩ�ط�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFGL_HFZXQK', '�طù���_�ط�ִ�����', 1, '1', '���˽���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFGL_HFZXQK', '�طù���_�ط�ִ�����', 2, '2', '�ܾ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFGL_HFZXQK', '�طù���_�ط�ִ�����', 3, '3', '�绰�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFGL_HFZXQK', '�طù���_�ط�ִ�����', 4, '4', 'ԤԼ�ط�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFGL_HFZXQK', '�طù���_�ط�ִ�����', 5, '5', '�ط��쳣', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFGL_HFZXQK', '�طù���_�ط�ִ�����', 99, '99', '�طóɹ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFGL_YCQK', '�طù���_�쳣���', 1, '1', '�����ǿͻ����˰���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFGL_YCQK', '�طù���_�쳣���', 2, '2', '����ʱ��Աδ��ͻ���ʾ֤ȯͶ�ʷ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFGL_YCQK', '�طù���_�쳣���', 3, '3', '�ͻ��绰�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFGL_YCQK', '�طù���_�쳣���', 4, '4', '�ͻ���ʾ����ʶ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFGL_YCQK', '�طù���_�쳣���', 5, '5', '�ͻ���ʾ����ʶӪ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFGL_YCQK', '�طù���_�쳣���', 6, '6', '�ͻ���ʾ����ʶ�ͷ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFGL_YCQK', '�طù���_�쳣���', 7, '7', '�ͻ�������ͻ�����/Ӫ������/�����˵ķ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFGL_YCQK', '�طù���_�쳣���', 8, '8', '�ͻ������齻��ϵͳ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFGL_YCQK', '�طù���_�쳣���', 9, '9', '�ͻ�����Ѷ���������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFGL_YCQK', '�طù���_�쳣���', 10, '10', '����ȫȨί�С�������ơ�Υ����ͻ��ṩ�����������Ϊ����ؼ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFZZRLX', '�ط�����������', 0, '0', '�ͷ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFZZRLX', '�ط�����������', 1, '1', '�ܲ��ط�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFZZRLX', '�ط�����������', 2, '2', 'Ӫҵ���ط�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HTLX', '��ͬ����', 0, '0', '������ǲ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HTLX', '��ͬ����', 1, '1', '�����ͬ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HTLX', '��ͬ����', 2, '2', '��ȫ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HTLX', '��ͬ����', 3, '3', '�Ͷ���ͬ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HTLX', '��ͬ����', 4, '4', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HTLX', '��ͬ����', 99, '99', 'δǩ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HWGX', '�����ϵ', 1, '1', '������ѧ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HWGX', '�����ϵ', 2, '2', '���⹤��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HWGX', '�����ϵ', 3, '3', '������ѧ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYFL', '��ҵ����', 1, '1', 'ũ,��,��,��ҵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYFL', '��ҵ����', 2, '2', '�ɾ�ҵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYFL', '��ҵ����', 3, '3', '����ҵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYFL', '��ҵ����', 4, '4', '������ú����ˮ�������͹�Ӧҵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYFL', '��ҵ����', 5, '5', '����ҵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYFL', '��ҵ����', 6, '6', '���ʿ���ҵ��ˮ������ҵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYFL', '��ҵ����', 7, '7', '��ͨ���䡢�ִ����ʵ�ͨ��ҵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYFL', '��ҵ����', 8, '8', '����������ó�ס�����ҵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYFL', '��ҵ����', 9, '9', '���ڡ�����ҵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYFL', '��ҵ����', 10, '10', '���ز�ҵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYFL', '��ҵ����', 11, '11', '������ҵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYFL', '��ҵ����', 12, '12', '��������������ḣ��ҵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYFL', '��ҵ����', 13, '13', '�������Ļ��������㲥��Ӱ����ҵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYFL', '��ҵ����', 14, '14', '��ѧ�о����ۺϼ�������ҵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYFL', '��ҵ����', 15, '15', '���һ��ء��������غ��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYFL', '��ҵ����', 16, '16', '������ҵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYLB', '����������ҵ���', 0, '0', '��Դ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYLB', '����������ҵ���', 1, '1', 'ԭ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYLB', '����������ҵ���', 2, '2', '������Ʒ��ҵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYLB', '����������ҵ���', 3, '3', 'Ͷ��Ʒ��ҵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYLB', '����������ҵ���', 4, '4', '��������Ʒ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYLB', '����������ҵ���', 5, '5', 'ҽ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYLB', '����������ҵ���', 6, '6', '��Ӫ������Ʒ��ҵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYLB', '����������ҵ���', 7, '7', 'ó�׺�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYLB', '����������ҵ���', 8, '8', '������ҵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFXPJ', '�����������', 42, 'Code11', '�ͷ���2', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFYLB', '���Ż���������', 5, '5', '���۽���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFYLB', '���Ż���������', 6, '6', 'β��Ӷ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFYLB', '���Ż���������', 7, '7', '�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFYLB', '���Ż���������', 8, '8', 'ά����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFYLB', '���Ż���������', 5020, '5020', '�Ϲ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFYLB', '���Ż���������', 5022, '5022', '�깺��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFYLB', '���Ż���������', 5024, '5024', '��ط�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFYLB', '���Ż���������', 5036, '5036', 'ת����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJGM', '�����ģ', 0, 'Code1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJGM', '�����ģ', 1, 'Code2', '10������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJGM', '�����ģ', 2, 'Code3', '10�ڣ�30��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJGM', '�����ģ', 3, 'Code4', '30�ڣ�50��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJGM', '�����ģ', 4, 'Code5', '50�ڣ�100��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJGM', '�����ģ', 5, 'Code6', '100������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJGX_YWLB', '�ͻ���ϵҵ�����', 1, '1', '��ͨ��Ʊ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJGX_YWLB', '�ͻ���ϵҵ�����', 2, '2', '���Ż���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJGX_YWLB', '�ͻ���ϵҵ�����', 3, '3', '����ҵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJGX_YWLB', '�ͻ���ϵҵ�����', 4, '4', 'IBҵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJHZT', '�����ʻ�״̬', 0, '0', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJHZT', '�����ʻ�״̬', 1, '1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJHZT', '�����ʻ�״̬', 2, '2', '��ʧ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJHZT', '�����ʻ�״̬', 4, '4', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJHZT', '�����ʻ�״̬', 8, '8', '����������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJHZT', '�����ʻ�״̬', 16, '16', '����������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJHZT', '�����ʻ�״̬', 64, '64', '�ڲ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJKSLX', '�������ʸ�����', 1, '1', '�����ҵ�ʸ��Ժϸ�֤', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJKSLX', '�������ʸ�����', 2, '2', '���������ʸ��Ժϸ�֤', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJLX', '��������', 1, 'Code1', '����ȫ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJLX', '��������', 2, 'Code2', '����ȫ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJLX', '��������', 3, 'Code3', '�ɷݺ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJLX', '��������', 4, 'Code4', '��Ӫ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJLX', '��������', 5, 'Code5', '������Ӫ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJLX', '��������', 6, 'Code6', '�������Σ���˾��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJLX', '��������', 7, 'Code7', '�ɷ����޹�˾', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJLX', '��������', 8, 'Code8', '˽��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJQESHCLBZ', '�޶���ش����־', 0, '0', 'ȡ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJQESHCLBZ', '�޶���ش����־', 1, '1', '˳��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRBDLX', '�����˱䶯����', 1, '1', '����Ա��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRBDLX', '�����˱䶯����', 2, '2', '�ڲ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRBDLX', '�����˱䶯����', 3, '3', '��ְ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRDLQX', '�����˴���Ȩ��', 1, '1', '��ͻ�����֤ȯ��˾��֤ȯ�г��Ļ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRDLQX', '�����˴���Ȩ��', 2, '2', '��ͻ�����֤ȯͶ�ʵĻ���֪ʶ�����������ס��ʽ��ȡ��ҵ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRDLQX', '�����˴���Ȩ��', 3, '3', '��ͻ�������֤ȯ�����йصķ��ɡ��������桢֤���涨�����ɹ����֤ȯ��˾���йع涨', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRDLQX', '�����˴���Ȩ��', 4, '4', '��ͻ�������֤ȯ��˾ͳһ�ṩ���о����漰��֤ȯͶ���йص���Ϣ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRDLQX', '�����˴���Ȩ��', 5, '5', '��ͻ�������֤ȯ��˾ͳһ�ṩ��֤ȯ����ڲ�Ʒ�����ƽ���ϼ��й���Ϣ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRDLQX', '�����˴���Ȩ��', 6, '6', '���ɡ����������֤���涨֤ȯ�����˿��Դ��µ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRHGZT', '�����˺Ϲ�״̬', 0, '0', '�Ϲ�', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRHGZT', '�����˺Ϲ�״̬', 1, '1', '���Ϲ�', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRHGZT', '�����˺Ϲ�״̬', 2, '2', '��׼����', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRHGZT', '�����˺Ϲ�״̬', 4, '4', '���ⶳ��', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRKHCS', '�����˿��˲���', 1, '1', '������Ȩ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRLX', '����������', 1, '1', 'רְ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRLX', '����������', 2, '2', '�ⲿ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRLX', '����������', 3, '3', '�ڲ�Ա��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRLX', '����������', 4, '4', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '������Ӱ������', 1, '1', '������Ƭ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '������Ӱ������', 2, '2', '����֤��_����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '������Ӱ������', 3, '3', '��ҵ֤��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '������Ӱ������', 6, '6', 'ǩԼ��ͬ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '������Ӱ������', 8, '8', '����֤��_����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '������Ӱ������', 9, '9', 'ѧλ֤��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '������Ӱ������', 20, '20', 'ί����Ȩ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '������Ӱ������', 21, '21', 'ת���ͻ���Ȩ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '������Ӱ������', 22, '22', '�ͻ��ҽ�ȷ�ϵ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '������Ӱ������', 23, '23', '�ͻ����ȷ�ϵ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '������Ӱ������', 24, '24', '�ͻ��ҽ�ȷ�ϵ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '������Ӱ������', 30, '30', '�ɼ�֤-֤ȯ�г�����֪ʶ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '������Ӱ������', 31, '31', '�ɼ�֤-֤ȯ���������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '������Ӱ������', 32, '32', '�ɼ�֤-֤ȯ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '������Ӱ������', 33, '33', '�ɼ�֤-֤ȯͶ�ʷ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '������Ӱ������', 34, '34', '�ɼ�֤-֤ȯͶ�ʻ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '������Ӱ������', 35, '35', '�ɼ�֤-������ר��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '������Ӱ������', 36, '36', '�ɼ�֤-֤ȯ�г���������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '������Ӱ������', 37, '37', '�ɼ�֤-֤ȯ����ҵ��Ӫ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '������Ӱ������', 38, '38', '�ɼ�֤-�ڻ�����֪ʶ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '������Ӱ������', 39, '39', '�ɼ�֤-�ڻ����ɷ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '������Ӱ������', 40, '40', '�ɼ�֤-֤ȯͶ�ʻ������ۻ���֪ʶ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '������Ӱ������', 501, '501', '֤ȯ����ҵ��Ӫ���ʸ�֤��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '������Ӱ������', 502, '502', '�����ƽ������ʸ�֤��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '������Ӱ������', 504, '504', '�ڻ�Ӫ��֤��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '������Ӱ������', 508, '508', '֤ȯ������֤��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '������Ӱ������', 516, '516', '֤ȯͶ����ѯҵ��֤��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '������Ӱ������', 532, '532', 'һ��֤ȯҵ��֤��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '������Ӱ������', 564, '564', '����Ͷ�ʹ���֤��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRZHZT', '�������ʻ�״̬', 0, '0', '����ִҵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRZHZT', '�������ʻ�״̬', 1, '1', 'ע��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRZHZT', '�������ʻ�״̬', 2, '2', '��ʱ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRZHZT', '�������ʻ�״̬', 3, '3', '����ְ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRZHZT', '�������ʻ�״̬', 4, '4', '����ְ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRZHZT', '�������ʻ�״̬', 5, '5', 'ִֹͣҵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJSBCLJG', '�����걨������', 0, '0', 'δ�걨', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJSBCLJG', '�����걨������', 1, '1', '���걨', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJSBCLJG', '�����걨������', 3, '3', '�����ѳ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJSBCLJG', '�����걨������', 4, '4', '�����ʽ���Ȩ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJSFFS', '�����շѷ�ʽ', 1, '1', 'ǰ���շ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJSFFS', '�����շѷ�ʽ', 2, '2', '����շ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJTZDX', '����Ͷ�ʶ���', 1, '1', '��Ʊ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJTZDX', '����Ͷ�ʶ���', 2, '2', 'ծȯ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJTZDX', '����Ͷ�ʶ���', 3, '3', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJTZDX', '����Ͷ�ʶ���', 4, '4', 'QDII', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJTZDX', '����Ͷ�ʶ���', 9, '9', '�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJTZFG', '����Ͷ�ʷ��', 1, 'Code1', 'ƽ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJTZFG', '����Ͷ�ʷ��', 2, 'Code2', '�ɳ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJTZFG', '����Ͷ�ʷ��', 3, 'Code3', 'ָ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJTZFG', '����Ͷ�ʷ��', 4, 'Code4', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJTZFG', '����Ͷ�ʷ��', 5, 'Code5', '��ֵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJTZFG', '����Ͷ�ʷ��', 6, 'Code6', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJTZFG_SZ', '����Ͷ�ʷ��_����', 1, 'Code1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJTZFG_SZ', '����Ͷ�ʷ��_����', 2, 'Code2', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJTZFG_SZ', '����Ͷ�ʷ��_����', 3, 'Code3', '���Իر�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJTZFG_SZ', '����Ͷ�ʷ��_����', 4, 'Code4', '��ֵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJTZFG_SZ', '����Ͷ�ʷ��_����', 5, 'Code5', 'ƽ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJTZFG_SZ', '����Ͷ�ʷ��_����', 6, 'Code6', '�ɳ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJZHZT', '����ת��״̬', 0, '0', '��ת�롢ת��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJZHZT', '����ת��״̬', 1, '1', 'ֻ��ת��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJZHZT', '����ת��״̬', 2, '2', 'ֻ��ת��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJZHZT', '����ת��״̬', 3, '3', '����ת��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJZT', '����״̬', -1, '-1', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJZT', '����״̬', 0, '0', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJZT', '����״̬', 1, '1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJZT', '����״̬', 2, '2', '���гɹ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJZT', '����״̬', 3, '3', '����ʧ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJZT', '����״̬', 4, '4', '����ֹͣ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJZT', '����״̬', 5, '5', 'ֹͣ�깺', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJZT', '����״̬', 6, '6', 'ֹͣ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJZT', '����״̬', 7, '7', 'Ȩ��Ǽ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJZT', '����״̬', 8, '8', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJZT', '����״̬', 9, '9', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJZT', '����״̬', 10, '10', '������ֹ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JKQD', '�ӿ�����', 0, '0', 'CRM', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JKQD', '�ӿ�����', 1, '1', 'OCRM', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JKQD', '�ӿ�����', 3, '3', '�ֻ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JKQD', '�ӿ�����', 5, '5', '��Ͷ�̳�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JKQD', '�ӿ�����', 6, '6', '�����̳�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JNRLX', '����������', 1, '1', '���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JNRLX', '����������', 2, '2', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRCPGMLX', '���ڲ�Ʒ��������', 20, 'Code1', '�Ϲ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRCPGMLX', '���ڲ�Ʒ��������', 22, 'Code2', '�깺', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRCPLB', '���ڲ�Ʒ���', 1, 'Code1', '��Ʋ�Ʒ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRCPLB', '���ڲ�Ʒ���', 2, 'Code2', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRCPLB', '���ڲ�Ʒ���', 3, 'Code3', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRCPSYLX', '���ڲ�Ʒ��������', 1, '1', '�Ǳ�����������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRCPSYLX', '���ڲ�Ʒ��������', 2, '2', '������������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRCPSYLX', '���ڲ�Ʒ��������', 3, '3', '������������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRCPSYLX', '���ڲ�Ʒ��������', 4, '4', '�����̶�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRCPSYLX', '���ڲ�Ʒ��������', 9, '9', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRCPSYLX_SZ', '���ڲ�Ʒ��������_����', 1, '1', '�����̶�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRCPSYLX_SZ', '���ڲ�Ʒ��������_����', 2, '2', '������������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRCPSYLX_SZ', '���ڲ�Ʒ��������_����', 3, '3', '�Ǳ�����������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRCPSYLX_SZ', '���ڲ�Ʒ��������_����', 4, '4', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRCPXSLX', '���ڲ�Ʒ��������', 0, 'Code1', '��Чί��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRCPXSLX', '���ڲ�Ʒ��������', 1, 'Code1', 'Ӫҵ��Ӫ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRCPXSLX', '���ڲ�Ʒ��������', 2, 'Code2', 'Ӫҵ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRCPXSLX', '���ڲ�Ʒ��������', 3, 'Code3', '�ʹܲ�ֱ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRCPXSLX', '���ڲ�Ʒ��������', 4, 'Code4', '�ܲ�ֱ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRCPXSLX', '���ڲ�Ʒ��������', 5, 'Code5', '��Ȼ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRCPZFFS', '���ڲ�Ʒ֧����ʽ', 1, '1', '��֤��', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRCPZFFS', '���ڲ�Ʒ֧����ʽ', 2, '2', '����ת��', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRCPZFFS', '���ڲ�Ʒ֧����ʽ', 4, '4', '֧����', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRTZPZ', '����Ͷ��Ʒ��', 1, '1', '��Ʊ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRTZPZ', '����Ͷ��Ʒ��', 2, '2', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRTZPZ', '����Ͷ��Ʒ��', 3, '3', 'ծȯ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRTZPZ', '����Ͷ��Ʒ��', 4, '4', '�ڻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRTZPZ', '����Ͷ��Ʒ��', 5, '5', 'Ȩ֤', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRTZPZ', '����Ͷ��Ʒ��', 6, '6', '�۹�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRTZPZ', '����Ͷ��Ʒ��', 7, '7', '��Ʋ�Ʒ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JSBZ', '�����־', 0, '0', 'δ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JSBZ', '�����־', 1, '1', 'Ԥָ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JSBZ', '�����־', 2, '2', '�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JSJB', '��ʾ����', 1, '1', '���վ�ʾ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JSJB', '��ʾ����', 2, '2', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JSJB2', '��ʦ����', 1, '1', '��ʦ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JSJB2', '��ʦ����', 2, '2', '����ʦ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JSJB2', '��ʦ����', 3, '3', '������ʦ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JSJB2', '��ʦ����', 4, '4', '�м���ʦ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JSJB2', '��ʦ����', 5, '5', '�߼���ʦ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JSJB2', '��ʦ����', 6, '6', '���ʦ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JSJB2', '��ʦ����', 7, '7', '����Ա', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JSZC', '����ְ��', 1, '1', '�߼�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JSZC', '����ְ��', 2, '2', '�м�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JSZC', '����ְ��', 3, '3', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JSZC', '����ְ��', 4, '4', '�߼���ʦ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JSZC', '����ְ��', 5, '5', '��ʦ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JSZC', '����ְ��', 6, '6', '�߼���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JSZC', '����ְ��', 7, '7', '�м���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JSZC', '����ְ��', 8, '8', '��ְ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JTJYQK', '��ͥ��ҵ���', 1, '1', '������ż�����ȶ�����Ĺ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JTJYQK', '��ͥ��ҵ���', 2, '2', '������ż����һ�����ȶ�����Ĺ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JTJYQK', '��ͥ��ҵ���', 3, '3', '������ż��û���ȶ�����Ĺ�������������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JTJYQK', '��ͥ��ҵ���', 4, '4', 'δ�飬�����ȶ�����Ĺ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JTJYQK', '��ͥ��ҵ���', 5, '5', 'δ�飬Ŀǰ�����ȶ�����Ĺ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JTZCZC', '��ͥ�ʲ����', 1, '1', '�ֽ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JTZCZC', '��ͥ�ʲ����', 2, '2', '���д��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JTZCZC', '��ͥ�ʲ����', 3, '3', 'Ͷ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JTZCZC', '��ͥ�ʲ����', 4, '4', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JTZCZC', '��ͥ�ʲ����', 5, '5', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JTZCZC', '��ͥ�ʲ����', 6, '6', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYCD', '�����̶�', 1, '1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYCD', '�����̶�', 2, '2', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYCD', '�����̶�', 4, '3', '��ר', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYCD', '�����̶�', 8, '4', '��ר', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYCD', '�����̶�', 16, '5', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYCD', '�����̶�', 32, '6', '˶ʿ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYCD', '�����̶�', 64, '7', '��ʿ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYCD', '�����̶�', 128, '8', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYCW', '�����λ', 1, '1', '�ղ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYCW', '�����λ', 2, '2', '20%', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYCW', '�����λ', 3, '3', '���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYCW', '�����λ', 4, '4', '70%', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYCW', '�����λ', 5, '5', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_DFLX', '�÷�����', 1, '1', '����ʽ�÷�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_DFLX', '�÷�����', 2, '2', '����ʽ�÷�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_JFFS', '��Ӫ����_�Ʒַ�ʽ', 1, '1', 'ֱ�ӼƷ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_JFFS', '��Ӫ����_�Ʒַ�ʽ', 2, '2', '������ʼƷ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_JFFS', '��Ӫ����_�Ʒַ�ʽ', 3, '3', '��������ֶμƷ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_JFFS', '��Ӫ����_�Ʒַ�ʽ', 4, '4', '�������ʼƷ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_JFFS', '��Ӫ����_�Ʒַ�ʽ', 5, '5', '���������ֶμƷ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_JSFS', '���㷽ʽ', 1, '1', '�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_JSFS', '���㷽ʽ', 2, '2', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_JSFS', '���㷽ʽ', 3, '3', 'ʵ��ֵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_KHZQ', '��Ӫ����_��������', 2, '2', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_KHZQ', '��Ӫ����_��������', 3, '3', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_QYZT', '��Ӫ����_����״̬', 0, '0', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_QYZT', '��Ӫ����_����״̬', 1, '1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_SHZT', '��Ӫ����_���״̬', 0, '0', '�ϱ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_SHZT', '��Ӫ����_���״̬', 1, '1', 'ͨ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_SHZT', '��Ӫ����_���״̬', 2, '2', '��ͨ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_SJLD', '��������', 1, '1', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_SJLD', '��������', 2, '2', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_SJLD', '��������', 3, '3', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_SJLD', '��������', 4, '4', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_SYCJ', '��Ӫ����_���ò㼶', 0, '0', '�ܲ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_SYCJ', '��Ӫ����_���ò㼶', 1, '1', '�ֹ�˾', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_SYCJ', '��Ӫ����_���ò㼶', 2, '2', 'Ӫҵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_TJCJ', 'ͳ�Ʋ㼶', 1, '1', '�ܲ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_TJCJ', 'ͳ�Ʋ㼶', 2, '2', '�ֹ�˾', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_TJCJ', 'ͳ�Ʋ㼶', 3, '3', 'Ӫҵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_YJYS', '��Ӫ����_��ɫԤ��', 1, '1', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_YJYS', '��Ӫ����_��ɫԤ��', 2, '2', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_YJYS', '��Ӫ����_��ɫԤ��', 3, '3', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_ZBFL', '��Ӫ����_ָ������', 1, '1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_ZBFL', '��Ӫ����_ָ������', 2, '2', '�ͻ����г�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_ZBFL', '��Ӫ����_ָ������', 3, '3', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_ZBZQ', '��Ӫ����_ָ������', 1, '1', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_ZBZQ', '��Ӫ����_ָ������', 2, '2', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_ZBZQ', '��Ӫ����_ָ������', 3, '3', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 0, '0', '�ɹ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 1, '1', '�ݶ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 2, '2', '�˻��Ѷ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 3, '3', '�˻��ѹ�ʧ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 4, '4', '�����ڲ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 5, '5', '����ڲ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 6, '6', '�ǿ����ղ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 7, '7', '�յ�ԤԼ����ȷ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 8, '8', '�޶����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 9, '9', '�޴��˻�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 10, '10', '����ԭ��ʧ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 100, '100', '֤���������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 101, '101', '֤�������ظ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 102, '102', '��������Ч', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 103, '103', 'ҵ������Ƿ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 104, '104', '�����˽��׻����ʺŷǷ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 105, '105', '���۹�˾����Ƿ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 106, '106', '�޻���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 107, '107', '����/���˱�־�Ƿ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 108, '108', '֤�����ͷǷ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 109, '109', '�޾���������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 110, '110', '������֤�����ͷǷ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 111, '111', '������֤���������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 112, '112', '��ͨѶ��ַ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 113, '113', '��������Ƿ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 114, '114', '�޵绰', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 115, '115', '��סַ�绰', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 116, '116', '�޵�λ�绰', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 117, '117', '��������Ƿ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 118, '118', '�����ʧ��ֹ������Ч', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 119, '119', '��E-MAIL��ַ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 120, '120', '�޷��˴�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 121, '121', '���˴���֤�����ͷǷ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 122, '122', '�������֤������Ƿ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 123, '123', 'TA�����ʺŷǷ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 124, '124', '�ܺ���ŷǷ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 125, '125', 'ְҵ����Ƿ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 126, '126', 'ѧ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 127, '127', '���������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 128, '128', '�Ա�Ƿ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 129, '129', '�������ڷǷ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 130, '130', '�������Ƿ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 131, '131', '�ֻ�����Ƿ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 132, '132', '����������Ƿ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 133, '133', '�����д���Ƿ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 134, '134', '�������˻����Ƿ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 135, '135', '�������ʺŷǷ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 136, '136', '�Ͻ����ʺŷǷ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 137, '137', '����ʺŷǷ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 138, '138', '�������ڷǷ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 139, '139', '���뵥��ŷǷ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 140, '140', '�����־�Ƿ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 141, '141', 'Ĭ�Ϸֺ췽ʽ�Ƿ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 200, '200', '�������Ƿ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 201, '201', '�������ڷǷ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 202, '202', '����ʱ��Ƿ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 203, '203', '��������ˮ�ŷǷ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 204, '204', '���ִ���Ƿ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 205, '205', '�ʽ��ʺŷǷ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KCXL', '�γ�ϵ��', 3, '3', 'ҵ��ϵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KCXL', '�γ�ϵ��', 4, '4', 'ͨ�ÿγ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KFND', '�����Ѷ�', 1, 'Code1', 'Ǳ���󣬿��������Ѷ�С', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KFND', '�����Ѷ�', 2, 'Code2', 'Ǳ���󣬿��������Ѷȴ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KFND', '�����Ѷ�', 3, 'Code3', 'Ǳ��С�������ͷ����Ѷ�С', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KFND', '�����Ѷ�', 4, 'Code4', 'Ǳ��С�����������Ѷȴ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHDXLX', '���˶�������', 1, 'Code1', '�ܹ�˾', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHDXLX', '���˶�������', 2, 'Code2', '�ֹ�˾', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHDXLX', '���˶�������', 3, 'Code3', 'Ӫҵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHDXLX', '���˶�������', 4, 'Code4', '�Ŷ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHDXLX', '���˶�������', 5, 'Code5', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHFL', '�ͻ�����', 4, '4', '���н��׿ͻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHFL', '�ͻ�����', 5, '5', '��֤�ڻ��ͻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHFL', '�ͻ�����', 6, '6', '�¼��ڻ��ͻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHFL', '�ͻ�����', 8, '8', '���ڲ�Ʒ�ͻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHFL', '�ͻ�����', 10, '10', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGF_TJFS', '�ͻ��ɷ�_ͳ�Ʒ�ʽ', 1, '1', '���ͻ���ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGF_TJFS', '�ͻ��ɷ�_ͳ�Ʒ�ʽ', 2, '2', '��Ӫҵ������ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGF_TJFS', '�ͻ��ɷ�_ͳ�Ʒ�ʽ', 3, '3', '��֤ȯ�г�ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGF_TJFS', '�ͻ��ɷ�_ͳ�Ʒ�ʽ', 4, '4', '��֤ȯ���ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGF_TJFS', '�ͻ��ɷ�_ͳ�Ʒ�ʽ', 5, '5', '��֤ȯ����ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGF_TJFS', '�ͻ��ɷ�_ͳ�Ʒ�ʽ', 9, '9', '���ͻ�����ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGF_TJFS', '�ͻ��ɷ�_ͳ�Ʒ�ʽ', 14, '14', '����������ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGF_TJFS', '�ͻ��ɷ�_ͳ�Ʒ�ʽ', 15, '15', '�������·�ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGF_TJFS', '�ͻ��ɷ�_ͳ�Ʒ�ʽ', 16, '16', '���������ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGF_TJFS', '�ͻ��ɷ�_ͳ�Ʒ�ʽ', 17, '17', '����Դȯ��ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGF_TJFS', '�ͻ��ɷ�_ͳ�Ʒ�ʽ', 18, '18', '���ͻ�����ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGLGX', '�ͻ�������ϵ', 1, '1', '�ʻ�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGLGX', '�ͻ�������ϵ', 2, '2', 'ֱϵ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGLGX', '�ͻ�������ϵ', 3, '3', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGLGX', '�ͻ�������ϵ', 4, '4', '����ͬ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGLGX', '�ͻ�������ϵ', 5, '5', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGL_KHCXSXGN', '�ͻ���ѯ���޹���', 1, '1', '�ҵĿͻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGL_KHCXSXGN', '�ͻ���ѯ���޹���', 4, '4', '�ͻ����ײ�ѯ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGL_KHCXSXGN', '�ͻ���ѯ���޹���', 5, '5', '�ͻ�����ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGL_KHCXSXGN', '�ͻ���ѯ���޹���', 6, '6', '�ͻ��ɷݲ�ѯ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGL_KHCXSXGN', '�ͻ���ѯ���޹���', 7, '7', '�ͻ��ɷ�ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGL_KHCXSXGN', '�ͻ���ѯ���޹���', 8, '8', '�ͻ��ʽ��ѯ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGL_KHCXSXGN', '�ͻ���ѯ���޹���', 9, '9', '�ͻ��ʽ�ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGL_KHCXSXGN', '�ͻ���ѯ���޹���', 10, '10', '�ֿͻ������ϸ��ѯ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGXLX', '�ͻ���ϵ����', 1, '1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGXLX', '�ͻ���ϵ����', 2, '2', 'ǩԼ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGXLX', '�ͻ���ϵ����', 10, '10', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGXLX', '�ͻ���ϵ����', 11, '11', '���ÿ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGXLX', '�ͻ���ϵ����', 12, '12', '������Ȩ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGXLX', '�ͻ���ϵ����', 13, '13', 'IC(��������)', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGXLX', '�ͻ���ϵ����', 14, '14', 'IC(Ӫҵ������)', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGXLX', '�ͻ���ϵ����', 15, '15', 'IC(�ͻ�רԱ����)', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGXLX', '�ͻ���ϵ����', 16, '16', '��IC', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGXLX', '�ͻ���ϵ����', 17, '17', 'IC(ָ������)', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGXYWXL', '�ͻ���ϵҵ������', 1, '1', 'Ӫ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGXYWXL', '�ͻ���ϵҵ������', 2, '2', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGXYWXL', '�ͻ���ϵҵ������', 3, '3', '��̨', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGXYWXL', '�ͻ���ϵҵ������', 4, '4', '�Ƽ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGX_YWLX', '�ͻ���ϵ_ҵ������', 0, '0', 'ȫ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGX_YWLX', '�ͻ���ϵ_ҵ������', 1, '1', '��ͨ��Ʊ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGX_YWLX', '�ͻ���ϵ_ҵ������', 2, '2', '���Ż���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGX_YWLX', '�ͻ���ϵ_ҵ������', 3, '3', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGX_YWLX', '�ͻ���ϵ_ҵ������', 4, '4', 'IBҵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGX_YWLX', '�ͻ���ϵ_ҵ������', 5, '5', '�۹�ͨ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGX_YWLX', '�ͻ���ϵ_ҵ������', 6, '6', 'С΢��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGX_YWLX', '�ͻ���ϵ_ҵ������', 7, '7', '��Ѻʽ�ع�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGX_YWLX', '�ͻ���ϵ_ҵ������', 8, '8', '���ۻع�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGX_YWLX', '�ͻ���ϵ_ҵ������', 9, '9', 'Լ��ʽ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGX_YWLX', '�ͻ���ϵ_ҵ������', 10, '10', '������Ȩ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHHFLX', '�ͻ��ط�����', 1, 'Code1', '�¿��ͻ��ط�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHHFLX', '�ͻ��ط�����', 2, 'Code2', '��Ҫ�ͻ��ط�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHHFLX', '�ͻ��ط�����', 3, 'Code3', '���ɿͻ��ط�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHHFLX', '�ͻ��ط�����', 4, 'Code4', 'Ͷ�߿ͻ��ط�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHHFLX', '�ͻ��ط�����', 5, 'Code5', 'һ��ط�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHJG', '���˽��', 1, '1', 'A', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHJG', '���˽��', 2, '2', 'B', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHJG', '���˽��', 3, '3', 'C', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHJG', '���˽��', 4, '4', 'D', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHJG', '���˽��', 5, '5', 'N', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHJYFS', '�ͻ����׷�ʽ', 1, '1', '���Ͻ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHJYFS', '�ͻ����׷�ʽ', 2, '2', '�绰ί��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHJYFS', '�ͻ����׷�ʽ', 3, '3', '���ڽ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHJYFS', '�ͻ����׷�ʽ', 4, '4', '�ֻ�ί��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHJY_TJFS', '�ͻ�����_ͳ�Ʒ�ʽ', 1, '1', '���ͻ���ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHJY_TJFS', '�ͻ�����_ͳ�Ʒ�ʽ', 2, '2', '��Ӫҵ������ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHJY_TJFS', '�ͻ�����_ͳ�Ʒ�ʽ', 3, '3', '��֤ȯ�г�ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHJY_TJFS', '�ͻ�����_ͳ�Ʒ�ʽ', 4, '4', '��֤ȯ���ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHJY_TJFS', '�ͻ�����_ͳ�Ʒ�ʽ', 5, '5', '��֤ȯ����ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHJY_TJFS', '�ͻ�����_ͳ�Ʒ�ʽ', 6, '6', '���������ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHJY_TJFS', '�ͻ�����_ͳ�Ʒ�ʽ', 7, '7', '�����Ҵ���ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHJY_TJFS', '�ͻ�����_ͳ�Ʒ�ʽ', 9, '9', '���ͻ�����ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHJY_TJFS', '�ͻ�����_ͳ�Ʒ�ʽ', 10, '10', '��ί�з�ʽͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHJY_TJFS', '�ͻ�����_ͳ�Ʒ�ʽ', 11, '11', '����������ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHJY_TJFS', '�ͻ�����_ͳ�Ʒ�ʽ', 12, '12', '�������·�ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHJY_TJFS', '�ͻ�����_ͳ�Ʒ�ʽ', 13, '13', '���������ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHJY_TJFS', '�ͻ�����_ͳ�Ʒ�ʽ', 14, '14', '����������ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHJY_TJFS', '�ͻ�����_ͳ�Ʒ�ʽ', 15, '15', '�������·�ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHJY_TJFS', '�ͻ�����_ͳ�Ʒ�ʽ', 16, '16', '���������ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHJY_TJFS', '�ͻ�����_ͳ�Ʒ�ʽ', 17, '17', '����Դȯ��ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHJY_TJFS', '�ͻ�����_ͳ�Ʒ�ʽ', 18, '18', '���ͻ�����ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHKFZT', '�ͻ�����״̬', 0, '0', '��ʽ�ͻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHKFZT', '�ͻ�����״̬', 1, '1', 'δ�Ӵ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHKFZT', '�ͻ�����״̬', 2, '2', '�����˽�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHKFZT', '�ͻ�����״̬', 3, '3', '����˽�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHKFZT', '�ͻ�����״̬', 4, '4', '������ǩԼ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHKFZT', '�ͻ�����״̬', 5, '5', '������ǩԼ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHKFZT', '�ͻ�����״̬', 6, '6', '����ʧ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHKFZT', '�ͻ�����״̬', 7, '7', 'ԤԼ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHLB', '�ͻ����', 1, '1', '��ʽ�ͻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHLB', '�ͻ����', 3, '3', 'Ǳ�ڿͻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHLB', '�ͻ����', 7, '7', '��Ա', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHLSYY', '�ͻ���ʧԭ��', 1, '1', '�շ�����,Ӷ�����ƫ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHLSYY', '�ͻ���ʧԭ��', 2, '2', '����λ��,��ͨ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHLSYY', '�ͻ���ʧԭ��', 3, '3', '����̬�Ƚϲ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHLSYY', '�ͻ���ʧԭ��', 4, '4', 'Ӳ����ʩ�ϲ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 206, '206', '���������Ƿ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 207, '207', '���׽��Ƿ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 208, '208', '�Է������˻����ʺŷǷ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 209, '209', 'TA�ʺŷǷ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 210, '210', '�Է�TA�ʺŷǷ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 211, '211', '��������ص����Ƿ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 212, '212', '�ɶ��˻�����Ƿ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 213, '213', 'ָ��ȯ��ϯλ�ŷǷ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 214, '214', 'ԤԼ������ڷǷ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 215, '215', '����ŷǷ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 216, '216', '�ۿ��ʷǷ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 217, '217', '��Ч�����Ƿ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 218, '218', 'ԭ���뵥��ŷǷ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 219, '219', '�޶���ش����־�Ƿ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 220, '220', '����ԭ��Ƿ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 221, '221', '�Է�����ŷǷ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 222, '222', '��Ͷ�����ͷǷ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 223, '223', 'Ŀ��������Ƿ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 224, '224', '�������ʷǷ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 225, '225', '�����ѷǷ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 226, '226', '�Է������˴���Ƿ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 227, '227', 'ԭ�깺���ڷǷ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 228, '228', '�˻�δ��ʧ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '���׻��ش���', 229, '229', '�˻�δ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYSC', '�����г�', 1, '1', '��A', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYSC', '�����г�', 2, '2', '��A', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYSC', '�����г�', 3, '3', '��B', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYSC', '�����г�', 4, '4', '��B', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYSC', '�����г�', 5, '5', '�ر�ת��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KCDJ', '�γ̵ȼ�', 1, '1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KCDJ', '�γ̵ȼ�', 2, '2', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KCLB', '�γ����', 1, '1', '��Ƶ��ѵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KCLB', '�γ����', 2, '2', '������ѵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KCLB', '�γ����', 3, '3', '�ֳ���ѵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KCLB', '�γ����', 4, '4', '��ѧ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KCLX', '�γ�����', 1, '1', '�����˸�ǰ��ѵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KCLX', '�γ�����', 2, '2', '�Ǿ����˸�ǰ��ѵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KCLX', '�γ�����', 3, '3', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KCXL', '�γ�ϵ��', 1, '1', '��ǰϵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KCXL', '�γ�ϵ��', 2, '2', '����ϵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYLB', '����������ҵ���', 9, '9', '��ͨ����Ͳִ�ҵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYLB', '����������ҵ���', 10, 'A', '����ҵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYLB', '����������ҵ���', 11, 'B', '���ز�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYLB', '����������ҵ���', 12, 'C', '��Ϣ����ҵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYLB', '����������ҵ���', 13, 'D', '������ҵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYLB', '����������ҵ���', 14, 'E', '�ۺ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYLB', '����������ҵ���', 15, 'F', '��ʦ,���ʦ���н���ҵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYLB', '����������ҵ���', 16, 'G', '�鱦��ҵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYLB', '����������ҵ���', 17, 'H', '������ҵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYLB', '����������ҵ���', 18, 'Z', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYLX', '��������', 1, 'Code1', '�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYLX', '��������', 2, 'Code2', '����Ϧ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYLX', '��������', 3, 'Code3', '����������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYLX', '��������', 4, 'Code4', '�Ŷ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYLX', '��������', 5, 'Code5', '�Ŷ�Ϧ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYLX', '��������', 6, 'Code6', '�Ŷ�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYZK', '����״��', 0, '0', 'δ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYZK', '����״��', 1, '1', '�ѻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYZK', '����״��', 2, '2', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYZK', '����״��', 3, '3', 'ɥż', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYZK', '����״��', 4, '4', 'δ֪', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('INFOMARK', '��Ѷ��ֵ', 1, '1', '�ܲ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('INFOMARK', '��Ѷ��ֵ', 2, '2', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('INFOMARK', '��Ѷ��ֵ', 3, '3', 'һ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('INFOMARK', '��Ѷ��ֵ', 4, '4', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('INFOMARK', '��Ѷ��ֵ', 5, '5', '�ܺ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JBRSBFS', '������ʶ��ʽ', 1, '1', '����ί��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JBRSBFS', '������ʶ��ʽ', 2, '2', 'ӡ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JBRSBFS', '������ʶ��ʽ', 3, '3', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JBRSBFS', '������ʶ��ʽ', 4, '4', '֤��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JBXZLX', '������������', 1, '1', '��ֹ����', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JBXZLX', '������������', 2, '2', '��ֹע���ͻ�', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JBXZLX', '������������', 4, '4', '��ֹ�ͻ�Ȩ�ش���1', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JBXZLX', '������������', 8, '8', '��ֹ����ͻ�', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JD', '�׶�', 0, '0', 'Ǳ�ڽ׶�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JD', '�׶�', 1, '1', '�����׶�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JD', '�׶�', 2, '2', '�ɳ��׶�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JD', '�׶�', 3, '3', '����׶�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JD', '�׶�', 4, '4', '˥�˽׶�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JD', '�׶�', 5, '5', 'ͨ�ý׶�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JDQK', '������', 1, '1', 'û��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JDQK', '������', 2, '2', '�У�ס����Ѻ����ȳ��ڶ���ծ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JDQK', '������', 3, '3', '�У����ÿ�Ƿ������Ŵ��ȶ�������ծ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JDQK', '������', 4, '4', '�У�����֮����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JFKM', '���ֿ�Ŀ', 1001, '1001', '�Զ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JFKM', '���ֿ�Ŀ', 1002, '1002', '�ֹ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JFKM', '���ֿ�Ŀ', 1003, '1003', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JFKM', '���ֿ�Ŀ', 1004, '1004', 'ʧЧ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JFKM', '���ֿ�Ŀ', 1005, '1005', '���ѻ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JFKM', '���ֿ�Ŀ', 1006, '1006', '���ֻ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JFLX', '��������', 1, '1', '֤ȯ���׻���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JFLX', '��������', 2, '2', '���ý��׻���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JFLX', '��������', 3, '3', '�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JFLX', '��������', 4, '4', '��Ϊ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGKHLB', '�����ͻ����', 2, '2', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGKHLB', '�����ͻ����', 3, '3', '����������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGKHLB', '�����ͻ����', 4, '4', '��ҵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGKHLB', '�����ͻ����', 5, '5', '�н���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGKHLB', '�����ͻ����', 6, '6', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGLXRLB', '������ϵ�����', 1, '1', '���³�', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGLXRLB', '������ϵ�����', 2, '2', '�ܲ�', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGLXRLB', '������ϵ�����', 4, '4', '���˴���', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGLXRLB', '������ϵ�����', 8, '8', '�߹�', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGLXRLB', '������ϵ�����', 16, '16', '������', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGLXRLB', '������ϵ�����', 32, '32', 'ҵ������', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGLXRLB', '������ϵ�����', 64, '64', '�ؼ����Ÿ�����', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGLXRLB', '������ϵ�����', 128, '128', 'ҵ���ϵ��', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGLXRLB', '������ϵ�����', 256, '256', '����ϵ��', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGZJLX', '����֤������', 0, '0', '�����ල�ִ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGZJLX', '����֤������', 1, '1', 'Ӫҵִ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGZJLX', '����֤������', 2, '2', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGZJLX', '����֤������', 3, '3', '�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGZJLX', '����֤������', 4, '4', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGZJLX', '����֤������', 5, '5', '�侯', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGZJLX', '����֤������', 6, '6', '�����������������ܵ�λ���ĺţ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGZJLX', '����֤������', 7, '7', '�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGZJLX', '����֤������', 8, '8', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_CLSJ', '��������ʱ��', 1, '1', '10�����ϣ�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_CLSJ', '��������ʱ��', 2, '2', '10������5�����ϣ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_CLSJ', '��������ʱ��', 3, '3', '5������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_GM', '������ģ', 1, '1', '�����Ⱦ��ʲ���1000��Ԫ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_GM', '������ģ', 2, '2', '1000��Ԫ�������Ⱦ��ʲ���3000��Ԫ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_GM', '������ģ', 3, '3', '3000��Ԫ�������Ⱦ��ʲ���5000��Ԫ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_GM', '������ģ', 4, '4', '5000��Ԫ�������Ⱦ��ʲ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_HYTZ', '������ҵ����', 1, '1', '¢�ϳ�����ҵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_HYTZ', '������ҵ����', 2, '2', '�߶ȳ�����ҵ���������ּ��ң���ҵ����ӯ��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_HYTZ', '������ҵ����', 3, '3', '���ڳɳ�����ҵ��ǰ���ȽϿ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_HYTZ', '������ҵ����', 4, '4', '������ҵ����ը�Ա������������г���δ���ֹܳ���̬��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_HYTZ', '������ҵ����', 5, '5', '�߷�����ҵ��С�Ͳ���ҵ��С�ͷ���ҵ����������ҵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_JZCSYL', '�������ʲ�������', 1, 'Code1', '15%�����ʲ�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_JZCSYL', '�������ʲ�������', 2, 'Code2', '10%�����ʲ������ʡ�15%', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_JZCSYL', '�������ʲ�������', 3, 'Code3', '10%�����ʲ������ʡ�15%', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_JZCZZL', '�������ʲ�������', 1, 'Code1', '����3������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_JZCZZL', '�������ʲ�������', 2, 'Code2', '����2��δ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_JZCZZL', '�������ʲ�������', 3, 'Code3', '����2���½�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_LXBZBS', '������Ϣ���ϱ���', 1, 'Code1', '����3������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_LXBZBS', '������Ϣ���ϱ���', 2, 'Code2', '����2��δ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_LXBZBS', '������Ϣ���ϱ���', 3, 'Code3', '����2���½�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_SDBL', '�����ٶ�����', 1, 'Code1', '1���ٶ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_SDBL', '�����ٶ�����', 2, 'Code2', '0.5���ٶ�������1', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_SDBL', '�����ٶ�����', 3, 'Code3', '�ٶ�������0.5', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_TZGM', '����Ͷ�ʹ�ģ', 1, 'Code1', '1000���ʲ���ģ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_TZGM', '����Ͷ�ʹ�ģ', 2, 'Code2', '200���ʲ���ģ��1000��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_TZGM', '����Ͷ�ʹ�ģ', 3, 'Code3', '�ʲ���ģ��200��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_TZJY', '����Ͷ�ʾ���', 1, 'Code1', '10�꣼����ʱ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_TZJY', '����Ͷ�ʾ���', 2, 'Code2', '3�꣼����ʱ���10��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_TZJY', '����Ͷ�ʾ���', 3, 'Code3', '����ʱ���3��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_XJLLZZL', '�����ֽ�����������', 1, 'Code1', '����3��ƽ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_XJLLZZL', '�����ֽ�����������', 2, 'Code2', '����2��δ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_XJLLZZL', '�����ֽ�����������', 3, 'Code3', '����2���½�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_ZCFZL', '�����ʲ���ծ��', 1, 'Code1', '�ʲ���ծ�ʡ�50%', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_ZCFZL', '�����ʲ���ծ��', 2, 'Code2', '50%���ʲ���ծ�ʡ�65%', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_ZCFZL', '�����ʲ���ծ��', 3, 'Code3', '65%���ʲ���ծ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_ZHQK', '�����˻����', 1, 'Code1', '5%����ͨ�˻��ڱ��֤ȯռ����ͨ��ֵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_ZHQK', '�����˻����', 2, 'Code2', '3%����ͨ�˻��ڱ��֤ȯռ����ͨ��ֵ��5%', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_ZHQK', '�����˻����', 3, 'Code3', '��ͨ�˻��ڱ��֤ȯռ����ͨ��ֵ��3%', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_ZHSYSP', '�����˻�����ˮƽ', 1, 'Code1', '15%���˻���������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_ZHSYSP', '�����˻�����ˮƽ', 2, 'Code2', '������ȯ���ʣ��˻��������ʡ�15%', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_ZHSYSP', '�����˻�����ˮƽ', 3, 'Code3', '3���˻��������ʡ�������ȯ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_ZHSYSP', '�����˻�����ˮƽ', 4, 'Code4', '�˻����ڿ���״̬', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_ZZL', '�����ʲ���ת��', 1, '1', '���ʲ���ת�ʡ�3��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_ZZL', '�����ʲ���ת��', 2, '2', '3�Σ����ʲ���ת�ʡ�6��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_ZZL', '�����ʲ���ת��', 3, '3', '6�Σ����ʲ���ת�ʡ�10��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_ZZL', '�����ʲ���ת��', 4, '4', '10�Σ����ʽ���ת��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJCFFS', '�����ַ�ʽ', 1, '1', '�ݶ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJCFFS', '�����ַ�ʽ', 2, '2', '�ݶ�ת��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJCFFS', '�����ַ�ʽ', 3, '3', '�ݶ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFHFS', '����ֺ췽ʽ', 1, '1', '����תͶ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFHFS', '����ֺ췽ʽ', 2, '2', '�ֽ�ֺ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFHFS_SZ', '�����ֺ췽ʽ_����', 1, '1', '����תͶ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFHFS_SZ', '�����ֺ췽ʽ_����', 2, '2', '�ֽ�ֺ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFXCSNL', '������ճ�������', 1, '1', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFXCSNL', '������ճ�������', 2, '2', '�Ƚ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFXCSNL', '������ճ�������', 3, '3', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFXCSNL', '������ճ�������', 4, '4', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFXCSNL', '������ճ�������', 5, '5', 'ƽ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFXPJ', '�����������', 11, 'Code5', '�߷���1', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFXPJ', '�����������', 12, 'Code4', '�߷���2', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFXPJ', '�����������', 13, 'Code3', '�߷���3', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFXPJ', '�����������', 14, 'Code2', '�߷���4', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFXPJ', '�����������', 15, 'Code1', '�߷���5', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFXPJ', '�����������', 21, 'Code8', '�з���1', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFXPJ', '�����������', 22, 'Code7', '�з���2', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFXPJ', '�����������', 23, 'Code6', '�з���3', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFXPJ', '�����������', 31, 'Code10', '�ϵͷ���1', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFXPJ', '�����������', 32, 'Code9', '�ϵͷ���2', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFXPJ', '�����������', 41, 'Code12', '�ͷ���1', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJCD', '�����̶�', 1, '1', 'һ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJCD', '�����̶�', 2, '2', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJCD', '�����̶�', 3, '3', '�ؼ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TXFS', '���ͷ�ʽ', 1, '1', '�ڲ���Ϣ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TXFS', '���ͷ�ʽ', 2, '2', '�ֻ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TXFS', '���ͷ�ʽ', 3, '3', 'EMail', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RCBQ', '�ճ̱�ǩ', 1, '1', '��Ҫ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RCBQ', '�ճ̱�ǩ', 2, '2', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RCBQ', '�ճ̱�ǩ', 3, '3', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RCBQ', '�ճ̱�ǩ', 4, '4', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RCBQ', '�ճ̱�ǩ', 5, '5', '�����ϯ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RCBQ', '�ճ̱�ǩ', 6, '6', '��Ҫ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RCBQ', '�ճ̱�ǩ', 7, '7', '��Ҫ׼��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RCBQ', '�ճ̱�ǩ', 8, '8', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RCBQ', '�ճ̱�ǩ', 9, '9', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RCBQ', '�ճ̱�ǩ', 10, '10', '�绰����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CFZQ', '��������', 1, '1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CFZQ', '��������', 2, '2', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CFZQ', '��������', 3, '3', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', 'ʱ��ֶ�', 0, '0', '00:00', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', 'ʱ��ֶ�', 1, '1', '00:30', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', 'ʱ��ֶ�', 2, '2', '01:00', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', 'ʱ��ֶ�', 3, '3', '01:30', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', 'ʱ��ֶ�', 4, '4', '02:00', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', 'ʱ��ֶ�', 5, '5', '02:30', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', 'ʱ��ֶ�', 6, '6', '03:00', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', 'ʱ��ֶ�', 7, '7', '03:30', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', 'ʱ��ֶ�', 8, '8', '04:00', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', 'ʱ��ֶ�', 9, '9', '04:30', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', 'ʱ��ֶ�', 10, '10', '05:00', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', 'ʱ��ֶ�', 11, '11', '05:30', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', 'ʱ��ֶ�', 12, '12', '06:00', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', 'ʱ��ֶ�', 13, '13', '06:30', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', 'ʱ��ֶ�', 14, '14', '07:00', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', 'ʱ��ֶ�', 15, '15', '07:30', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', 'ʱ��ֶ�', 16, '16', '08:00', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', 'ʱ��ֶ�', 17, '17', '08:30', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', 'ʱ��ֶ�', 18, '18', '09:00', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', 'ʱ��ֶ�', 19, '19', '09:30', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', 'ʱ��ֶ�', 20, '20', '10:00', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', 'ʱ��ֶ�', 21, '21', '10:30', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', 'ʱ��ֶ�', 22, '22', '11:00', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', 'ʱ��ֶ�', 23, '23', '11:30', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', 'ʱ��ֶ�', 24, '24', '12:00', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', 'ʱ��ֶ�', 25, '25', '12:30', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', 'ʱ��ֶ�', 26, '26', '13:00', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', 'ʱ��ֶ�', 27, '27', '13:30', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', 'ʱ��ֶ�', 28, '28', '14:00', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', 'ʱ��ֶ�', 29, '29', '14:30', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', 'ʱ��ֶ�', 30, '30', '15:00', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', 'ʱ��ֶ�', 31, '31', '15:30', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', 'ʱ��ֶ�', 32, '32', '16:00', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', 'ʱ��ֶ�', 33, '33', '16:30', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', 'ʱ��ֶ�', 34, '34', '17:00', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', 'ʱ��ֶ�', 35, '35', '17:30', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', 'ʱ��ֶ�', 36, '36', '18:00', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', 'ʱ��ֶ�', 37, '37', '18:30', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', 'ʱ��ֶ�', 38, '38', '19:00', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', 'ʱ��ֶ�', 39, '39', '19:30', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', 'ʱ��ֶ�', 40, '40', '20:00', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', 'ʱ��ֶ�', 41, '41', '20:30', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', 'ʱ��ֶ�', 42, '42', '21:00', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', 'ʱ��ֶ�', 43, '43', '21:30', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', 'ʱ��ֶ�', 44, '44', '22:00', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', 'ʱ��ֶ�', 45, '45', '22:30', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', 'ʱ��ֶ�', 46, '46', '23:00', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', 'ʱ��ֶ�', 47, '47', '23:30', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', 'ʱ��ֶ�', 48, '48', '23:59', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XWFL', '���ŷ���', 1, '1', '�ڲ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XWFL', '���ŷ���', 2, '2', '�ļ���ͨ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XWFL', '���ŷ���', 3, '3', '��ҵ��̬', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XWFL', '���ŷ���', 4, '4', '�г���̬', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XWFL', '���ŷ���', 5, '5', '��Ʒ�뼼��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XWFL', '���ŷ���', 6, '6', '�Ƽ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XWFL', '���ŷ���', 7, '7', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XWFL', '���ŷ���', 8, '8', 'ÿ���ʼ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FBFW', '�ͻ����ŷ�Χ', 1, '1', '�ڲ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FBFW', '�ͻ����ŷ�Χ', 2, '2', '�ͻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FBFW', '�ͻ����ŷ�Χ', 3, '3', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GXFW', '�ճ̹�������', 1, '1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GXFW', '�ճ̹�������', 2, '2', '˽��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LB.GROUP', '�����', 1, '1', '��Ŀ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LB.GROUP', '�����', 2, '2', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LB.GROUP', '�����', 3, '3', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LB.ORGANIZATION', '��֯����', 0, '0', '�ܹ�˾', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LB.ORGANIZATION', '��֯����', 1, '1', '�ֹ�˾', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LB.ORGANIZATION', '��֯����', 2, '2', 'Ӫҵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LB.ORGANIZATION', '��֯����', 3, '3', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LB.ORGANIZATION', '��֯����', 4, '4', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JRCPFL', '���ڲ�Ʒ����', 3, '3', '˽ļ��Ʊ����', 0, 0, '����');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JRCPFL', '���ڲ�Ʒ����', 4, '4', '˽ļ��Ȩ', 0, 0, '����');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JRCPFL', '���ڲ�Ʒ����', 10, '10', '����Ʒ', 0, 0, '����');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JRCPFL', '���ڲ�Ʒ����', 8, '8', '���ղ�Ʒ', 0, 0, '����');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JRCPFL', '���ڲ�Ʒ����', 1, '1', '����ʽ����', 0, 0, '����');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JRCPFL', '���ڲ�Ʒ����', 6, '6', 'ȯ���ʹܲ�Ʒ', 0, 0, '����');
commit;
prompt 1000 records committed...
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JRCPFL', '���ڲ�Ʒ����', 7, '7', '������Ʋ�Ʒ', 0, 0, '����');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JRCPFL', '���ڲ�Ʒ����', 9, '9', '˽ļծ', 0, 0, '����');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JRCPFL', '���ڲ�Ʒ����', 5, '5', '���в�Ʒ', 0, 0, '����');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_ALOT_ST', '��������_����״̬', 0, '0', 'δ�ֽ⡢δ����', 0, 0, '��������');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_ALOT_ST', '��������_����״̬', 1, '1', '�ѷֽ�', 0, 0, '��������');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_ALOT_ST', '��������_����״̬', 2, '2', '�ѷ���', 0, 0, '��������');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_CTL_TP', '��������_�ؼ�����', 1, '1', '��ֵ��', 0, 0, '��������');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_CTL_TP', '��������_�ؼ�����', 2, '2', '�ı��༭��', 0, 0, '��������');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_CTL_TP', '��������_�ؼ�����', 3, '3', '���б༭��', 0, 0, '��������');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_CTL_TP', '��������_�ؼ�����', 4, '4', 'ѡ���', 0, 0, '��������');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_EXEC_ST', '��������_ִ��״̬', -1, '-1', 'δ�´�', 0, 0, '��������');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_EXEC_ST', '��������_ִ��״̬', 1, '1', '������', 0, 0, '��������');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_EXEC_ST', '��������_ִ��״̬', 2, '2', '�����', 0, 0, '��������');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_EXEC_ST', '��������_ִ��״̬', 3, '3', '����ֹ', 0, 0, '��������');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_IDX_TP', '��������_ָ������', 1, '1', '�Զ�ָ��', 0, 0, '��������');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_IDX_TP', '��������_ָ������', 2, '2', '��ͳ���ָ��', 0, 0, '��������');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_IDX_TP', '��������_ָ������', 3, '3', 'ͳ���ָ��', 0, 0, '��������');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_IMPT', '��������_��Ҫ�̶�', 1, '1', '�ǳ���Ҫ', 0, 0, '��������');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_IMPT', '��������_��Ҫ�̶�', 2, '2', '��Ҫ', 0, 0, '��������');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_IMPT', '��������_��Ҫ�̶�', 3, '3', 'һ��', 0, 0, '��������');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_SPVS_MODE', '��������_���췽ʽ', 1, '1', '���ֹ�', 0, 0, '��������');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_SPVS_MODE', '��������_���췽ʽ', 2, '2', '�������ɺ�', 0, 0, '��������');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_SPVS_MODE', '��������_���췽ʽ', 3, '3', '�����ֹǰ', 0, 0, '��������');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_SPVS_MODE', '��������_���췽ʽ', 4, '4', '��ʱ����', 0, 0, '��������');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_SRVC_MODE', '��������_����ʽ', 1, '1', '�绰', 0, 0, '��������');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_SRVC_MODE', '��������_����ʽ', 2, '2', '���Űݷ�', 0, 0, '��������');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_SRVC_MODE', '��������_����ʽ', 98, '98', '�ʾ����', 0, 0, '��������');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_SRVC_MODE', '��������_����ʽ', 99, '99', '��Ϣ����', 0, 0, '��������');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_SRVC_ST', '��������_����״̬', -1, '-1', '�޷�����', 0, 0, '��������');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_SRVC_ST', '��������_����״̬', 0, '0', 'δ����', 0, 0, '��������');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_SRVC_ST', '��������_����״̬', 1, '1', '�ѷ���', 0, 0, '��������');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_STATC_MODE', '��������_ͳ�Ʒ�ʽ', 1, '1', '�ϼ�', 0, 0, '��������');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_STATC_MODE', '��������_ͳ�Ʒ�ʽ', 2, '2', 'ƽ��', 0, 0, '��������');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_STATC_MODE', '��������_ͳ�Ʒ�ʽ', 3, '3', '���ֵ', 0, 0, '��������');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_STATC_MODE', '��������_ͳ�Ʒ�ʽ', 4, '4', '��Сֵ', 0, 0, '��������');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_STRT_USE_ST', '��������_����״̬', 0, '0', '����', 0, 0, '��������');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_STRT_USE_ST', '��������_����״̬', 1, '1', '����', 0, 0, '��������');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_TASK_ST', '��������_����״̬', -1, '-1', 'δ�´�', 0, 0, '��������');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_TASK_ST', '��������_����״̬', 0, '0', '�༭��', 0, 0, '��������');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_TASK_ST', '��������_����״̬', 1, '1', '������', 0, 0, '��������');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_TASK_ST', '��������_����״̬', 2, '2', '�����', 0, 0, '��������');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_TASK_ST', '��������_����״̬', 3, '3', '����ֹ', 0, 0, '��������');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_TASK_ST', '��������_����״̬', 4, '4', '�ѹ���', 0, 0, '��������');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_SUBCL', '��������_MOT�¼�����', 1, '1', '�ֲֶ�̬Ӧ�Բ���', 0, 0, '��������');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_SUBCL', '��������_MOT�¼�����', 2, '2', 'ҵ������', 0, 0, '��������');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_SUBCL', '��������_MOT�¼�����', 3, '3', '�ʽ���', 0, 0, '��������');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_SUBCL', '��������_MOT�¼�����', 4, '4', '�ͻ�������Ϣ', 0, 0, '��������');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_SUBCL', '��������_MOT�¼�����', 5, '5', '�ͻ�����', 0, 0, '��������');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_SUBCL', '��������_MOT�¼�����', 6, '6', '������', 0, 0, '��������');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_TRTMRQMT', '��������_MOTִ������', 1, '1', '����', 0, 0, '��������');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_TRTMRQMT', '��������_MOTִ������', 2, '2', 'ѡ��', 0, 0, '��������');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_TRTMRQMT', '��������_MOTִ������', 3, '3', '�Զ��ұ���', 0, 0, '��������');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_TRTMRQMT', '��������_MOTִ������', 4, '4', '�Զ���ѡ��', 0, 0, '��������');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPTZPZ_SDX', '��ƷͶ��Ʒ��_�ʵ���', 1, '01', '�̶�������', 0, 0, '�ʵ����¹�');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPTZPZ_SDX', '��ƷͶ��Ʒ��_�ʵ���', 2, '02', 'Ȩ����', 0, 0, '�ʵ����¹�');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPTZPZ_SDX', '��ƷͶ��Ʒ��_�ʵ���', 3, '03', '����Ʒ��', 0, 0, '�ʵ����¹�');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPTZPZ_SDX', '��ƷͶ��Ʒ��_�ʵ���', 4, '04', '���ӻ�߷�����', 0, 0, '�ʵ����¹�');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPTZPZ_SDX', '��ƷͶ��Ʒ��_�ʵ���', 99, '99', '������', 0, 0, '�ʵ����¹�');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPTZQX_SDX', '��ƷͶ������_�ʵ���', 0, '0', '0��1��', 0, 0, '�ʵ����¹�');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPTZQX_SDX', '��ƷͶ������_�ʵ���', 1, '1', '0��5��', 0, 0, '�ʵ����¹�');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPTZQX_SDX', '��ƷͶ������_�ʵ���', 2, '2', '1��5��', 0, 0, '�ʵ����¹�');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPTZQX_SDX', '��ƷͶ������_�ʵ���', 4, '4', '5������', 0, 0, '�ʵ����¹�');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPYQSY_SDX', '��ƷԤ������_�ʵ���', 0, '0', '��������Ƚϵͣ������ܱ�֤����ȫ', 0, 0, '�ʵ����¹�');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPYQSY_SDX', '��ƷԤ������_�ʵ���', 1, '1', '��������һ�������棬���Գе�һ����Ͷ�ʷ���', 0, 0, '�ʵ����¹�');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPYQSY_SDX', '��ƷԤ������_�ʵ���', 2, '2', '���������ϴ�����棬���Գе��ϴ��Ͷ�ʷ���', 0, 0, '�ʵ����¹�');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPYQSY_SDX', '��ƷԤ������_�ʵ���', 3, '3', '����ʵ���ʱ����������Ը��е��ܴ��Ͷ�ʷ���', 0, 0, '�ʵ����¹�');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZPZ_SDX', '�ͻ�Ͷ��Ʒ��_�ʵ���', 1, '01', 'ծȯ�������г�����ծȯ����ȹ̶�������Ͷ��Ʒ��', 0, 0, '�ʵ����¹�');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZPZ_SDX', '�ͻ�Ͷ��Ʒ��_�ʵ���', 2, '02', '��Ʊ������ͻ���ƫ���ͻ��𡢹�Ʊ�ͻ����Ȩ����Ͷ��Ʒ��', 0, 0, '�ʵ����¹�');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZPZ_SDX', '�ͻ�Ͷ��Ʒ��_�ʵ���', 3, '03', '�ڻ���������Ȩ��������ȯ��', 0, 0, '�ʵ����¹�');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZPZ_SDX', '�ͻ�Ͷ��Ʒ��_�ʵ���', 4, '04', '���ӽ��ڲ�Ʒ�����', 0, 0, '�ʵ����¹�');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZPZ_SDX', '�ͻ�Ͷ��Ʒ��_�ʵ���', 99, '99', '������Ʒ�����', 0, 0, '�ʵ����¹�');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZQX_SDX', '�ͻ�Ͷ������_�ʵ���', 0, '0', '���ر�Ҫ��', 0, 0, '�ʵ����¹�');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZQX_SDX', '�ͻ�Ͷ������_�ʵ���', 1, '1', '0��5��', 0, 0, '�ʵ����¹�');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZQX_SDX', '�ͻ�Ͷ������_�ʵ���', 4, '4', '0��1��', 0, 0, '�ʵ����¹�');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YQSY_SDX', '�ͻ�Ԥ������_�ʵ���', 0, '0', '��������Ƚϵͣ������ܱ�֤����ȫ', 0, 0, '�ʵ����¹�');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YQSY_SDX', '�ͻ�Ԥ������_�ʵ���', 1, '1', '��������һ�������棬���Գе�һ����Ͷ�ʷ���', 0, 0, '�ʵ����¹�');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YQSY_SDX', '�ͻ�Ԥ������_�ʵ���', 2, '2', '���������ϴ�����棬���Գе��ϴ��Ͷ�ʷ���', 0, 0, '�ʵ����¹�');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YQSY_SDX', '�ͻ�Ԥ������_�ʵ���', 3, '3', '����ʵ���ʱ����������Ը��е��ܴ��Ͷ�ʷ���', 0, 0, '�ʵ����¹�');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('AuditType', '������', 0, '0', '�û�Ȩ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('AuditType', '������', 1, '1', '��ɫȨ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('AuditType', '������', 2, '2', '��֯Ȩ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('AuditType', '������', 3, '3', '�û���Χ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('AuditType', '������', 4, '4', '��ɫ��Χ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BBFXLX', '�����������', 1, '1', '�����ѯʱ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BBFXLX', '�����������', 2, '2', '����ʹ���������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BBFXLX', '�����������', 3, '3', '�����ѯ��־����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BGCLZT', '���洦��״̬', 1, '1', '�ύ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BGCLZT', '���洦��״̬', 2, '2', '׫д���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BGCLZT', '���洦��״̬', 3, '3', '�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BGCLZT', '���洦��״̬', 4, '4', '����ѷ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BGCLZT', '���洦��״̬', 5, '5', '��˲�ͨ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BGLX', '��������', 1, '1', '�˻����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BGLX', '��������', 2, '2', '�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BGLY', '�������', 1, '1', '�ʼĵ�ַ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BGLY', '�������', 2, '2', '�ֻ�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BGLY', '�������', 3, '3', '�ʼ���ַ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BGLY', '�������', 4, '4', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BMKHCS', '���ſ��˲���', 1, '1', '����Ȩ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BMKHCS', '���ſ��˲���', 2, '2', '����ʱЧ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ', '����', 1, '1', '�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ', '����', 2, '2', '�۱�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ', '����', 3, '3', '��Ԫ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZHDZ', '�ж�������׼������', 1, '1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZHDZ', '�ж�������׼������', 2, '2', '�����ʼ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZHDZ', '�ж�������׼������', 4, '4', '�ǼǷ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZZT', '����״̬', 0, '0', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZZT', '����״̬', 1, '1', '���ͨ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZZT', '����״̬', 2, '2', '��˲�ͨ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZZT', '����״̬', 3, '3', '�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZZT', '����״̬', 4, '4', '�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 1, '1', '���Ԫ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 2, '2', '������Ԫ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 3, '3', '�����ʲ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 4, '4', 'UAE����ķ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 5, '5', '�ڼ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 6, '6', 'Mvdol', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 7, '7', '���߲�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 8, '8', '¬���﷨��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 9, '9', '����˹¬��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 10, '10', '����������˹��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 11, '11', '��ýǰ�˹���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 12, '12', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 13, '13', '���ȱ��˹̹��ķ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 14, '14', '�����ձ�Ԫ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 15, '15', 'CFA����BEAC=', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 16, '16', 'ֱ�����Ӱ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 17, '17', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 18, '18', '�����ɶһ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 19, '19', '�����Ԫ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 20, '20', 'ī�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 21, '21', '��³�Ͷ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 22, '22', '(����)*', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 23, '23', 'Ŭ����³ķ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 24, '24', '��������Ԫ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 25, '25', '�밶�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 26, '26', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 27, '27', '̹ɣ��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 28, '28', '�ͰͶ�˹Ԫ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 29, '29', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 30, '30', 'δ�����Ľ��׻��Ҵ���ָ��Ϊ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 31, '31', '����˹¬��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 32, '32', '�ڸɴ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 33, '33', '�ݿ˿���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 34, '34', '��������˹���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 35, '35', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 36, '36', '���������Ƕ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 37, '37', '����Ⱥ��Ԫ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 38, '38', '�п�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 39, '39', '��ʿ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 40, '40', '����������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 41, '41', '�Ͳ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 42, '42', '��Ԫ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 43, '43', 'ŷ�޻��Һϳɵ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 44, '44', '�ƽ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 45, '45', '�ɿ˷�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 46, '46', '�¹����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 47, '47', '�����Ԫ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 48, '48', '���ɶ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 49, '49', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 50, '50', '(ͬ��)*', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 51, '51', '�ŵ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 52, '52', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 53, '53', '���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 54, '54', '쳼�Ԫ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 55, '55', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 56, '56', 'Ӣ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 57, '57', '�Űͱ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 58, '58', '��Ľ��Ԫ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 59, '59', '������������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 60, '60', '����Ԫ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 61, '61', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 62, '62', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 63, '63', '�����϶�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 64, '64', '���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 65, '65', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 66, '66', '����ά������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 67, '67', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 68, '68', '���׽�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 69, '69', '����Ԫ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 70, '70', '�����Ǳ��ܱ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 71, '71', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 72, '72', '��л�Ͷ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 73, '73', '����·˹��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 74, '74', '�и�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 75, '75', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 76, '76', 'ŷ���ʻ�9��λ (E.U.A.-9)', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 77, '77', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 78, '78', '���ױ���Ԫ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 79, '79', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 80, '80', '�ƽ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 81, '81', '�ͻ�˹̹¬��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 82, '82', 'ŷԪ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 83, '83', 'CFP����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 84, '84', '�����ݽ�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 85, '85', '�չ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 86, '86', '���ױ��Ǳ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 87, '87', '�Ĵ�����Ԫ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 88, '88', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 89, '89', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 90, '90', '���޵��ǿ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 91, '91', '����۰�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 92, '92', '��Ԫ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 93, '93', '���ݿ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 94, '94', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 95, '95', '��������Ǳȶ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 96, '96', '���������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 97, '97', '����������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 98, '98', '������Ԫ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 99, '99', '�����Ƿ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 100, '100', '���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 101, '101', '�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 102, '102', '���ɱ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 103, '103', '�͹���Ԫ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 104, '104', 'ӡ��¬��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 105, '105', 'Ϊ�����ر����Ĵ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 106, '106', 'ͼ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 107, '107', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 108, '108', '��Ī��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 109, '109', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 110, '110', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 111, '111', '�յ����ɶ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 112, '112', '���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 113, '113', '�����߶����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 114, '114', '�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 115, '115', '����͢����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 116, '116', 'Ҳ�����Ƕ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 117, '117', 'ë����˹¬��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 118, '118', '���������ǵ��ɶ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 119, '119', '��˹����ӿ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 120, '120', '���߲�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 121, '121', '�������Ƕ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 122, '122', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 123, '123', '���������ּ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 124, '124', '̩��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 125, '125', '������Ⱥ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 126, '126', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 127, '127', '��ķ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 128, '128', '���ֵ��ɶ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 129, '129', '��Ԫ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 130, '130', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 131, '131', '���������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 132, '132', '¬��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 133, '133', '�����¬��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 134, '134', '˹������¬��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 135, '135', '������Ⱥ��Ԫ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 136, '136', '�ر����Ȩ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 137, '137', '�����ᷨ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 138, '138', '�����˵��ɶ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 139, '139', 'Լ�����ɶ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 140, '140', '������Բ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 141, '141', '��Ͳ�ΤԪ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 142, '142', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 143, '143', '��ƶ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 144, '144', 'UIC����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 145, '145', '������ŵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 146, '146', '��̨��Ԫ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 147, '147', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 148, '148', '��Ƥ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 149, '149', '¬ɭ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 150, '150', '�����ǵ��ɶ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 151, '151', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 152, '152', 'CFA����BCEAO+', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 153, '153', '��ͼ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 154, '154', '������������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 155, '155', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 156, '156', 'Ų������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 157, '157', '�Ჴ��¬��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 158, '158', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 159, '159', '����ķ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 160, '160', '��˹������ɶ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 161, '161', '���������и�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 162, '162', '��չ��λ*', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 163, '163', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 164, '164', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 165, '165', '�׶���˹¬��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 166, '166', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 167, '167', 'ɳ�����Ƕ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 168, '168', 'ŷ���ʻ�17��λ(E.U.A-17)', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 169, '169', '�����ǰ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 170, '170', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 171, '171', '���������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 172, '172', '�����ص��ɶ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 173, '173', '�¼���Ԫ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 174, '174', 'Ħ���߶�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 175, '175', 'ʥ�����ð�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 176, '176', '��Ԫ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 177, '177', '�������Ͷ�͸�Ԫ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 178, '178', '����������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 179, '179', '������Ԫ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 180, '180', '��Ħ�޷���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 181, '181', 'Mexican Unidad de inversion', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 182, '182', '˹�工�˿���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 183, '183', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 184, '184', 'Ħ������ķ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 185, '185', '�಼��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 186, '186', '������ӱ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 187, '187', '����ʱ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 188, '188', '�������Ƕ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 189, '189', 'ŷ�޻��ҵ�λ (E.M.U.-6)***', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 190, '190', '�������Ǵ�ķ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 191, '191', 'ͻ��˹���ɶ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 192, '192', '�����밣˹���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 193, '193', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 194, '194', '��¡�Ϸ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 195, '195', '�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 196, '196', '��Ԫ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 197, '197', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '����_����', 198, '198', '¬����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CBJZLX', '�ɱ���������', 1, '1', 'һ���Գɱ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CBJZLX', '�ɱ���������', 2, '2', '̯���ɱ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '��ϯ�������', 1, '1', 'ǩ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '��ϯ�������', 2, '2', 'ǩ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '��ϯ�������', 3, '3', 'ժ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '��ϯ�������', 4, '4', '�һ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '��ϯ�������', 5, '5', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '��ϯ�������', 6, '6', '�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '��ϯ�������', 7, '7', 'תIVR', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '��ϯ�������', 8, '8', 'תIVR����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '��ϯ�������', 9, '9', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '��ϯ�������', 10, '10', '���ֽ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '��ϯ�������', 11, '11', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '��ϯ�������', 12, '12', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '��ϯ�������', 13, '13', 'ʾæ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '��ϯ�������', 14, '14', 'ʾæ����(ʾ��)', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '��ϯ�������', 15, '15', '���к���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '��ϯ�������', 16, '16', '���к�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '��ϯ�������', 17, '17', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '��ϯ�������', 18, '18', '������������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '��ϯ�������', 19, '19', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '��ϯ�������', 20, '20', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '��ϯ�������', 21, '21', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '��ϯ�������', 22, '22', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '��ϯ�������', 23, '23', 'ת��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '��ϯ�������', 24, '24', 'webchat-ǩ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '��ϯ�������', 25, '25', 'webchat-ǩ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '��ϯ�������', 26, '26', 'webchat-��ʼͨ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '��ϯ�������', 27, '27', 'webchat-����ͨ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '��ϯ�������', 28, '28', 'webchat-��ʼ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '��ϯ�������', 29, '29', 'webchat-��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '��ϯ�������', 30, '30', 'webchat-��ʼ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '��ϯ�������', 31, '31', 'webchat-��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '��ϯ�������', 32, '32', 'webchat-��ʼʾæ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '��ϯ�������', 33, '33', 'webchat-����ʾæ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_THLX', 'ͨ������', 1, 'Code1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_THLX', 'ͨ������', 2, 'Code2', 'WEBCHAT', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_ZXQX', '��ϯȨ��', 1, '1', '������ϯ����Ȩ��', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_ZXQX', '��ϯȨ��', 2, '2', '����', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_ZXQX', '��ϯȨ��', 4, '4', '���', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_ZXQX', '��ϯȨ��', 8, '8', '����', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_ZXQX', '��ϯȨ��', 16, '16', '����', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_ZXQX', '��ϯȨ��', 32, '32', '�ӹ�', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_ZXQX', '��ϯȨ��', 64, '64', 'ǿ��ǩ��', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_ZXQX', '��ϯȨ��', 128, '128', 'ǿ��ʾ��', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_ZXQX', '��ϯȨ��', 256, '256', 'ǿ��ʾæ', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_ZXQX', '��ϯȨ��', 512, '512', 'Webchat����Ȩ��', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_ZXQX', '��ϯȨ��', 1024, '1024', 'Webchat-����', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_ZXQX', '��ϯȨ��', 2048, '2048', 'Webchat-����', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_ZXQX', '��ϯȨ��', 4096, '4096', 'Webchat-�ӹ�', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_ZXQX', '��ϯȨ��', 8192, '8192', 'Webchat-ǿ��ǩ��', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_ZXQX', '��ϯȨ��', 16384, '16384', 'Webchat-ǿ��ʾ��', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_ZXQX', '��ϯȨ��', 32768, '32768', 'Webchat-ǿ��ʾæ', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CDFL', '�˵�����', 1, '1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CDFL', '�˵�����', 2, '2', '�ͻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CDFL', '�˵�����', 3, '3', '��Ʒ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CDFL', '�˵�����', 4, '4', '�ⲿ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CFKHLX', '�Ƹ��ͻ�����', 1, '1', '�Ƹ��ͻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CFKHLX', '�Ƹ��ͻ�����', 2, '2', '���ڿͻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CFKHLX', '�Ƹ��ͻ�����', 3, '3', '�����ͻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CFKHLX', '�Ƹ��ͻ�����', 4, '4', '�����ͻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CI_TZPZ', 'Ͷ��Ʒ��_CI_CLIENTPREFER', 1, '1', '��Ʊ������ͻ���ƫ���ͻ��𡢹�Ʊ�ͻ����Ȩ����Ͷ��Ʒ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CI_TZPZ', 'Ͷ��Ʒ��_CI_CLIENTPREFER', 2, '2', 'ծȯ�������г�����ծȯ����ȹ̶�������Ͷ��Ʒ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CI_TZPZ', 'Ͷ��Ʒ��_CI_CLIENTPREFER', 3, '3', '�ڻ���������ȯ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CI_TZPZ', 'Ͷ��Ʒ��_CI_CLIENTPREFER', 4, '4', '���ӽ��ڲ�Ʒ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CI_TZPZ', 'Ͷ��Ʒ��_CI_CLIENTPREFER', 5, '5', '������Ʒ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CI_TZQX', 'Ͷ������_CI_CLIENTPREFER', 1, '1', '0��1��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CI_TZQX', 'Ͷ������_CI_CLIENTPREFER', 2, '2', '1��5��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CI_TZQX', 'Ͷ������_CI_CLIENTPREFER', 3, '3', '1��3��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CI_TZQX', 'Ͷ������_CI_CLIENTPREFER', 4, '4', '3��5��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CI_TZQX', 'Ͷ������_CI_CLIENTPREFER', 5, '5', '5������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CLBS', '������ʶ', 1, '1', '��ͨ', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CLBS', '������ʶ', 2, '2', '����', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CLBS', '������ʶ', 4, '4', '��ʧ��', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CLBS', '������ʶ', 8, '8', '׼���߻�', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CLBS', '������ʶ', 16, '16', '������ȯ', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CLBS', '������ʶ', 32, '32', 'Լ������', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CLZT', '����״̬', 1, 'Code 1', '�ѷַ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CLZT', '����״̬', 2, 'Code 2', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CLZT', '����״̬', 3, 'Code 3', '�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CLZT', '����״̬', 4, 'Code 4', '�ѻظ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CLZT', '����״̬', 5, 'Code 5', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPCLLB', '��Ʒ�������', 1, '1', '������Ʒ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPCLLB', '��Ʒ�������', 2, '2', '�շѲ�Ʒ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPCLLB', '��Ʒ�������', 3, '3', '��Ա��Ʒ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPCLLB', '��Ʒ�������', 4, '4', 'Ͷ�˲�Ʒ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPCXQD', '�ӿ�����', 0, '0', 'CRM', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPCXQD', '�ӿ�����', 1, '1', 'OCRM', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPCXQD', '�ӿ�����', 3, '3', '�ֻ�����', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPCXQD', '�ӿ�����', 5, '5', '��Ͷ�̳�', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPCXQD', '�ӿ�����', 6, '6', '�����̳�', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPFXDJ', '��Ʒ���յȼ�', 1, '1', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPFXDJ', '��Ʒ���յȼ�', 2, '2', '�е�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPFXDJ', '��Ʒ���յȼ�', 3, '3', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPFXDJ', '��Ʒ���յȼ�', 4, '4', '�и�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPFXDJ', '��Ʒ���յȼ�', 5, '5', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPFXDJ_SZ', '��Ʒ���յȼ�_����', 1, '1', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPFXDJ_SZ', '��Ʒ���յȼ�_����', 2, '2', '�е�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPFXDJ_SZ', '��Ʒ���յȼ�_����', 3, '3', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPFXDJ_SZ', '��Ʒ���յȼ�_����', 4, '4', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPFXDJ_SZ', '��Ʒ���յȼ�_����', 5, '5', '�и�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '��Ʒ���', 1, '1', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '��Ʒ���', 2, '2', '�¹��깺����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '��Ʒ���', 3, '3', '�¹ɶ��۲���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '��Ʒ���', 4, '4', 'ծȯ�г��׶����о�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '��Ʒ���', 5, '5', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '��Ʒ���', 6, '6', '�������ݼ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '��Ʒ���', 7, '7', '���������±�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '��Ʒ���', 8, '8', '���������ؿ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '��Ʒ���', 9, '9', '�Ƹ�̩ɽ��೵', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '��Ʒ���', 10, '10', '��³��೵', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '��Ʒ���', 11, '11', 'һ��Ҫ�Żع�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '��Ʒ���', 12, '12', '�Ƹ�̩ɽ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '��Ʒ���', 13, '13', '��³���н�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '��Ʒ���', 14, '14', '�Ƹ�̩ɽ�±�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '��Ʒ���', 15, '15', '���ƽ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '��Ʒ���', 16, '16', '�ȵ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '��Ʒ���', 17, '17', '������ȯ�ܲ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '��Ʒ���', 18, '18', '��ָ�ڻ��ܲ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '��Ʒ���', 19, '19', '��³��ձ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '��Ʒ���', 20, '20', '��³��ձ��ܿ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '��Ʒ���', 21, '21', '����غͻ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '��Ʒ���', 22, '22', '�����Ѷ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '��Ʒ���', 23, '23', '����۲�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '��Ʒ���', 24, '24', '�ص����Ͷ�ʽ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '��Ʒ���', 25, '25', '���г�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '��Ʒ���', 26, '26', '�������ײ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '��Ʒ���', 27, '27', 'ȫ�г��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '��Ʒ���', 28, '28', 'Ȩ����������Ͷ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '��Ʒ���', 29, '29', '����ƷͶ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '��Ʒ���', 30, '30', '���Ƿ���ʦͶ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '��Ʒ���', 31, '31', '����Ͷ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '��Ʒ���', 32, '32', '�ֽ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLX', '��Ʒ����', 1, '1', '��Ѷ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLX', '��Ʒ����', 2, '2', '���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLX', '��Ʒ����', 3, '3', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLX', '��Ʒ����', 4, '4', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLYZD', '��Ʒ��Դ�ֵ�', 1, '1', '����˾', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLYZD', '��Ʒ��Դ�ֵ�', 2, '2', '�ⲿ���й�˾', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLYZD', '��Ʒ��Դ�ֵ�', 3, '3', '��˾�������Ʒ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLYZD', '��Ʒ��Դ�ֵ�', 4, '4', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPPFXM', '��Ʒ������Ŀ', 1, 'KXX', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPPFXM', '��Ʒ������Ŀ', 2, 'ZYX', 'רҵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPPFXM', '��Ʒ������Ŀ', 3, 'XY', 'Ч��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPQX', '������', 2, '2', '6-12����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPQX', '������', 3, '3', '12-18����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPQX', '������', 4, '4', '18-24����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPQX', '������', 5, '5', '2������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPXSJB', '��Ʒ���ۼ���', 0, '0', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPXSJB', '��Ʒ���ۼ���', 1, '1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPXSLX', '��Ʒ��������', 0, '0', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPXSLX', '��Ʒ��������', 1, '1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CRMWTXQCLR', 'CRM������������', 0, '0', '����ΰ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CRMWTXQCLR', 'CRM������������', 1, '1', 'Ī����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CRMWTXQCLR', 'CRM������������', 2, '2', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CRMWTXQCLR', 'CRM������������', 3, '3', '���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CRMWTXQCLR', 'CRM������������', 4, '4', '�⿡', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CRMWTXQCLR', 'CRM������������', 5, '5', '�½���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CSLX', '��������', 1, '1', '��Сֵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CSLX', '��������', 2, '3', '���ֵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CSLX', '��������', 3, '3', '��Χֵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CW', '��ν', 1, '1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CW', '��ν', 2, '2', 'Ůʿ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CW', '��ν', 3, '3', '��ʿ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CW', '��ν', 4, '4', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CXJB', '���¼���', 1, '1', '���»�Ծ�˻�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CXJB', '���¼���', 2, '2', '�����ص��˻�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CXJB', '���¼���', 3, '3', '���¿����˻�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CXJB', '���¼���', 4, '4', '���ճ������������˻�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYBFXCSNL', '��ҵ����ճ�������', 1, '1', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYBFXCSNL', '��ҵ����ճ�������', 2, '2', '�Ƚ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYBFXCSNL', '��ҵ����ճ�������', 3, '3', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYBFXCSNL', '��ҵ����ճ�������', 4, '4', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYBFXCSNL', '��ҵ����ճ�������', 5, '5', 'ƽ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '��ҵ���Կ�Ŀ', 1, '1', '֤ȯ�г�����֪ʶ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '��ҵ���Կ�Ŀ', 2, '2', '֤ȯ���������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '��ҵ���Կ�Ŀ', 3, '3', '֤ȯ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '��ҵ���Կ�Ŀ', 4, '4', '֤ȯͶ�ʷ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '��ҵ���Կ�Ŀ', 5, '5', '֤ȯͶ�ʻ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '��ҵ���Կ�Ŀ', 7, '7', '֤ȯ�г�������ר�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '��ҵ���Կ�Ŀ', 8, '8', '֤ȯ����ҵ��Ӫ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '��ҵ���Կ�Ŀ', 9, '9', '�ڻ����ɷ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '��ҵ���Կ�Ŀ', 10, '10', '�ڻ�����֪ʶ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '��ҵ���Կ�Ŀ', 11, '11', '�ڻ�Ͷ�ʷ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '��ҵ���Կ�Ŀ', 12, '12', '֤ȯͶ�ʻ������֪ʶ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '��ҵ���Կ�Ŀ', 13, '13', '�����ɷ��桢ְҵ������ҵ��淶', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '��ҵ���Կ�Ŀ', 14, '14', '֤ȯ�г��������ɷ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '��ҵ���Կ�Ŀ', 15, '15', '�����г�����֪ʶ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '��ҵ���Կ�Ŀ', 16, '16', '����ר���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '��ҵ���Կ�Ŀ', 17, '17', '˽ļ��ȨͶ�ʻ��𣨺���ҵͶ�ʻ��𣩻���֪ʶ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '��ҵ���Կ�Ŀ', 18, '18', '֤ȯ֪ʶ�ۺϿ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '��ҵ���Կ�Ŀ', 19, '19', 'Ͷ������ҵ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '��ҵ���Կ�Ŀ', 20, '20', '����֤ȯ�о�����ҵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '��ҵ���Կ�Ŀ', 21, '21', '֤ȯͶ�ʹ���ҵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '��ҵ���Կ�Ŀ', 22, '22', 'ע�����Ͷ�ʷ���ʦ��CIIA��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '��ҵ���Կ�Ŀ', 23, '23', '����֤ȯ���ڻ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '��ҵ���Կ�Ŀ', 24, '24', '���ʦ���м�������ְ�ƣ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '��ҵ���Կ�Ŀ', 25, '25', '���մ������ʸ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '��ҵ���Կ�Ŀ', 26, '26', '��ƴ�ҵ�ʸ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '��ҵ���Կ�Ŀ', 50, '50', '���м䱾���г�����Ա����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '��ҵ���Կ�Ŀ', 51, '51', 'ծȯ�йܽ���ҵ���ʸ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '��ҵ���Կ�Ŀ', 52, '52', '�Ǽ��йܼ���ȯ�������ҵ���ʸ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '��ҵ���Կ�Ŀ', 53, '53', '����֤ȯ��Ѻ�Ǽ�ҵ���ʸ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '��ҵ���Կ�Ŀ', 54, '54', '��ƴ�ҵ�ʸ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '��ҵ���Կ�Ŀ', 55, '55', '����ע���ڲ����ʦ��CIA��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '��ҵ���Կ�Ŀ', 56, '56', 'ע����ʦ��CPA��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '��ҵ���Կ�Ŀ', 57, '57', '����ע����Ϣϵͳ���ʦ��CISA��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '��ҵ���Կ�Ŀ', 58, '58', 'ע����ʦ��CPA������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '��ҵ���Կ�Ŀ', 59, '59', '����˾������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '��ҵ���Կ�Ŀ', 60, '60', '������ڷ���ʦ��CFA������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '��ҵ���Կ�Ŀ', 61, '61', '֤ȯ��˾�Ϲ������Աʤ����������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '��ҵ���Կ�Ŀ', 62, '62', '֤ȯ��˾�߼�������Ա���ʲ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYZG', '��ҵ�ʸ�', 1, '1', '֤ȯ����ҵ��Ӫ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYZG', '��ҵ�ʸ�', 2, '2', '�����ƽ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYZG', '��ҵ�ʸ�', 4, '4', '�ڻ���ҵ�ʸ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYZG', '��ҵ�ʸ�', 8, '8', '֤ȯ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYZG', '��ҵ�ʸ�', 16, '16', '֤ȯͶ����ѯҵ��(����)', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYZG', '��ҵ�ʸ�', 32, '32', 'һ��֤ȯҵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYZG', '��ҵ�ʸ�', 64, '64', '����Ͷ�ʹ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYZG', '��ҵ�ʸ�', 128, '128', '֤ȯͶ����ѯҵ��(����ʦ)', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYZG', '��ҵ�ʸ�', 256, '256', '֤ȯͶ����ѯҵ��Ͷ�ʹ��ʣ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYZG', '��ҵ�ʸ�', 512, '512', 'AFP��������ƹ滮ʦ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYZG', '��ҵ�ʸ�', 1024, '1024', 'CFP����ƹ滮ʦ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYZG', '��ҵ�ʸ�', 2048, '2048', 'CFA��������ڷ���ʦ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYZG', '��ҵ�ʸ�', 4096, '4096', 'CIIA��ע�����Ͷ�ʷ���ʦ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYZG', '��ҵ�ʸ�', 8192, '8192', '�ڻ�Ͷ����ѯ�ʸ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYZG', '��ҵ�ʸ�', 16384, '16384', '���������ʸ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYZG', '��ҵ�ʸ�', 32768, '32768', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DCFS', '���鷽ʽ', 1, '1', '��̸', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DCFS', '���鷽ʽ', 2, '2', '�绰', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DCFS', '���鷽ʽ', 3, '3', '�ʼ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DCFS', '���鷽ʽ', 4, '4', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DCFS', '���鷽ʽ', 5, '5', 'QQ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DCFS', '���鷽ʽ', 6, '6', 'MSN', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DCFS', '���鷽ʽ', 7, '7', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DCGLXMFL', '���������Ŀ����', 1, '1', '����1', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DCGLXMFL', '���������Ŀ����', 2, '2', '����2', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDCLZT', '��������״̬', 1, '1', '�ύ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDCLZT', '��������״̬', 2, '2', '������ȷ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDCLZT', '��������״̬', 3, '3', '���ͨ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDCLZT', '��������״̬', 4, '4', '����ȡ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDCLZT', '��������״̬', 5, '5', '��˲�ͨ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDCLZT', '��������״̬', 6, '6', '������Ч', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_FSF', '�εη���_���ͷ�', 1, '1', '�ͻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_FSF', '�εη���_���ͷ�', 2, '2', '�ڲ�Ա��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_GDLX', '�εη���_��������', 1, '1', '��ѯ�ʴ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_GDLX', '�εη���_��������', 2, '2', 'ԤԼ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_GZSJ', '�εη���_�Ƿ���ʱ��', 0, '0', '�ǹ���ʱ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_GZSJ', '�εη���_�Ƿ���ʱ��', 1, '1', '����ʱ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_JNDJ', '�εη���_���ܵȼ�', 1, '1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_JNDJ', '�εη���_���ܵȼ�', 2, '2', '�м�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_JNDJ', '�εη���_���ܵȼ�', 3, '3', '�߼�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_JZYY', '�εη���_��ֹ����ԭ��', 1, '1', 'Ͷ�߹���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_JZYY', '�εη���_��ֹ����ԭ��', 2, '2', '����ͻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_JZYY', '�εη���_��ֹ����ԭ��', 3, '3', 'Υ���涨', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_JZYY', '�εη���_��ֹ����ԭ��', 4, '4', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_KHLX', '�εη���_�ͻ�����', 0, '0', '����˻�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_KHLX', '�εη���_�ͻ�����', 1, '1', '��ʽ�ͻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_KHLX', '�εη���_�ͻ�����', 2, '2', 'ע��ͻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_KHLX', '�εη���_�ͻ�����', 3, '3', '�����ͻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_LYLX', '�εη���_��Դ����', 1, '1', '΢��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_LYLX', '�εη���_��Դ����', 2, '2', '�ֻ�APP', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_LYLX', '�εη���_��Դ����', 3, '3', '��վ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_LYLX', '�εη���_��Դ����', 4, '4', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_NLFW', '�εη���_���䷶Χ', 1, '[0,20��)', '�� 1 ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_NLFW', '�εη���_���䷶Χ', 2, '[20��,30��)', '�� 2 ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_NLFW', '�εη���_���䷶Χ', 3, '[30��,40��)', '�� 3 ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_NLFW', '�εη���_���䷶Χ', 4, '[40��,50��)', '�� 4 ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_NLFW', '�εη���_���䷶Χ', 5, '[50��,65��)', '�� 5 ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_NLFW', '�εη���_���䷶Χ', 6, '[65��,~)', '�� 6 ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_NRLX', '�εη���_��������', 1, '1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_NRLX', '�εη���_��������', 2, '2', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_NRLX', '�εη���_��������', 3, '3', 'ͼ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_NRLX', '�εη���_��������', 4, '4', '��Ƶ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_PJJG', '�εη���_���۽��', 1, '1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_PJJG', '�εη���_���۽��', 2, '2', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_PJLX', '�εη���_��������', 0, '0', 'δ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_PJLX', '�εη���_��������', 1, '1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_PJLX', '�εη���_��������', 2, '2', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_QDZT', '�εη���_����״̬', 0, '0', 'ʧ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_QDZT', '�εη���_����״̬', 1, '1', '�ɹ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_XB', '�εη���_�Ա�', 1, '1', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_XB', '�εη���_�Ա�', 2, '2', 'Ů', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDLX', '��������', 0, '0', '�޼�ί��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDLX', '��������', 1, '1', '�����嵵�����ɽ�ʣ�೷��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDLX', '��������', 2, '2', '�����嵵�����ɽ�ʣ��ת�޼�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDLX', '��������', 101, '101', '�м�ת�޼۶���(����)', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDLX', '��������', 102, '102', '���ż۸񶩵�(����)', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDLX', '��������', 103, '103', '�����ɽ�������(����)', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDLX', '��������', 104, '104', '�����嵵�����ɽ�������(����)', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDLX', '��������', 105, '105', 'ȫ���ɽ����򳷵�(����)', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDZT', '����״̬', 0, '0', 'δ��Ч', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDZT', '����״̬', 1, '1', '����Ч', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPQX', '������', 1, '1', '6��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDZT', '����״̬', 2, '2', 'δ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDZT', '����״̬', 3, '3', '�ѹ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDZT', '����״̬', 4, '4', '���˶�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DJDW', '���۵�λ', 0, '0', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DJDW', '���۵�λ', 1, '1', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DJDW', '���۵�λ', 2, '2', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DJDW', '���۵�λ', 3, '3', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DJQK', '�Ǽ����', 1, '1', '�ѵǼ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DJQK', '�Ǽ����', 2, '2', 'δ�Ǽ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DLQX', '����Ȩ��', 1, '1', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DLQX', '����Ȩ��', 2, '2', '����ȡ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DLQX', '����Ȩ��', 4, '4', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DLQX', '����Ȩ��', 8, '8', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DLQX', '����Ȩ��', 16, '16', '����ת��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DLQX', '����Ȩ��', 32, '32', '����ָ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DLQX', '����Ȩ��', 64, '64', '������ת֤', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DLQX', '����Ȩ��', 128, '128', '����֤ת��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DLQX', '����Ȩ��', 256, '256', 'ȫȨ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DOCMODULETYPE', '�ĵ�ģ������', 1, 'PUBLIC', 'ͨ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DOCMODULETYPE', '�ĵ�ģ������', 2, 'GZBG', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DOCMODULETYPE', '�ĵ�ģ������', 3, 'GZZJ', '�����ܽ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DOCMODULETYPE', '�ĵ�ģ������', 4, 'NDZJ', '����ܽ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DOCMODULETYPE', '�ĵ�ģ������', 5, 'XMJH', '��Ŀ�ƻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DOCMODULETYPE', '�ĵ�ģ������', 6, 'XMZJ', '��Ŀ�ܽ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DOCMODULETYPE', '�ĵ�ģ������', 7, 'GRJL', '���˼���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DOCMODULETYPE', '�ĵ�ģ������', 8, 'JJRHT', '�����˺�ͬ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DQFL', '��������', 1, '1', 'һ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DQFL', '��������', 2, '2', '�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DQFL', '��������', 3, '3', '�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DQFL', '��������', 4, '4', '�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DQFL', '��������', 5, '5', '�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DTQJ_CZMS', '��̬ȫ��_����ģʽ', 1, '1', '[LiveBOS]����¼', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DTQJ_CZMS', '��̬ȫ��_����ģʽ', 2, '2', '[LiveBOS]���¼', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DTQJ_CZMS', '��̬ȫ��_����ģʽ', 3, '3', '���ɲ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DTQJ_CZMS', '��̬ȫ��_����ģʽ', 4, '4', '[����]����¼', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DTQJ_CZMS', '��̬ȫ��_����ģʽ', 5, '5', '[����]���¼', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DTQJ_DKFS', '��̬ȫ��_���Ӵ򿪷�ʽ', 1, '1', '�Ի���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DTQJ_DKFS', '��̬ȫ��_���Ӵ򿪷�ʽ', 2, '2', '[Ĭ��]��ҳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DTQJ_DKFS', '��̬ȫ��_���Ӵ򿪷�ʽ', 3, '3', 'ԭҳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DTQJ_DKFS', '��̬ȫ��_���Ӵ򿪷�ʽ', 4, '4', '[IFr]��ҳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DTZSFL', '��̬֪ʶ����', 1, '1', '��ҵ��̬', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DTZSFL', '��̬֪ʶ����', 2, '2', 'ͬҵӪ����̬�¿�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DWXZ', '��λ����', 1, '1', '������ҵ�����й�˾', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DWXZ', '��λ����', 2, '2', '������ҵ�������й�˾', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DWXZ', '��λ����', 3, '3', '�ǹ�����ҵ�����й�˾', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DWXZ', '��λ����', 4, '4', '�ǹ�����ҵ�������й�˾', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DWXZ', '��λ����', 10, '10', '�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DWXZ', '��λ����', 11, '11', '����֤ȯ��˾', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DWXZ', '��λ����', 12, '12', '���������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DWXZ', '��λ����', 13, '13', '����һ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DWXZ', '��λ����', 99, '99', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DXFL', '���ŷ���', 1, '1', 'Ͷ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DXFL', '���ŷ���', 2, '2', '��Ͷ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DXLX', '��������', 1, '1', '��ʽ�ͻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DXLX', '��������', 2, '2', '�����ؼ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DXLX', '��������', 3, '3', 'Ǳ�ڿͻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DXLX', '��������', 4, '4', '�ͻ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DXLX', '��������', 5, '5', '�ͻ�Ⱥ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DXLX', '��������', 6, '6', '��Ա', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DYXZ', '��ɵ�Ӷ����', 0, '0', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DYXZ', '��ɵ�Ӷ����', 1, '1', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DYXZ', '��ɵ�Ӷ����', 2, '2', 'δ֪', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DZDJSXZ', '���ʵ�����ѡ��', 1, '1', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DZDJSXZ', '���ʵ�����ѡ��', 2, '2', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DZDJSXZ', '���ʵ�����ѡ��', 3, '3', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DZDJSXZ', '���ʵ�����ѡ��', 4, '4', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DZDJSXZ', '���ʵ�����ѡ��', 5, '5', 'һ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('F1', '��Ȥ����', 1, '1', '��ʳ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('F1', '��Ȥ����', 2, '2', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('F1', '��Ȥ����', 3, '3', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('F1', '��Ȥ����', 4, '4', '��Ӱ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('F1', '��Ȥ����', 5, '5', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('F1', '��Ȥ����', 6, '6', 'Ϸ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('F1', '��Ȥ����', 7, '7', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('F1', '��Ȥ����', 8, '8', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('F1', '��Ȥ����', 9, '9', '׬Ǯ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('F1', '��Ȥ����', 10, '10', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('F1', '��Ȥ����', 11, '11', '��Ϸ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('F1', '��Ȥ����', 12, '12', '�滭', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('F1', '��Ȥ����', 13, '13', '�鷨', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('F1', '��Ȥ����', 14, '14', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('F1', '��Ȥ����', 15, '15', 'ʱ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('F1', '��Ȥ����', 16, '16', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('F1', '��Ȥ����', 17, '17', '�Ķ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('F1', '��Ȥ����', 18, '18', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('F1', '��Ȥ����', 19, '19', '�����˶�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('F1', '��Ȥ����', 20, '20', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('F1', '��Ȥ����', 21, '21', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('F1', '��Ȥ����', 22, '22', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('F1', '��Ȥ����', 23, '23', '�ڽ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('F2', '�ɱ�����', 1, '1', '���з��˹�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('F2', '�ɱ�����', 2, '2', '���ڷ��˹�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('F2', '�ɱ�����', 3, '3', '���ⷨ�˹�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('F2', '�ɱ�����', 4, '4', '��ͨA��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('F2', '�ɱ�����', 5, '5', '��ͨB��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FAFL', '�ʲ����÷�������', 1, '1', '�����ʲ����÷���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FAFL', '�ʲ����÷�������', 2, '2', '��ͥ�ʲ����÷���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FAFL', '�ʲ����÷�������', 3, '3', '��ҵ�ʲ����÷���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FHXM', '�ط���Ŀ', 1, '1', '�����ͻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FHXM', '�ط���Ŀ', 2, '2', '��Ҫ�ͻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FHXM', '�ط���Ŀ', 3, '3', '�쳣�ͻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FHXM', '�ط���Ŀ', 4, '4', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FHXM', '�ط���Ŀ', 5, '5', 'cc�ӿڲ��Կͻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FHXM', '�ط���Ŀ', 6, '6', 'ר��Ӫ������ȷ�ϵ�ǩ��ͻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FKFXJB', '��ط��ռ���', 1, 'Code1', '��ʾ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FKFXJB', '��ط��ռ���', 2, 'Code2', 'ע��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FKFXJB', '��ط��ռ���', 3, 'Code3', '��ע', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FKFXJB', '��ط��ռ���', 4, 'Code4', '�߶ȹ�ע', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FKLX', '��������', 1, '1', '��Ч����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FKLX', '��������', 2, '2', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FKLX', '��������', 3, '3', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FPATDKHFL', '���ڲ�Ʒ���ض��ͻ�����', 1, '1', '�󼯺�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FPATDKHFL', '���ڲ�Ʒ���ض��ͻ�����', 2, '2', 'С����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FPATDKHFL', '���ڲ�Ʒ���ض��ͻ�����', 3, '3', 'һ��һר��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FPATDKHFL', '���ڲ�Ʒ���ض��ͻ�����', 4, '4', 'һ�Զ�ר��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FPATDKHFL', '���ڲ�Ʒ���ض��ͻ�����', 5, '5', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FPCPJG', '���ڲ�Ʒ�ṹ', 1, '1', '�ṹ����Ʒ���ȼ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FPCPJG', '���ڲ�Ʒ�ṹ', 2, '2', '�ṹ����Ʒ�μ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FPCPJG', '���ڲ�Ʒ�ṹ', 3, '3', '�ṹ����Ʒ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FPCPJG', '���ڲ�Ʒ�ṹ', 4, '4', '�ǽṹ����Ʒ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FPCPJG', '���ڲ�Ʒ�ṹ', 5, '5', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FPLXBMM', '��������BMM', 1, '1', '���侭�͹�ϵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FPLXBMM', '��������BMM', 2, '2', '�������͹�ϵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FPLXBMM', '��������BMM', 3, '3', 'ȡ�����͹�ϵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FPLXBMM', '��������BMM', 4, '4', '���͹�ϵǨ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FPLXBMM', '��������BMM', 5, '5', '���͹�ϵ����ת�����ϵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FPLXBMM', '��������BMM', 6, '6', '��������ϵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FPLXBMM', '��������BMM', 7, '7', '���������ϵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FPLXBMM', '��������BMM', 8, '8', 'ȡ�������ϵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FPLXBMM', '��������BMM', 9, '9', '�����ϵǨ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FPLXBMM', '��������BMM', 10, '10', '�����ϵ����ת���͹�ϵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FPLXBMM', '��������BMM', 11, '11', '���þ��͹�ϵ�ֳɱ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FPLXBMM', '��������BMM', 12, '12', '����������ɱ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FPLXBMM', '��������BMM', 13, '13', '����Ͷ�˹�ϵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FPLXBMM', '��������BMM', 14, '14', 'ȡ��Ͷ�˹�ϵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FPLXBMM', '��������BMM', 15, '15', '����Ͷ�˹�ϵ�ֳɱ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_CPZRFS', '��Ʒת�÷�ʽ', 1, '1', 'Э�鱨��ģʽ', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_CPZRFS', '��Ʒת�÷�ʽ', 2, '2', '������˫����ģʽ', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_CPZT', '���ڲ�Ʒ״̬', -1, 'Code5', '��ֹ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_CPZT', '���ڲ�Ʒ״̬', 0, 'Code1', 'Ԥ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_CPZT', '���ڲ�Ʒ״̬', 1, 'Code2', '�Ϲ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_CPZT', '���ڲ�Ʒ״̬', 2, 'Code3', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_CPZT', '���ڲ�Ʒ״̬', 3, 'Code4', '�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_CPZT', '���ڲ�Ʒ״̬', 4, 'Code4', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_CPZT_SZ', '��Ʒ״̬_����', 1, '1', 'ļ��ǰ״̬', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_CPZT_SZ', '��Ʒ״̬_����', 2, '2', 'ļ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_CPZT_SZ', '��Ʒ״̬_����', 3, '3', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_CPZT_SZ', '��Ʒ״̬_����', 4, '4', '�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_CPZT_SZ', '��Ʒ״̬_����', 5, '5', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_CPZT_SZ', '��Ʒ״̬_����', 6, '6', '��Ʒ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_CPZT_SZ', '��Ʒ״̬_����', 7, '7', '����ʧ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_DJYY', '�˻�����ԭ��', 0, '0', '˾������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_DJYY', '�˻�����ԭ��', 1, '1', '��̨����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_DJYY', '�˻�����ԭ��', 2, '2', '��Ѻ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_DJYY', '�˻�����ԭ��', 3, '3', '��Ѻ��˾��˫�ض���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_DJYY', '�˻�����ԭ��', 4, '4', '��̨��˾��˫�ض���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_GHYY', '����ԭ��', 1, '1', '�̳�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_GHYY', '����ԭ��', 2, '2', '˾��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_GHYY', '����ԭ��', 3, '3', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JGFL', '��������', 1, '1', '֤ȯ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JGFL', '��������', 2, '2', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JGFL', '��������', 3, '3', '����˾', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JGFL', '��������', 4, '4', '֤ȯ��˾', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JGFL', '��������', 5, '5', '�ڽ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JGFL', '��������', 6, '6', '���й�˾', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JGFL', '��������', 7, '7', '��ѯ��˾', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JGFL', '��������', 8, '8', '���չ�˾', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JGFL', '��������', 9, '9', '��Ȩ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JGFL', '��������', 99, '99', '�������ڻ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JRCPFL_CF', '���ڲ�Ʒ����_�Ƹ�', 201, '201', '��Ʋ�Ʒ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JRCPFL_CF', '���ڲ�Ʒ����_�Ƹ�', 202, '202', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JRCPFL_CF', '���ڲ�Ʒ����_�Ƹ�', 203, '203', '���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JRCPFL_CF', '���ڲ�Ʒ����_�Ƹ�', 204, '204', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JRCPFL_CF', '���ڲ�Ʒ����_�Ƹ�', 205, '205', '��Ʊ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JRCPFL_CF', '���ڲ�Ʒ����_�Ƹ�', 206, '206', 'ƾ֤ʽ��ծ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JRCPFL_CF', '���ڲ�Ʒ����_�Ƹ�', 207, '207', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JRCPFL_CF', '���ڲ�Ʒ����_�Ƹ�', 208, '208', '˽ļ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JRCPFL_CF', '���ڲ�Ʒ����_�Ƹ�', 209, '209', '��ļ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JRCPFL_CF', '���ڲ�Ʒ����_�Ƹ�', 210, '210', 'ծȯ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JYZT', '��Ʒ����״̬', -1, '-1', '��ֹ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JYZT', '��Ʒ����״̬', 0, '0', 'Ԥ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JYZT', '��Ʒ����״̬', 1, '1', '�Ϲ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JYZT', '��Ʒ����״̬', 2, '2', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JYZT', '��Ʒ����״̬', 3, '3', '���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JYZT', '��Ʒ����״̬', 4, '4', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JYZT', '��Ʒ����״̬', 5, '6', 'ֹͣ�깺', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JYZT', '��Ʒ����״̬', 6, '5', 'ֹͣ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_SJBZ', '���ڲ�Ʒ�ϼܱ�־', 1, 'Code1', 'δ�ϼ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_SJBZ', '���ڲ�Ʒ�ϼܱ�־', 2, 'Code2', '�ϼ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_SJBZ', '���ڲ�Ʒ�ϼܱ�־', 3, 'Code3', '���ϼ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_SJBZ', '���ڲ�Ʒ�ϼܱ�־', 4, 'Code4', '�˳������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_SJBZ', '���ڲ�Ʒ�ϼܱ�־', 5, 'Code5', '���˳�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_TZPZ', 'Ͷ��Ʒ��', 1, '1', '��Ʊ������ͻ���ƫ���ͻ��𡢹�Ʊ�ͻ����Ȩ����Ͷ��Ʒ��', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_TZPZ', 'Ͷ��Ʒ��', 2, '2', 'ծȯ�������г�����ծȯ����ȹ̶�������Ͷ��Ʒ��', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_TZPZ', 'Ͷ��Ʒ��', 4, '4', '�ڻ���������ȯ', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_TZPZ', 'Ͷ��Ʒ��', 8, '8', '���ӽ��ڲ�Ʒ', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_TZPZ', 'Ͷ��Ʒ��', 16, '16', '������Ʒ', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_TZQX', '�ͻ�Ͷ������', 1, '1', '0��1��', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_TZQX', '�ͻ�Ͷ������', 2, '2', '1��5��', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_TZQX', '�ͻ�Ͷ������', 4, '4', '5������', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_TZZHJYQX', 'Ͷ���˻�����Ȩ��', 1, '1', '�Ϲ�', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_TZZHJYQX', 'Ͷ���˻�����Ȩ��', 2, '2', '�깺', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_TZZHJYQX', 'Ͷ���˻�����Ȩ��', 4, '4', '���', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_TZZHJYQX', 'Ͷ���˻�����Ȩ��', 8, '8', 'ת��', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_WJYWFL', '�ļ�ҵ�����', 0, '00', '���������ļ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_WJYWFL', '�ļ�ҵ�����', 1, '01', '�˻�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_WJYWFL', '�ļ�ҵ�����', 2, '02', '�˻�ȷ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_WJYWFL', '�ļ�ҵ�����', 3, '03', '��������������ҵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_WJYWFL', '�ļ�ҵ�����', 4, '04', '����ȷ��������ҵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_WJYWFL', '�ļ�ҵ�����', 5, '05', '�˻�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_WJYWFL', '�ļ�ҵ�����', 6, '06', '�ֺ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_WJYWFL', '�ļ�ҵ�����', 7, '07', '��Ʒ��̬��Ϣ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_WJYWFL', '�ļ�ҵ�����', 8, '08', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_WJYWFL', '�ļ�ҵ�����', 26, '26', '��Ʋ�Ʒ�ݶ���ϸ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_WJYWFL', '�ļ�ҵ�����', 1000, '1000', '�ʽ����������ļ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_WJYWFL', '�ļ�ҵ�����', 1001, '1001', '�ʽ�����ȷ���ļ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_WJYWFL', '�ļ�ҵ�����', 1002, '1002', '����������ϸ�ļ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_WJYWFL', '�ļ�ҵ�����', 2000, 'agent01', '���Ӻ�ͬ�걨', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_WJYWFL', '�ļ�ҵ�����', 2001, 'agent02', '���Ӻ�ͬ�ر�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_XSDDZT', '���۶���״̬', -1, '-1', 'δ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_XSDDZT', '���۶���״̬', 0, '0', 'δȷ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_XSDDZT', '���۶���״̬', 1, '1', 'ȷ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_XSDDZT', '���۶���״̬', 2, '2', '�ѵ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_XSDDZT', '���۶���״̬', 3, '3', '���˿�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_YYDZT', 'ԤԼ��״̬', -1, '-1', 'ԤԼȡ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_YYDZT', 'ԤԼ��״̬', 0, '0', 'δ��Ч', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_YYDZT', 'ԤԼ��״̬', 1, '1', '����Ч', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_YYDZT', 'ԤԼ��״̬', 2, '2', '�Ѵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_YYDZT', 'ԤԼ��״̬', 3, '3', '�ѵ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FUNDTYPE', '��������', 1, '1', '���ʽ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FUNDTYPE', '��������', 2, '2', '����ʽ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FUNDTYPE', '��������', 3, '3', 'һ�Զ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FUNDTYPE', '��������', 4, '4', '˽ļ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWCLZT', '������״̬', 0, '0', 'δ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWCLZT', '������״̬', 1, '1', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWCLZT', '������״̬', 2, '2', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWCLZT', '������״̬', 3, '3', '�ѽ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWCLZT', '������״̬', 4, '4', 'δ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWCLZT', '������״̬', 5, '5', '�ѹر�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWCPQXYY', 'ȡ��ԭ��', 1, '1', '��Ʒ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWCPQXYY', 'ȡ��ԭ��', 2, '2', '���񲻼�ʱ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWDJ', '����ȼ�', 1, '1', '�ȼ�1', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWDJ', '����ȼ�', 2, '2', '�ȼ�2', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWDZ', '������', 0, '0', '������ʾ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWDZ', '������', 1, '1', '�ػ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWDZ', '������', 2, '2', '�ͻ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWDZ', '������', 3, '3', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWDZ', '������', 4, '4', '�ط�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWFS', '����ʽ', 1, '1', '�绰', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWFS', '����ʽ', 2, '2', '�����ʼ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWFS', '����ʽ', 3, '3', '�ֳ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWFS', '����ʽ', 4, '4', '��ͳ�ʼ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWFS', '����ʽ', 8, '8', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWFS', '����ʽ', 16, '16', 'IM', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWFS', '����ʽ', 32, '32', 'վ���ʼ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWFS', '����ʽ', 64, '64', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWGXLX', '�����ϵ����', 0, '0', '���������ϵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWGXLX', '�����ϵ����', 1, '1', '�������ϵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWGXLX', '�����ϵ����', 2, '2', 'ǩԼ��ϵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWGXLX', '�����ϵ����', 8, '8', '�Ŷӷ����ϵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWGXLX', '�����ϵ����', 9, '9', '�Ŷ�ǩԼ��ϵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWGXLX', '�����ϵ����', 91, '91', '������ϵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWGXLX', '�����ϵ����', 92, '92', '��Ʒ��ϵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWJG', '�������', 1, '1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWJG', '�������', 2, '2', 'ȯ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWJG', '�������', 3, '3', '�н�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWJG', '�������', 4, '4', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWJSDX', '������ն���', 1, '1', '�ͻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWJSDX', '������ն���', 2, '2', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWJSDX', '������ն���', 3, '3', '�ͻ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWJSDX', '������ն���', 4, '4', '��ϵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWLB', '�������', 1, '1', '��ѯ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWLB', '�������', 2, '2', '���ٷ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWLB', '�������', 3, '3', '��ϵά��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWLB', '�������', 4, '4', '��Ʒ�ƽ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWLB', '�������', 5, '5', '�г��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWLB', '�������', 6, '6', 'MOT', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWLB', '�������', 9, '9', '�طõ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWLB', '�������', 99, '99', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWLX', '��������', 1, '1', '�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWLX', '��������', 2, '2', '�˻�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWLX', '��������', 3, '3', '�ͻ��ط�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWLX', '��������', 4, '4', '�ͻ�Ͷ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWLX', '��������', 5, '5', '��Ʒ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWLX', '��������', 6, '6', '���ʷ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWLX', '��������', 7, '7', '����ҵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWQQLY', '����������Դ', 1, '1', '�ֳ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWQQLY', '����������Դ', 2, '2', '�绰', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWQQLY', '����������Դ', 3, '3', '�����ʼ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWQQLY', '����������Դ', 4, '4', 'WebChat', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWQQLY', '����������Դ', 5, '5', '��վ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWQQLY', '����������Դ', 6, '6', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWQQLY', '����������Դ', 7, '7', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWQQLY', '����������Դ', 8, '8', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWQQLY', '����������Դ', 9, '9', '�ͻ�������ƽ̨', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWQQLY', '����������Դ', 10, '10', 'PAD', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWRKD', '�����Ͽɶ�', 1, '1', '�Ͽ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWRKD', '�����Ͽɶ�', 2, '2', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWRKD', '�����Ͽɶ�', 3, '3', '�����Ͽ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWRKD', '�����Ͽɶ�', 4, '4', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWRKD', '�����Ͽɶ�', 5, '5', '�ǳ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWRYLB', '������Ա���', 1, 'Code1', '�ͻ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWRYLB', '������Ա���', 2, 'Code2', 'Ͷ�ʹ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWXM', '������Ŀ', 1, '1', '�ʼ��ʵ�', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWXM', '������Ŀ', 2, '2', '�������', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWXM', '������Ŀ', 4, '4', '����ת��', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWXM', '������Ŀ', 8, '8', '�����깺', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWXM', '������Ŀ', 16, '16', '��������', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWXM', '������Ŀ', 32, '32', '����ҵ��', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWXM', '������Ŀ', 64, '64', '������ʾ', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWXM', '������Ŀ', 128, '128', '��Ҷһ�', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWXM', '������Ŀ', 256, '256', '֪ͨ���', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWXM', '������Ŀ', 512, '512', 'ETF����', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWXM', '������Ŀ', 1024, '1024', 'Ȩ֤ҵ��', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWXM', '������Ŀ', 4096, '4096', '��Ѻ�ع�', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FXCSNL', '���ճ�������', 0, '0', '���ճ������������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FXCSNL', '���ճ�������', 1, '1', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FXCSNL', '���ճ�������', 2, '2', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FXCSNL', '���ճ�������', 3, '3', '�Ƚ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FXCSNL', '���ճ�������', 4, '4', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FXCSNL', '���ճ�������', 5, '5', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FXFL', '���շ���', 1, '1', '���ճ�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FXPH', '����ƫ��', 1, '1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FXPH', '����ƫ��', 2, '2', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FXPH', '����ƫ��', 3, '3', '�Ƚ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FXQFXDJ', '��ϴǮ���յȼ�', 1, '1', '�ͷ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FXQFXDJ', '��ϴǮ���յȼ�', 2, '2', '�е�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FXQFXDJ', '��ϴǮ���յȼ�', 3, '3', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FXQFXDJ', '��ϴǮ���յȼ�', 4, '4', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FXQFXDJ', '��ϴǮ���յȼ�', 5, '5', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FXZQFL', '����֤ȯ����', 1, '1', 'Ȩ֤', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FXZQFL', '����֤ȯ����', 2, '2', '����������ͣ�Ĺ�Ʊ(������Ч)', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FXZQFL', '����֤ȯ����', 3, '3', '����������ͣ�Ĺ�Ʊ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FXZQFL', '����֤ȯ����', 4, '4', 'ST��Ʊ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FZFL', '��������', 1, '1', '�����ʲ����÷���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FZFL', '��������', 2, '2', '��ͥ�ʲ����÷���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FZFL', '��������', 3, '3', '��ҵ�ʲ����÷���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHLSYY', '�ͻ���ʧԭ��', 5, '5', '����ϵͳ��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHLSYY', '�ͻ���ʧԭ��', 6, '6', '����ϵͳЧ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHLSYY', '�ͻ���ʧԭ��', 7, '7', '��Ѷ��Ϣ��ȫ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHLSYY', '�ͻ���ʧԭ��', 8, '8', '�ṩ�ķ�������̫��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHLSYY', '�ͻ���ʧԭ��', 9, '9', 'ȱ����������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHLSYY', '�ͻ���ʧԭ��', 98, '98', '����ԭ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHLSYY', '�ͻ���ʧԭ��', 99, '99', '�ͻ���Ը˵��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHLX', '��������', 1, 'YJKHCJ_JJR', 'ҵ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHLX', '��������', 2, 'GLKHCJ_JJR', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHLX_XQDJ', '����Ǽǿͻ�����', 0, '0', 'Ǳ�ڿͻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHLX_XQDJ', '����Ǽǿͻ�����', 1, '1', '�����ͻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHLY', '�ͻ���Դ', 1, 'Code1', '�ܲ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHLY', '�ͻ���Դ', 2, 'Code2', 'Ӫҵ��Ӫ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHLY', '�ͻ���Դ', 3, 'Code3', '�Ͽͻ�ת����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHLY', '�ͻ���Դ', 4, 'Code4', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHLY', '�ͻ���Դ', 5, 'Code5', 'İ���ݷ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHLYXX', '�ͻ���Դ��Ϣ', 1, '1', '���пͻ��Ƽ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHLYXX', '�ͻ���Դ��Ϣ', 2, '2', '���пͻ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHLYXX', '�ͻ���Դ��Ϣ', 3, '3', '�������ڻ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHPJ', '�ͻ�����', 1, 'Code1', 'ƽʱ����æ����Ͼ����Ŀͻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHPJ', '�ͻ�����', 2, 'Code2', '�Թ�Ʊ֪֮���١���רҵ�ԡ�äĿ���������������Ŀͻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHPJ', '�ͻ�����', 3, 'Code3', '����֤ȯ��˾���񲻼ѵĿ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHPJ', '�ͻ�����', 4, 'Code4', '�����������ʿͻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHPJ', '�ͻ�����', 5, 'Code5', '�ͻ���Դ�ḻ�ͻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHPJ', '�ͻ�����', 6, 'Code6', 'ϲ���������еĿͻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHPJ', '�ͻ�����', 7, 'Code7', 'û��������������ǿ�������ʶ��Ƽ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHPJDY', '�ͻ�����', 1, '1', 'һ����Ҫ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHPJDY', '�ͻ�����', 2, '2', '��Ҫ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHPJDY', '�ͻ�����', 3, '3', '����Ҫ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHPJDY', '�ͻ�����', 4, '4', '�ǳ���Ҫ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHPJDY', '�ͻ�����', 5, '5', '������Ҫ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHPRJG', '����Ƹ�ν��', 1, '1', '��ʱ���,���ձ�׼δ�ﵽ�߼�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHPRJG', '����Ƹ�ν��', 2, '2', '��ʱ���,���ձ�׼�ﵽ�߼�,�Զ��忼�˵÷ֲ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHPRJG', '����Ƹ�ν��', 3, '3', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHPRJG', '����Ƹ�ν��', 4, '4', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHPRJG', '����Ƹ�ν��', 5, '5', 'ά�ֲ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHPRJG', '����Ƹ�ν��', 6, '6', '��ʱ���,�����˿��˲����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHQD', '��������', 1, '1', '�ٹ񿪻�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHQD', '��������', 2, '2', '���ֳ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHQJB', '�ͻ�Ⱥ����', 0, '0', 'ϵͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHQJB', '�ͻ�Ⱥ����', 1, '1', '��˾��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHQJB', '�ͻ�Ⱥ����', 2, '2', 'Ӫҵ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHQJB', '�ͻ�Ⱥ����', 3, '3', '���˼�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHRQ', '��������', 1, '1', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHSX', '�ͻ�����', 1, '1', '��ֹ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHSX', '�ͻ�����', 2, '2', '��ֹȡ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHSX', '�ͻ�����', 4, '4', '��ֹ��֤ת��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHSX', '�ͻ�����', 8, '8', '��ֹת�й�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHSX', '�ͻ�����', 16, '16', '��ֹ����ָ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHSX', '�ͻ�����', 32, '32', '��ֹ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHSX', '�ͻ�����', 64, '64', '��ֹ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHSX', '�ͻ�����', 128, '128', '��ֹ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHTYKZT', '�ͻ����鿨״̬', 1, '1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHTYKZT', '�ͻ����鿨״̬', 2, '2', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHTYKZT', '�ͻ����鿨״̬', 3, '3', '��ȡ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHTYKZT', '�ͻ����鿨״̬', 4, '4', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHTYKZT', '�ͻ����鿨״̬', 5, '5', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHXXFL', '�ͻ���Ϣ����', 1, '1', '������Ϣ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHXXFL', '�ͻ���Ϣ����', 2, '2', '��ͥ״��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHXXFL', '�ͻ���Ϣ����', 3, '3', '�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHXXFL', '�ͻ���Ϣ����', 4, '4', '�Ʋ�������', 0, 0, null);
commit;
prompt 2000 records committed...
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHXXFL', '�ͻ���Ϣ����', 5, '5', 'Ͷ��Ŀ��;���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHXXFL', '�ͻ���Ϣ����', 6, '6', '����ƫ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHXXFL', '�ͻ���Ϣ����', 7, '7', '�˻�״��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHXXFL', '�ͻ���Ϣ����', 8, '8', '��ϵ��Ϣ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHYJY_TJFS', '�ͻ��½���ͳ�Ʒ�ʽ', 1, '1', '���ͻ���ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHYJY_TJFS', '�ͻ��½���ͳ�Ʒ�ʽ', 2, '2', '��Ӫҵ������ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHYJY_TJFS', '�ͻ��½���ͳ�Ʒ�ʽ', 3, '3', '���ͻ�����ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHYJY_TJFS', '�ͻ��½���ͳ�Ʒ�ʽ', 4, '4', '�������·�ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHYJY_TJFS', '�ͻ��½���ͳ�Ʒ�ʽ', 5, '5', '���������ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHYJY_TJFS', '�ͻ��½���ͳ�Ʒ�ʽ', 6, '6', '����������ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHYJY_TJFS', '�ͻ��½���ͳ�Ʒ�ʽ', 7, '7', '�������·�ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHYJY_TJFS', '�ͻ��½���ͳ�Ʒ�ʽ', 8, '8', '���������ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHYJY_TJFS', '�ͻ��½���ͳ�Ʒ�ʽ', 9, '9', '����Դȯ��ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHYJY_TJFS', '�ͻ��½���ͳ�Ʒ�ʽ', 10, '10', '���ͻ�����ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHYWFW', '�ͻ�ҵ��Χ', 1, '1', '����ҵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHYWFW', '�ͻ�ҵ��Χ', 2, '2', '�ʲ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHYWFW', '�ͻ�ҵ��Χ', 4, '4', '������ȯ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHYWFW', '�ͻ�ҵ��Χ', 8, '8', '��ָ�ڻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHYWFW', '�ͻ�ҵ��Χ', 16, '16', '���ҵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHYWFW', '�ͻ�ҵ��Χ', 32, '32', '������Ȩ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZBLX', '�ͻ�ָ������', 1, '1', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZBLX', '�ͻ�ָ������', 2, '2', '����ָ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZBLX', '�ͻ�ָ������', 3, '3', '�ʲ�ָ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZBLX', '�ͻ�ָ������', 4, '4', 'ƫ��ָ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZBLX', '�ͻ�ָ������', 99, '99', '����ָ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZCD', '�ͻ��ҳ϶�', 1, '1', 'һ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZCD', '�ͻ��ҳ϶�', 2, '2', '�Ϻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZCD', '�ͻ��ҳ϶�', 3, '3', '�ܺ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZCD', '�ͻ��ҳ϶�', 4, '4', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZCFD', '�ͻ��ʲ��ֶ�', 0, 'KHS_ZC0', '0��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZCFD', '�ͻ��ʲ��ֶ�', 1, 'KHS_ZC1', '0-1��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZCFD', '�ͻ��ʲ��ֶ�', 10, 'KHS_ZC10', '1-10��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZCFD', '�ͻ��ʲ��ֶ�', 30, 'KHS_ZC30', '10-30��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZCFD', '�ͻ��ʲ��ֶ�', 100, 'KHS_ZC100', '30-100��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZCFD', '�ͻ��ʲ��ֶ�', 500, 'KHS_ZC500', '100-500��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZCFD', '�ͻ��ʲ��ֶ�', 1000, 'KHS_ZC1000', '500-1000��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZCFD', '�ͻ��ʲ��ֶ�', 99999999, 'KHS_ZC', '1000-99999999��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZJ_TJFS', '�ͻ��ʽ�_ͳ�Ʒ�ʽ', 1, '1', '���ͻ���ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZJ_TJFS', '�ͻ��ʽ�_ͳ�Ʒ�ʽ', 2, '2', '��Ӫҵ������ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZJ_TJFS', '�ͻ��ʽ�_ͳ�Ʒ�ʽ', 9, '9', '���ͻ�����ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZJ_TJFS', '�ͻ��ʽ�_ͳ�Ʒ�ʽ', 14, '14', '����������ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZJ_TJFS', '�ͻ��ʽ�_ͳ�Ʒ�ʽ', 15, '15', '�������·�ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZJ_TJFS', '�ͻ��ʽ�_ͳ�Ʒ�ʽ', 16, '16', '���������ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZJ_TJFS', '�ͻ��ʽ�_ͳ�Ʒ�ʽ', 17, '17', '����Դȯ��ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZJ_TJFS', '�ͻ��ʽ�_ͳ�Ʒ�ʽ', 18, '18', '���ͻ�����ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZLTJ_PXLX', '��������', 1, '1', '���Ż�����ֵ_����ֵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZLTJ_PXLX', '��������', 2, '2', '��ĩȨ��_����ֵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZLTJ_PXLX', '��������', 3, '3', '����ĩ���ʲ�_����ֵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZLTJ_PXLX', '��������', 4, '4', '���ʲ�_����ֵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZLTJ_PXLX', '��������', 5, '5', '�ʽ����_����ֵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZLTJ_PXLX', '��������', 6, '6', '֤ȯ��ֵ_����ֵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZLTJ_PXLX', '��������', 7, '7', '��ĩȨ��_ƽ��ֵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZLTJ_PXLX', '��������', 8, '8', '���ʲ�_ƽ��ֵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZLTJ_TJLX', 'ͳ������', 1, '1', '���ͻ�����ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZLTJ_TJLX', 'ͳ������', 2, '2', '���ͻ�״̬ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZLTJ_TJLX', 'ͳ������', 3, '3', '��������ʽͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZLTJ_TJLX', 'ͳ������', 4, '4', '����������ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZLTJ_TJLX', 'ͳ������', 5, '5', '���ͻ�����ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZLTJ_TJLX', 'ͳ������', 6, '6', '��Ӫҵ��ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZLTJ_TJLX', 'ͳ������', 7, '7', '���ͻ�����ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZLTJ_TJLX', 'ͳ������', 8, '8', '����Դȯ��ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZT', '�ͻ�״̬', 0, '0', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZT', '�ͻ�״̬', 1, '1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZT', '�ͻ�״̬', 2, '2', '��ʧ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZT', '�ͻ�״̬', 3, '3', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZT', '�ͻ�״̬', 4, '4', 'ԤԼ�˻�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZT', '�ͻ�״̬', 5, '5', '���˻�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZT', '�ͻ�״̬', 6, '6', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZT', '�ͻ�״̬', 7, '7', '���ϸ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZT', '�ͻ�״̬', 9, '9', '��˾���ϸ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KH_KHFS', '������ʽ', 0, '0', '��Ȼ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KH_KHFS', '������ʽ', 1, '1', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KH_KHFS', '������ʽ', 2, '2', '�ⲿ�ƽ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KH_KHFS', '������ʽ', 3, '3', '�ڲ��Ƽ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KH_KHFS', '������ʽ', 4, '4', '��֤����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KH_KHFS', '������ʽ', 5, '5', '���Ͽ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KH_KHFS', '������ʽ', 6, '6', '�ֻ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KH_YWLX', 'ҵ������', 1, '1', '֤ȯ�ͻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KH_YWLX', 'ҵ������', 2, '2', '�ڻ��ͻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KJLX', '�ؼ�����', 1, '�ı���', '�ı���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KJLX', '�ؼ�����', 2, '������ѡ', '������ѡ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KJLX', '�ؼ�����', 3, '������', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KJLX', '�ؼ�����', 4, '������ѡ', '������ѡ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KKFS', '�ۿʽ', 1, '1', '��̨�ۿ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KKFS', '�ۿʽ', 2, '2', '�ֻ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KKFS', '�ۿʽ', 3, '3', '����ת��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KKFS', '�ۿʽ', 4, '4', '�ʼ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KKFS', '�ۿʽ', 5, '5', '�ֽ𸶿�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KKFS', '�ۿʽ', 6, '6', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KPMZXPD', 'KPMִ��Ƶ��', 1, '1', 'ÿ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KPMZXPD', 'KPMִ��Ƶ��', 2, '2', 'ʵʱ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KPMZXPD', 'KPMִ��Ƶ��', 3, '3', 'ÿ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KPMZXPD', 'KPMִ��Ƶ��', 4, '4', 'ÿ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KPMZXPD', 'KPMִ��Ƶ��', 5, '5', 'ÿ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KQZT', '����״̬', 1, 'Code1', '����ǩ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KQZT', '����״̬', 2, 'Code2', '����ǩ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KQZT', '����״̬', 3, 'Code3', '���ϳٵ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KQZT', '����״̬', 4, 'Code4', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KQZT', '����״̬', 5, 'Code5', '���ڰ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KQZT', '����״̬', 6, 'Code6', '���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KSKCSCD', '����ɳ��̶ܳ�', 1, '1', '10%����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KSKCSCD', '����ɳ��̶ܳ�', 2, '2', '10%-30%', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KSKCSCD', '����ɳ��̶ܳ�', 3, '3', '30%-50%', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KSKCSCD', '����ɳ��̶ܳ�', 4, '4', '����50%', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KTYWQX', '��ͨҵ��Ȩ��', 110, '110', 'Ȩ֤����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KTYWQX', '��ͨҵ��Ȩ��', 111, '111', '��ҵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KTYWQX', '��ͨҵ��Ȩ��', 112, '112', '������ȯ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KTYWQX', '��ͨҵ��Ȩ��', 113, '113', '�۹�ͨ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KTYWQX', '��ͨҵ��Ȩ��', 301, '301', '���ۻع�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KTYWQX', '��ͨҵ��Ȩ��', 303, '303', '�Ϻ�Լ��ʽ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KTYWQX', '��ͨҵ��Ȩ��', 304, '304', '����Լ��ʽ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KTYWQX', '��ͨҵ��Ȩ��', 401, '401', 'רҵͶ����ծȯ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KTYWQX', '��ͨҵ��Ȩ��', 402, '402', '������Ȩ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LBXZLX', '�����������', 1, '1', '��ֹ����', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LBXZLX', '�����������', 2, '2', '��ֹ�粿��������', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LBXZLX', '�����������', 4, '4', '��ֹ�ҽӿ�����ϵ', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LCCLZT', '���̴���״̬', -1, '-1', '��˲�ͨ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LCCLZT', '���̴���״̬', 0, '0', '�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LCCLZT', '���̴���״̬', 1, '1', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LCDCLB', '��ƹ滮�������', 1, '1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LCDCLB', '��ƹ滮�������', 2, '2', '֧��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LCDCLB', '��ƹ滮�������', 3, '3', '�ʲ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LCDCLB', '��ƹ滮�������', 4, '4', '��ծ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LCDCLBXF', '��ƹ滮�������ϸ��', 1, '1', 'н������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LCDCLBXF', '��ƹ滮�������ϸ��', 2, '2', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LCDCLBXF', '��ƹ滮�������ϸ��', 3, '3', '�ֽ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LCDCLBXF', '��ƹ滮�������ϸ��', 4, '4', '���ڴ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LCDCLBXF', '��ƹ滮�������ϸ��', 5, '5', '���ڴ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LCDCLBXF', '��ƹ滮�������ϸ��', 6, '6', '��Ʊ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LCDCLBXF', '��ƹ滮�������ϸ��', 7, '7', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LCDCLBXF', '��ƹ滮�������ϸ��', 8, '8', 'ծȯ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LCDCLBXF', '��ƹ滮�������ϸ��', 9, '9', '����˻��ʽ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LCDCLBXF', '��ƹ滮�������ϸ��', 10, '10', 'ʵ���ʲ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LCDCLBXF', '��ƹ滮�������ϸ��', 11, '11', '���ÿ���ծ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LCDCLBXF', '��ƹ滮�������ϸ��', 12, '12', '���Ѹ�ծ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LCDCLBXF', '��ƹ滮�������ϸ��', 13, '13', '���ݴ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LCDCLBXF', '��ƹ滮�������ϸ��', 14, '14', '�����������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LCDCLBXF', '��ƹ滮�������ϸ��', 15, '15', '������ծ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LCDCLBXF', '��ƹ滮�������ϸ��', 16, '16', '���������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LCDCLBXF', '��ƹ滮�������ϸ��', 17, '17', '����֧��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LDXYQ', '������Ҫ��', 1, '1', '���ͣ�����2�꣩', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LDXYQ', '������Ҫ��', 2, '2', '�ͣ�1-2�꣩', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LDXYQ', '������Ҫ��', 3, '3', '�У�6-12���£�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LDXYQ', '������Ҫ��', 4, '4', '�ߣ�1-6���£�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LDXYQ', '������Ҫ��', 5, '5', '���ߣ�1�������ڣ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LGSHYZFS', '�ٹ������֤��ʽ', 1, '1', '������֤', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LGSHYZFS', '�ٹ������֤��ʽ', 2, '2', 'ָ����֤', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LNYSTZJYJR', '��������Ͷ�ʾ���Ľ��ڲ�Ʒ', 1, '1', '���д��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LNYSTZJYJR', '��������Ͷ�ʾ���Ľ��ڲ�Ʒ', 2, '2', 'ծȯ�����г�����ծȯ�ͻ���̶��������Ʒ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LNYSTZJYJR', '��������Ͷ�ʾ���Ľ��ڲ�Ʒ', 3, '3', '��Ʊ����ͻ���ƫ���ͻ����Ʊ�ͻ���Ͷ��Ʒ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LNYSTZJYJR', '��������Ͷ�ʾ���Ľ��ڲ�Ʒ', 4, '4', '�ڻ���������ȯ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LNYSTZJYJR', '��������Ͷ�ʾ���Ľ��ڲ�Ʒ', 5, '5', '���ӽ��ڲ�Ʒ��������Ʒ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LSKHSQYW', '��ʧ�ͻ�����ҵ��', 1, '1', '��ָת�й�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LSKHSQYW', '��ʧ�ͻ�����ҵ��', 3, '3', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LSKHSQYW', '��ʧ�ͻ�����ҵ��', 5, '5', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LXFS', '��ϵ��ʽ', 2, '2', 'EMAIL', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LXFS', '��ϵ��ʽ', 8, '8', '�ֻ�', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LXSJ', '��ϵʱ��', 1, '1', '��һ�������ϰ�ʱ��', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LXSJ', '��ϵʱ��', 2, '2', '��һ�������°�ʱ��', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LXSJ', '��ϵʱ��', 4, '4', '��ĩ��ڼ���', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LXZQ', '��ϵ����', 1, '1', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LXZQ', '��ϵ����', 2, '2', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LYLX', '��Դ����', 1, '1', '�ͻ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LYLX', '��Դ����', 2, '2', '�ڲ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LYQD', '��Դ����', 1, '1', '�ֳ���̨�ɼ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LYQD', '��Դ����', 2, '2', 'QQ�ɼ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LYQD', '��Դ����', 3, '3', '�������Ĳɼ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LYQD', '��Դ����', 4, '4', 'WEB�ɼ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LYQD_QR', '����Ǽ���Դ����', 1, '1', '�˹�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LYQD_QR', '����Ǽ���Դ����', 2, '2', '�ٹ�ʽ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LYQD_QR', '����Ǽ���Դ����', 3, '3', '���緽ʽ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LYQD_QR', '����Ǽ���Դ����', 4, '4', '������ʽ�ɼ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MB', 'ģ��', 1, '1', '��Ʊ-�ص㹫˾�������ݱ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MB', 'ģ��', 2, '2', '��Ʊ-�ص㹫˾Ͷ�ʽ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MB', 'ģ��', 3, '3', '�¹��깺ʱ���ģ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MB', 'ģ��', 4, '4', '�¹ɻ������ģ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MB', 'ģ��', 5, '5', '�¹���ǩ��Ԥ��ģ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MB', 'ģ��', 6, '6', '�����¹ɷ���ģ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MBLX', 'ģ������', 1, '1', '���ģ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MBLX', 'ģ������', 2, '2', '��Чģ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MDRXX', '�����ѡ��', 1, '1', '�����ܶ���', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MDRXX', '�����ѡ��', 2, '2', '�������ʼ�', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MDRXX', '�����ѡ��', 4, '4', '�����ܵ绰', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MDRXX', '�����ѡ��', 8, '8', '������IM', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MDRXX', '�����ѡ��', 16, '16', '������΢��', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MMFX', '��������', 0, '0', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MMFX', '��������', 1, 'B', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MMFX', '��������', 2, 'S', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MOT_JRCPFL', 'MOT���ڲ�Ʒ����', 1, '1', '�ֽ��������ڲ�Ʒ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MOT_JRCPFL', 'MOT���ڲ�Ʒ����', 2, '2', '��ֵ����ڲ�Ʒ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MOT_JRCPFL', 'MOT���ڲ�Ʒ����', 3, '3', '�̶���������ڲ�Ʒ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MTGM', 'ý���ģ', 1, '1', '100������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MTGM', 'ý���ģ', 2, '2', '50-100��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MTGM', 'ý���ģ', 3, '3', '30-50��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MTGM', 'ý���ģ', 4, '4', '30������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MTLX', 'ý������', 1, '1', 'Ͷ�ʱ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MTLX', 'ý������', 2, '2', '����ɳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MTLX', 'ý������', 3, '3', 'Ͷ���߽�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '����', 1, '1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '����', 2, '2', '׳��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '����', 3, '3', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '����', 4, '4', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '����', 5, '5', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '����', 6, '6', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '����', 7, '7', 'Ǽ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '����', 8, '8', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '����', 9, '9', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '����', 10, '10', 'ˮ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '����', 11, '11', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '����', 12, '12', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '����', 13, '13', 'ŭ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '����', 14, '14', '���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '����', 15, '15', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '����', 16, '16', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '����', 17, '17', '�ɹ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '����', 18, '18', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '����', 19, '19', '����˹��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '����', 20, '20', 'ά�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '����', 21, '21', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '����', 22, '22', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '����', 23, '23', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '����', 24, '24', '���α����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '����', 25, '25', '�¶�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '����', 26, '26', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '����', 27, '27', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '����', 28, '28', '��ɽ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '����', 29, '29', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '����', 30, '30', 'ë����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '����', 31, '31', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '����', 32, '32', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '����', 33, '33', '���Ӷ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '����', 34, '34', '���¿���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '����', 35, '35', '���״���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '����', 36, '36', '�Ű���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '����', 37, '37', '�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '����', 38, '38', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '����', 39, '39', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '����', 40, '40', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '����', 41, '41', '�°���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '����', 42, '42', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '����', 43, '43', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '����', 44, '44', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '����', 45, '45', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '����', 46, '46', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '����', 47, '47', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '����', 48, '48', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '����', 49, '49', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '����', 50, '50', '��ŵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '����', 51, '51', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '����', 52, '52', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '����', 53, '53', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '����', 54, '54', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '����', 55, '55', 'ԣ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '����', 56, '56', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('NBXXFL', '�ڲ���Ϣ����', 0, '0', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('NBXXFL', '�ڲ���Ϣ����', 1, '1', '֪ͨ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('NBXXFL', '�ڲ���Ϣ����', 2, '2', '��˾����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('NBXXFL', '�ڲ���Ϣ����', 3, '3', '��˾�ļ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('NBXXFL', '�ڲ���Ϣ����', 4, '4', '�����ƶ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('NBXXFL', '�ڲ���Ϣ����', 5, '5', '�ͷ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('NBXXFL', '�ڲ���Ϣ����', 6, '6', 'Ӫ���ڿ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('NBXXFL', '�ڲ���Ϣ����', 7, '7', '�����ļ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('NBXXFL', '�ڲ���Ϣ����', 8, '8', '�����ƶ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('NBXXFL', '�ڲ���Ϣ����', 9, '9', '�����Ҫ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('NBXXFL', '�ڲ���Ϣ����', 10, '10', 'н��ר��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('NBXXFL', '�ڲ���Ϣ����', 11, '11', '������ȯ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('NL', '����', 1, '1', '18-30��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('NL', '����', 2, '2', '31-40��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('NL', '����', 3, '3', '41-50��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('NL', '����', 4, '4', '51-60��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('NL', '����', 5, '5', '����60��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('NND', '�����', 1, 'Code1', '16-25', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('NND', '�����', 2, 'Code2', '26-35', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('NND', '�����', 3, 'Code3', '36-55', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('NND', '�����', 4, 'Code4', '55����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('OTC_DDLX', 'OTC_��������', 1, '1', '��ͨί��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('OTC_DDLX', 'OTC_��������', 2, '2', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQZT', '����״̬', 6, '6', '�˻�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XSZT', '����״̬', 0, '0', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XSZT', '����״̬', 1, '1', 'ֹͣ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XSZT', '����״̬', 2, '2', '��ʧЧ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTGNMK', 'ϵͳ����ģ��', 1, '1', '���¹���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTGNMK', 'ϵͳ����ģ��', 2, '2', '�ͻ���ϵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTGNMK', 'ϵͳ����ģ��', 3, '3', '�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTGNMK', 'ϵͳ����ģ��', 4, '4', '�ͻ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTGNMK', 'ϵͳ����ģ��', 5, '5', '�ʵ��Թ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTGNMK', 'ϵͳ����ģ��', 6, '6', '��Ϣ֪ͨ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTGNMK', 'ϵͳ����ģ��', 7, '7', '���۹���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTGNMK', 'ϵͳ����ģ��', 8, '8', 'ϵͳ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTGNMK', 'ϵͳ����ģ��', 9, '9', '��ع���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTGNMK', 'ϵͳ����ģ��', 10, '10', '��Ч����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTLY', 'ϵͳ��Դ', 4, '4', '���н���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTLY', 'ϵͳ��Դ', 8, '8', '���ڲ�Ʒ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XW', 'ѧλ', 1, '1', 'ѧʿ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XW', 'ѧλ', 2, '2', '˶ʿ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XW', 'ѧλ', 3, '3', '��ʿ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XWJB', '������Ϣ����', 1, 'Code1', '��ͨ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XWJB', '������Ϣ����', 2, 'Code2', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XWJB', '������Ϣ����', 3, 'Code3', '�߶Ȼ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XWLX', '��Ϊ����', 1, '1', 'ǩ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XWLX', '��Ϊ����', 2, '2', 'ǩ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XWLX', '��Ϊ����', 3, '3', '��д�����¼', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XWLX', '��Ϊ����', 4, '4', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XWLX', '��Ϊ����', 5, '5', 'Ǳ�ڿͻ��Ǽ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XWLX', '��Ϊ����', 6, '6', 'Ǳ�ڿͻ�״̬����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XWLX', '��Ϊ����', 99, '99', '�ֳ��ݷ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XXFBFW', '��Ϣ������Χ', 1, '000', 'ȫ��IM��Ա��Ա��+Ͷ���ߣ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XXFBFW', '��Ϣ������Χ', 2, '100', 'ȫ��Ա��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XXFBFW', '��Ϣ������Χ', 3, '101', '�ֹ�˾Ա��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XXFBFW', '��Ϣ������Χ', 4, '102', 'Ӫҵ��Ա��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XXFBFW', '��Ϣ������Χ', 5, '199', '�ض���ΧԱ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XXFBFW', '��Ϣ������Χ', 6, '200', 'ȫ��Ͷ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XXFBFW', '��Ϣ������Χ', 7, '201', '�ֹ�˾Ͷ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XXFBFW', '��Ϣ������Χ', 8, '202', 'Ӫҵ��Ͷ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XXFBFW', '��Ϣ������Χ', 9, '203', '�ͻ������Ӧ��Ͷ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XXFBFW', '��Ϣ������Χ', 10, '203', 'Ͷ�ʹ��ʶ�Ӧ��Ͷ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XXFBFW', '��Ϣ������Χ', 11, '281', 'ָ����Ʋ�Ʒ��Ͷ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XXFBFW', '��Ϣ������Χ', 12, '282', 'ָ��Ͷ����ϵ�Ͷ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XXFBFW', '��Ϣ������Χ', 13, '289', 'ָ����Ʊ��Ͷ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XXFBFW', '��Ϣ������Χ', 14, '299', '�ض���Χ��Ͷ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XXFS', 'ѧϰ��ʽ', 1, '1', 'ȫ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XXFS', 'ѧϰ��ʽ', 2, '2', '�Կ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XXFS', 'ѧϰ��ʽ', 3, '3', '���˸߿�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XXFS', 'ѧϰ��ʽ', 4, '4', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYBGYY', 'Э����ԭ��', 1, '1', 'ԭ��Ʒ������,���²�Ʒ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYBGYY', 'Э����ԭ��', 2, '2', 'ԭͶ�˷���̬�Ȳ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYBGYY', 'Э����ԭ��', 3, '3', 'ԭͶ�˵����λ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYJCYY', 'Э����ԭ��', 1, '1', '�Բ�Ʒ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYJCYY', 'Э����ԭ��', 2, '2', '��Ͷ�˷�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYJCYY', 'Э����ԭ��', 3, '3', '�շ�̫��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYJCYY', 'Э����ԭ��', 4, '4', 'Ӷ��̫��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYJCYY', 'Э����ԭ��', 5, '5', '�ͻ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYJCYY', 'Э����ԭ��', 6, '6', '����ת����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', 'Э������', 0, '0', '�����¹��깺', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', 'Э������', 1, '1', '�����¹�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', 'Э������', 2, '2', '������ɽɿ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', 'Э������', 3, '3', '���з���Э��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', 'Э������', 4, '4', '���վ�ʾЭ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', 'Э������', 5, '5', '[ֹͣʹ��]�ͻ�����ת��Э��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', 'Э������', 7, '7', '֤ȯҵ�����ǩ��Լ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', 'Э������', 9, '9', 'Ȩ֤����Э��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', 'Э������', 11, '@', '���ʻع�Э��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', 'Э������', 12, 'a', '���վ�ʾ��˾ծ����Э��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', 'Э������', 13, 'A', '��ҵ��Э��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', 'Э������', 14, 'b', '��ͣ���й�˾ծ����Э��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', 'Э������', 15, 'C', '���ƹ�˾��Ʊ����Э��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', 'Э������', 16, 'c', '���ȹ�ת���ʵ���Э��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', 'Э������', 17, 'D', '�������й�Ʊ����Э��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', 'Э������', 18, 'd', '�ֽ��Ʒ����ȡ��Э��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', 'Э������', 19, 'E', '����Ͷ���߽���Э��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', 'Э������', 20, 'e', '��ѺЭ��ع�����Э��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', 'Э������', 21, 'f', '��ѺЭ��ع��ڳ�Э��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', 'Э������', 22, 'F', '�ʹܲ�Ʒ�ݶ��Э��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', 'Э������', 23, 'G', '��Ʊ��Ѻ�ع����뽻��Э��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', 'Э������', 24, 'h', '֤ȯͶ�ʻ�����ս�ʾ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', 'Э������', 25, 'H', '�ƽ�ETF����Э��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', 'Э������', 26, 'J', '���ۻع�Э��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', 'Э������', 27, 'K', '�ۺ�Э�齻��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', 'Э������', 28, 'L', '�羳ETFЭ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', 'Э������', 29, 'm', '���ڻ���ä��Э��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', 'Э������', 30, 'M', 'ծȯ�ϸ�Ͷ����Э��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', 'Э������', 31, 'N', '���ۻع�����ί��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', 'Э������', 32, 'O', '���ȹ�Э��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', 'Э������', 33, 'P', '��Ʊ��Ѻ�ع��ڳ�����Э��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', 'Э������', 34, 'Q', '������ȨЭ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', 'Э������', 35, 'R', '�۹�ͨ����Э��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', 'Э������', 36, 's', '��ת���ȹ�Э��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', 'Э������', 37, 'S', '˽ļծת��Э��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', 'Э������', 38, 'V', '������ٹ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', 'Э������', 39, 'W', 'Ԥ���н���Э��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', 'Э������', 40, 'X', 'С��ͨЭ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', 'Э������', 41, 'Y', 'Լ������Э��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', 'Э������', 42, 'z', '��֤LOFЭ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', 'Э������', 43, '43', '������ȯ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', 'Э������', 44, '44', '�Ϻ�������Ȩ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_GRJG', '����_����/����', 1, '1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_GRJG', '����_����/����', 2, '2', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_HMDLX', '����_����������', 1, '1', '�������з�ϴǮ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_HMDLX', '����_����������', 2, '2', '������������ȯ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_HMDLX', '����_����������', 3, '3', '��˾�ɶ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_HMDLX', '����_����������', 4, '4', '��ٿͻ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_HTSX', '����_��ͬ����', 1, '1', '��ֹ��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_HTSX', '����_��ͬ����', 2, '2', '��ֹ��ȯ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_HTSX', '����_��ͬ����', 4, '4', '��ֹ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_HTZT', '����_��ͬ״̬', 0, '0', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_HTZT', '����_��ͬ״̬', 3, '3', '��ֹ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_JKLB', '����_������', 0, '0', '�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_JKLB', '����_������', 1, '1', '���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_JKLB', '����_������', 2, '2', '�ػ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_LLLX', '����_��������', 1, '1', '��ȼ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_LLLX', '����_��������', 2, '2', 'ʹ�ü���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_SXSQLB', '����_�����������', 1, '1', '׷������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_SXSQLB', '����_�����������', 2, '2', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_SXSQLB', '����_�����������', 3, '3', '�ͷ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_SXSQLB', '����_�����������', 4, '4', '�ͷ�ȫ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_SXSQLB', '����_�����������', 5, '5', '��ֹ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_SYLX', '����_��������', 1, '1', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_SYLX', '����_��������', 2, '2', '�ٴ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_XXBLLX', '��Ϣ��������', 1, '1', '�ͻ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_XXBLLX', '��Ϣ��������', 2, '2', '�ͻ��ʲ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_XXBLLX', '��Ϣ��������', 3, '3', '���ڱ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_XXBLLX', '��Ϣ��������', 4, '4', '֤ȯ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_XXBLLX', '��Ϣ��������', 5, '5', '��Ϣ֪ͨԭ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_XYBZ', '����_���ñ�־', 0, '0', '��ͨ�˻�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_XYBZ', '����_���ñ�־', 1, '1', '�����˻�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_XYDJ', '���õȼ�', 1, '1', 'D', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_XYDJ', '���õȼ�', 2, '2', 'C', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_XYDJ', '���õȼ�', 3, '3', 'B', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_XYDJ', '���õȼ�', 4, '4', 'BB', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_XYDJ', '���õȼ�', 5, '5', 'BBB', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_XYDJ', '���õȼ�', 6, '6', 'A', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_XYDJ', '���õȼ�', 7, '7', 'AA', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_XYDJ', '���õȼ�', 8, '8', 'AAA', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_YWLX', '����_ҵ������', 1, '1', '������ȯ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_YWLX', '����_ҵ������', 2, '2', 'Լ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_YXCLLB', '����_Ӱ��������', 1, '1', '��ס��ַ֤��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_YXCLLB', '����_Ӱ��������', 2, '2', '����֤������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_YXCLLB', '����_Ӱ��������', 3, '3', '�����ʲ�֤��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_YXCLLB', '����_Ӱ��������', 4, '4', '����֤��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_ZBFL', '����_ָ�����', 5, '0', '�ͻ�������Ϣ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_ZBFL', '����_ָ�����', 6, '15', '�ͻ���ϵ��ʽ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_ZBFL', '����_ָ�����', 12, '16', '�ͻ��걨����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_ZBFL', '����_ָ�����', 14, '6', '�˻�������Ϣ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_ZBFL', '����_ָ�����', 18, '12', '����������Ϣ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_ZBFL', '����_ָ�����', 19, '11', '������Ȩ����Ϣ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_ZBFL', '����_ָ�����', 30, '5', '������Ϣ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_ZBFL', '����_ָ�����', 35, '1', '����״������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_ZBFL', '����_ָ�����', 45, '2', 'Ͷ�ʾ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_ZBFL', '����_ָ�����', 47, '2', '����ƫ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_ZBFL', '����_ָ�����', 55, '6', '������ȯ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_ZBFL', '����_ָ�����', 93, '93', '�ʲ���ת��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_ZBFL', '����_ָ�����', 94, '94', '�ͻ���ֵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_ZBFL', '����_ָ�����', 95, '95', 'Ͷ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_ZBFL', '����_ָ�����', 96, '96', '�ͻ��ʲ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_ZBFL', '����_ָ�����', 97, '97', '�ͻ�Ͷ���ʵ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_ZBLB', '����_ָ�����', 1, '1', '����ָ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_ZBLB', '����_ָ�����', 2, '2', '����ָ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XZ', '����', 1, '1', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XZ', '����', 2, '2', '��ţ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XZ', '����', 3, '3', '˫����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XZ', '����', 4, '4', '��з��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XZ', '����', 5, '5', 'ʨ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XZ', '����', 6, '6', '��Ů��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XZ', '����', 7, '7', '�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XZ', '����', 8, '8', '��Ы��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XZ', '����', 9, '9', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XZ', '����', 10, '10', 'Ħ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XZ', '����', 11, '11', 'ˮƿ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XZ', '����', 12, '12', '˫����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XZZW', '����ְλ', 1, '1', '��ְͨԱ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XZZW', '����ְλ', 2, '2', '���Ÿ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XZZW', '����ְλ', 3, '3', '���ž���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XZZW', '����ְλ', 4, '4', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XZZW', '����ְλ', 5, '5', '���ܾ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XZZW', '����ְλ', 6, '6', '�ܾ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XZZW', '����ְλ', 7, '7', '���ܲ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XZZW', '����ְλ', 8, '8', '�ܲ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XZZW', '����ְλ', 9, '9', '��˾����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XZZW', '����ְλ', 10, '10', '���³�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YJLBDYY', 'Ӷ���ʱ䶯ԭ��', 101, '101', 'Ͷ��ǩԼ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YJLBDYY', 'Ӷ���ʱ䶯ԭ��', 102, '102', 'Ͷ�˽�Լ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YJLBDYY', 'Ӷ���ʱ䶯ԭ��', 103, '103', 'Э����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YJLBDYY', 'Ӷ���ʱ䶯ԭ��', 201, '201', '��Ʒ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YJLBDYY', 'Ӷ���ʱ䶯ԭ��', 202, '202', '��Ʒ�˶�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YKFX', 'ӯ������', 0, '0', 'ӯ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YKFX', 'ӯ������', 1, '1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YKJSFS', 'ӯ�����㷽ʽ', 0, 'Code1', '�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YKJSFS', 'ӯ�����㷽ʽ', 1, 'Code2', '�ֲֳɱ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YKJSFS', 'ӯ�����㷽ʽ', 2, 'Code3', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YLQD', '��������', 1, '1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YLQD', '��������', 2, '2', 'ͬ��˳', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YLQD', '��������', 3, '3', '�ٶ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YLQD', '��������', 4, '4', '��Ѷ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YLQD', '��������', 5, '5', '����Ͷ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YLQD', '��������', 6, '6', '����ţ�˻�-���ڽ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YLQD', '��������', 7, '7', '����ţ�˻�-���ǻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YLQD', '��������', 8, '8', '����ţ�˻�-����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YLQD', '��������', 9, '9', '����ţ�˻�-Ӫҵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YLQD', '��������', 10, '10', '˳��ũ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YLQD', '��������', 12, '12', '�����ּ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YLQD', '��������', 13, '13', 'CCTV֤ȯ��ѶƵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YLQD', '��������', 14, '14', '�й���ͨ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YNNGMJRCPS', 'һ���ڹ�����ڲ�Ʒ����', 1, '1', '5������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YNNGMJRCPS', 'һ���ڹ�����ڲ�Ʒ����', 2, '2', '6��10��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YNNGMJRCPS', 'һ���ڹ�����ڲ�Ʒ����', 3, '3', '11��15��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YNNGMJRCPS', 'һ���ڹ�����ڲ�Ʒ����', 4, '4', '16������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YQSYL', 'Ԥ��������', 1, '1', '0-5%(��)', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YQSYL', 'Ԥ��������', 2, '2', '5-8%(��)', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YQSYL', 'Ԥ��������', 3, '3', '8%����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YQTZJE', 'Ԥ��Ͷ�ʽ��', 1, '1', '������50��Ԫ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YQTZJE', 'Ԥ��Ͷ�ʽ��', 2, '2', '50��-300��Ԫ�������������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YQTZJE', 'Ԥ��Ͷ�ʽ��', 3, '3', '300��-1000��Ԫ�������������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YQTZJE', 'Ԥ��Ͷ�ʽ��', 4, '4', '1000��Ԫ���������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YQTZQX', 'Ԥ��Ͷ������', 1, '1', '����--0��1��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YQTZQX', 'Ԥ��Ͷ������', 2, '2', '����--1��5��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YQTZQX', 'Ԥ��Ͷ������', 3, '3', '����--5������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YQTZSY', 'Ԥ��Ͷ������', 1, '1', '10%-20%', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YQTZSY', 'Ԥ��Ͷ������', 2, '2', '20%-40%', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YQTZSY', 'Ԥ��Ͷ������', 3, '3', '40%-60%', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YQTZSY', 'Ԥ��Ͷ������', 4, '4', '60%����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YRCPFL', '�����Ʒ����', 5, '5', '���в�Ʒ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWJD', 'ҵ��׶�', -1, '-1', '��ʧ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWJD', 'ҵ��׶�', 1, '1', 'Ԥ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWJD', 'ҵ��׶�', 2, '2', 'Э��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWJD', 'ҵ��׶�', 3, '3', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWJD', 'ҵ��׶�', 4, '4', '��ǩ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWLX_GS', '��˾ҵ������', 1, '1', 'Ͷ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWLX_GS', '��˾ҵ������', 2, '2', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWLX_GS', '��˾ҵ������', 3, '3', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWLY', 'ҵ����Դ', 0, '0', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWLY', 'ҵ����Դ', 1, '1', '�ڲ��ṩ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWLY', 'ҵ����Դ', 2, '2', '�ͻ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWLY', 'ҵ����Դ', 3, '3', 'ְԱ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWLY', 'ҵ����Դ', 4, '4', '���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWLY', 'ҵ����Դ', 5, '5', '�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWLY', 'ҵ����Դ', 6, '6', '�ⲿ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWLY', 'ҵ����Դ', 7, '7', '������ϵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWLY', 'ҵ����Դ', 8, '8', 'ó��չ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWTCLX', 'ҵ���������', 1, '1', '��ͨ����Ӷ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWTCLX', 'ҵ���������', 2, '2', '���ڽ���Ӷ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWTCLX', 'ҵ���������', 3, '3', '˽ļ��ƷӶ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWTCLX', 'ҵ���������', 4, '4', '�����Գ�ҵ��Ӷ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWTCLX', 'ҵ���������', 5, '5', 'IBҵ��Ӷ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWTCLX', 'ҵ���������', 6, '6', 'Ͷ��ǩԼ�������������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWTCLX', 'ҵ���������', 7, '7', '�����Ʒ�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWTCLX', 'ҵ���������', 8, '8', '����Ӷ�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWXL', 'ҵ������', 1, '1', 'Ӫ��', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWXL', 'ҵ������', 2, '2', '����', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWXL', 'ҵ������', 4, '4', '��̨', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWXQ', 'ҵ������', 1, '1', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWXQ', 'ҵ������', 2, '2', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWXQ', 'ҵ������', 3, '3', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YX', '[PUB]����', 0, 'F', 'F-������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YX', '[PUB]����', 1, 'Y', 'Y-����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YXHDLX', 'Ӫ�������', 1, 'Code1', '��Ʒ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YXHDLX', 'Ӫ�������', 2, 'Code2', '�¿�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YXHDLX', 'Ӫ�������', 3, 'Code3', 'Ӫҵ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YXHDLX', 'Ӫ�������', 4, 'Code4', '��˾����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YXLX', 'Ӱ������', 1, '1', '������Ƭ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YXLX', 'Ӱ������', 2, '2', '����֤��_����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YXLX', 'Ӱ������', 3, '3', '��ҵ֤��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YXLX', 'Ӱ������', 6, '6', 'ǩԼ��ͬ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YXLX', 'Ӱ������', 8, '8', '����֤��_����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YXLX', 'Ӱ������', 9, '9', 'ѧλ֤��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YXLX', 'Ӱ������', 20, '20', 'ί����Ȩ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YXLX', 'Ӱ������', 21, '21', 'ת���ͻ���Ȩ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YXLX', 'Ӱ������', 22, '22', '�ͻ��ҽ�ȷ�ϵ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YXLX', 'Ӱ������', 23, '23', '�ͻ����ȷ�ϵ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YXLX', 'Ӱ������', 24, '24', '�ͻ��ҽ�ȷ�ϵ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YXLX', 'Ӱ������', 60, '60', 'ǩԼ�ֳ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YXLX', 'Ӱ������', 61, '61', '�ƶ�ǩ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YXLX', 'Ӱ������', 62, '62', '�ֳ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YXLX', 'Ӱ������', 501, '501', '֤ȯ����ҵ��Ӫ���ʸ�֤��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YXLX', 'Ӱ������', 502, '502', '�����ƽ������ʸ�֤��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YXLX', 'Ӱ������', 504, '504', '�ڻ�Ӫ��֤��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YXLX', 'Ӱ������', 508, '508', '֤ȯ������֤��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YXLX', 'Ӱ������', 516, '516', '֤ȯͶ����ѯ(����)֤��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YXLX', 'Ӱ������', 532, '532', 'һ��֤ȯҵ��֤��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YXLX', 'Ӱ������', 564, '564', '����Ͷ�ʹ���֤��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YXLX', 'Ӱ������', 5128, '5128', '֤ȯͶ����ѯҵ��(����ʦ)֤��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YXLX', 'Ӱ������', 5256, '5256', '֤ȯͶ����ѯҵ��(Ͷ�ʹ���)֤��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YYBFL', 'Ӫҵ������', 1, '1', '�ص�Ӫҵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YYBFL', 'Ӫҵ������', 2, '2', 'Ӫҵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YYBLB', 'Ӫҵ�����', 1, '1', 'A��Ӫҵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YYBLB', 'Ӫҵ�����', 2, '2', 'B��Ӫҵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YYBLB', 'Ӫҵ�����', 3, '3', 'C��Ӫҵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YZWTLB', '��֤ת��ί�����', 2, '1', '����ת֤ȯ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YZWTLB', '��֤ת��ί�����', 4, '2', '֤ȯת����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YZWTLB', '��֤ת��ί�����', 8, '22', 'ǩ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YZWTLB', '��֤ת��ί�����', 16, '23', 'ǩ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YZWTLB', '��֤ת��ί�����', 32, '4', '�ǼǶ�Ӧ��ϵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YZWTLB', '��֤ת��ί�����', 64, '5', '������Ӧ��ϵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YZWTLB', '��֤ת��ί�����', 128, '3', '��ѯ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YZWTLB', '��֤ת��ί�����', 256, '-9', '���׺�ʵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YZWTLB', '��֤ת��ί�����', 512, '20', '���ܶ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YZWTLB', '��֤ת��ί�����', 1024, '21', '��ϸ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YZWTLB', '��֤ת��ί�����', 2048, '-17', '��������ת֤ȯ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YZWTLB', '��֤ת��ί�����', 4096, '-18', '����֤ȯת����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YZWTLB', '��֤ת��ί�����', 8192, '-1', '��������ת֤ȯ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBDW', 'ָ�굥λ', 1, '1', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBDW', 'ָ�굥λ', 2, '2', 'Ԫ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBDW', 'ָ�굥λ', 3, '3', '��Ԫ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBDW', 'ָ�굥λ', 4, '4', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBDW', 'ָ�굥λ', 5, '5', '%', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBDW', 'ָ�굥λ', 6, '6', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBDW', 'ָ�굥λ', 7, '7', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBDW', 'ָ�굥λ', 8, '8', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', 'ָ��˶����', 1, '1', '��ͨ�˻���Ӷ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', 'ָ��˶����', 2, '2', '�����˻���Ӷ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', 'ָ��˶����', 3, '3', '������Ȩ��Ӷ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', 'ָ��˶����', 4, '4', '��֤������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', 'ָ��˶����', 5, '5', '������ȯ��Ϣ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', 'ָ��˶����', 6, '6', 'IBҵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', 'ָ��˶����', 7, '7', '����Эͬҵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', 'ָ��˶����', 8, '8', '�۽���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', 'ָ��˶����', 9, '9', '�󼯺ϲ�Ʒ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', 'ָ��˶����', 10, '10', 'Ͷ����ѯ��Ʒ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', 'ָ��˶����', 11, '11', '��ļ_������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', 'ָ��˶����', 12, '12', '��ļ_���۷����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', 'ָ��˶����', 13, '13', '��ļ_β��Ӷ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', 'ָ��˶����', 14, '14', '��ļ_�ֲ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', 'ָ��˶����', 15, '15', '����ƾ֤����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', 'ָ��˶����', 16, '16', '˽ļ_���깺', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', 'ָ��˶����', 17, '17', '˽ļ_���۷����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', 'ָ��˶����', 18, '18', '˽ļ_�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', 'ָ��˶����', 19, '19', '˽ļ_����ҵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', 'ָ��˶����', 20, '20', '˽ļ_������Ӷ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', 'ָ��˶����', 21, '21', '˽ļ_PB����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', 'ָ��˶����', 22, '22', '˽ļ_��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJTZHY', '�ʽ�Ͷ����ҵ', 4, '4', '��Դ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJTZHY', '�ʽ�Ͷ����ҵ', 5, '5', '���β���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJTZHY', '�ʽ�Ͷ����ҵ', 6, '6', '�ƽ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJTZHY', '�ʽ�Ͷ����ҵ', 7, '7', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJTZHY', '�ʽ�Ͷ����ҵ', 8, '8', '��ͨ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJTZHY', '�ʽ�Ͷ����ҵ', 9, '9', '������ʩ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJTZHY', '�ʽ�Ͷ����ҵ', 10, '10', '������ҵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJTZHY', '�ʽ�Ͷ����ҵ', 11, '11', '������ҵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJTZHY', '�ʽ�Ͷ����ҵ', 12, '12', '���ز�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJXY', '�ڽ�����', 1, '1', '���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJXY', '�ڽ�����', 2, '2', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJXY', '�ڽ�����', 3, '3', '��˹����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJXY', '�ڽ�����', 4, '4', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJXY', '�ڽ�����', 5, '5', '���ڽ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZKFS', '�ۿ۷�ʽ', 1, '1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZKFS', '�ۿ۷�ʽ', 2, '2', '�Żݼ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQDW', '���ڵ�λ', 1, '1', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQDW', '���ڵ�λ', 2, '2', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQDW', '���ڵ�λ', 3, '3', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQDW', '���ڵ�λ', 4, '4', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQDW', '���ڵ�λ', 5, '5', 'һ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQFXCSNL', 'ծȯ���ճ�������', 1, '1', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQFXCSNL', 'ծȯ���ճ�������', 2, '2', '�Ƚ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQFXCSNL', 'ծȯ���ճ�������', 3, '3', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQFXCSNL', 'ծȯ���ճ�������', 4, '4', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQFXCSNL', 'ծȯ���ճ�������', 5, '5', 'ƽ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQJYZT', '֤ȯ����״̬', 0, '0', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQJYZT', '֤ȯ����״̬', 1, '1', 'ͣ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQJYZT', '֤ȯ����״̬', 2, '2', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQJYZT', '֤ȯ����״̬', 3, '3', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQLB', '֤ȯ���', 1, '1', '��Ʊ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQLB', '֤ȯ���', 2, '2', '��ծ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQLB', '֤ȯ���', 3, '3', '��ҵծȯ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQLB', '֤ȯ���', 4, '4', '��ծ�ع�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQLB', '֤ȯ���', 5, '5', '��ͨ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQLB', '֤ȯ���', 6, '6', 'Ͷ�ʻ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQLB', '֤ȯ���', 7, '7', '��ծ�ع�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQLB', '֤ȯ���', 8, '8', 'ת��ծȯ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQLB', '֤ȯ���', 9, '9', '���Ż���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQLB', '֤ȯ���', 10, '10', '��ϻع�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQLB', '֤ȯ���', 11, '11', '��Ʊ�۱�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQLB', '֤ȯ���', 12, '12', '��Ʊ��Ԫ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQLB', '֤ȯ���', 13, '13', 'Ȩ֤', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQLB', '֤ȯ���', 14, '14', '��˾ծȯ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQLB', '֤ȯ���', 15, '15', 'ETF����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQLB', '֤ȯ���', 16, '16', '��ҵ��Ʊ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQLB', '֤ȯ���', 17, '17', '�����Ʊ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQSCLX', '֤ȯ�г�', 1, '1', '��A', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQSCLX', '֤ȯ�г�', 2, '2', '��A', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQSCLX', '֤ȯ�г�', 3, '3', '�ر�ת��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQSCLX', '֤ȯ�г�', 4, '4', '��B', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQSCLX', '֤ȯ�г�', 5, '5', '�ʽ�۱�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQSCLX', '֤ȯ�г�', 6, '6', '��B', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQSCLX', '֤ȯ�г�', 7, '7', '����ʽ����(����)', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQSCLX', '֤ȯ�г�', 8, '8', '�ʽ���Ԫ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQSCLX', '֤ȯ�г�', 9, '9', '�ʽ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQTZBC', '֤ȯͶ�ʱ���', 1, '1', '70%����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQTZBC', '֤ȯͶ�ʱ���', 2, '2', '50%-70%', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQTZBC', '֤ȯͶ�ʱ���', 3, '3', '30%��50%', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQTZBC', '֤ȯͶ�ʱ���', 4, '4', '10%��30%', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQTZBC', '֤ȯͶ�ʱ���', 5, '5', '10%����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQZL', '֤ȯ����', 0, '0', 'ȫ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQZL', '֤ȯ����', 1, '1', 'A��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQZL', '֤ȯ����', 2, '2', 'B��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQZL', '֤ȯ����', 3, '3', '��С��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQZL', '֤ȯ����', 4, '4', '��ҵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQZL', '֤ȯ����', 5, '5', 'ծȯ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQZL', '֤ȯ����', 6, '6', 'Ȩ֤', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQZL', '֤ȯ����', 7, '7', '���ڻ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQZL', '֤ȯ����', 8, '8', '�۹�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZSPC', '֪ʶ����', 0, '0', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZSPC', '֪ʶ����', 1, '1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZW', 'ְ��', 1, '1', '��ϯ�����ѵʦ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZW', 'ְ��', 2, '2', '���ʦ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZW', 'ְ��', 3, '3', '��ϯ��ѵʦ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZW', 'ְ��', 4, '4', '��ѵʦ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZW', 'ְ��', 5, '5', 'Ӫ���ܼ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZW', 'ְ��', 6, '6', '�ܼ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZW', 'ְ��', 7, '7', '�ܾ�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZW', 'ְ��', 8, '8', '���ž���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZW', 'ְ��', 9, '9', '���ܼ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZW', 'ְ��', 10, '10', '���񲿾���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZW', 'ְ��', 11, '11', '���Ǹ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZW', 'ְ��', 12, '12', '�ͻ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZXBGLX', '���ű�������', 1, '1', '�˻�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZXBGLX', '���ű�������', 2, '2', '��ƹ滮����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZXBGLX', '���ű�������', 3, '3', 'Ͷ�ʹ滮����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZXZT', 'ִ��״̬', -1, '-1', 'ʧ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZXZT', 'ִ��״̬', 0, '0', 'ִ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZXZT', 'ִ��״̬', 1, '1', '�ɹ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYCD', '��Ҫ�̶�', 1, '1', '����Ҫ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYCD', '��Ҫ�̶�', 2, '2', '�ص��ע', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYCD', '��Ҫ�̶�', 3, '3', 'һ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYDM', 'ְҵ����', 1, '1', '�Ľ̿���רҵ��Ա', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYDM', 'ְҵ����', 2, '2', '�������ظɲ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYDM', 'ְҵ����', 3, '3', '����ҵ��λ�ɲ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYDM', 'ְҵ����', 4, '4', '��������ҵ��λ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYDM', 'ְҵ����', 5, '5', 'ũ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYDM', 'ְҵ����', 6, '6', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYDM', 'ְҵ����', 7, '7', '��ҵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYDM', 'ְҵ����', 8, '8', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYDM', 'ְҵ����', 9, '9', 'ѧ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYDM', 'ְҵ����', 10, '10', '֤ȯ��ҵ��Ա', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYDM', 'ְҵ����', 11, '11', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYDM', 'ְҵ����', 99, '99', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYDM_KYC', 'ְҵ����_KYC', 1, '1', '���������գ�ý��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYDM_KYC', 'ְҵ����_KYC', 2, '2', '���У�֤ȯ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYDM_KYC', 'ְҵ����_KYC', 3, '3', '����ҵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYDM_KYC', 'ְҵ����_KYC', 4, '4', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYDM_KYC', 'ְҵ����_KYC', 5, '5', '���������ӣ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYDM_KYC', 'ְҵ����_KYC', 6, '6', '��Ѷ���Ƽ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYDM_KYC', 'ְҵ����_KYC', 7, '7', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYDM_KYC', 'ְҵ����_KYC', 8, '8', 'ҽ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYDM_KYC', 'ְҵ����_KYC', 9, '9', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYDM_KYC', 'ְҵ����_KYC', 10, '10', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYDM_KYC', 'ְҵ����_KYC', 11, '11', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYFD', 'հ������', 1, '1', '1-2��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYFD', 'հ������', 2, '2', '3-4��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYFD', 'հ������', 3, '3', '5������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYJG', 'רҵ�ṹ', 1, '1', '���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYJG', 'רҵ�ṹ', 2, '2', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYJG', 'רҵ�ṹ', 3, '3', '�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYJG', 'רҵ�ṹ', 4, '4', '�ƾ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYJG', 'רҵ�ṹ', 5, '5', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYSRLY', '��Ҫ������Դ', 1, '1', '���ʡ����񱨳�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYSRLY', '��Ҫ������Դ', 2, '2', '������Ӫ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYSRLY', '��Ҫ������Դ', 3, '3', '��Ϣ����Ϣ��ת��֤ȯ�Ƚ������ʲ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYSRLY', '��Ҫ������Դ', 4, '4', '���⡢���۷��ز��ȷǽ������ʲ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYSRLY', '��Ҫ������Դ', 5, '5', '�޹̶�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYYXLX', 'չҵӰ������', 30, '30', '�ɼ�֤-֤ȯ�г�����֪ʶ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYYXLX', 'չҵӰ������', 31, '31', '�ɼ�֤-֤ȯ���������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYYXLX', 'չҵӰ������', 32, '32', '�ɼ�֤-֤ȯ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYYXLX', 'չҵӰ������', 33, '33', '�ɼ�֤-֤ȯͶ�ʷ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYYXLX', 'չҵӰ������', 34, '34', '�ɼ�֤-֤ȯͶ�ʻ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYYXLX', 'չҵӰ������', 35, '35', '�ɼ�֤-������ר��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYYXLX', 'չҵӰ������', 36, '36', '�ɼ�֤-֤ȯ�г���������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYYXLX', 'չҵӰ������', 37, '37', '�ɼ�֤-֤ȯ����ҵ��Ӫ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYYXLX', 'չҵӰ������', 38, '38', '�ɼ�֤-�ڻ�����֪ʶ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYYXLX', 'չҵӰ������', 39, '39', '�ɼ�֤-�ڻ����ɷ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYYXLX', 'չҵӰ������', 40, '40', '�ɼ�֤-֤ȯͶ�ʻ������ۻ���֪ʶ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYYXLX', 'չҵӰ������', 501, '501', '֤ȯ����ҵ��Ӫ���ʸ�֤��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYYXLX', 'չҵӰ������', 502, '502', '�����ƽ������ʸ�֤��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYYXLX', 'չҵӰ������', 504, '504', '�ڻ�Ӫ��֤��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYYXLX', 'չҵӰ������', 508, '508', '֤ȯ������֤��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYYXLX', 'չҵӰ������', 516, '516', '֤ȯͶ����ѯ(����)֤��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYYXLX', 'չҵӰ������', 532, '532', 'һ��֤ȯҵ��֤��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYYXLX', 'չҵӰ������', 564, '564', '����Ͷ�ʹ���֤��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYYXLX', 'չҵӰ������', 5128, '5128', '֤ȯͶ����ѯҵ��(����ʦ)֤��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYYXLX', 'չҵӰ������', 5256, '5256', '֤ȯͶ����ѯҵ��(Ͷ�ʹ���)֤��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYYXLX', 'չҵӰ������', 5512, '5512', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZZMM', '������ò', 1, '1', 'Ⱥ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZZMM', '������ò', 2, '2', '������Ա', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZZMM', '������ò', 3, '3', '�й���Ա', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZZMM', '������ò', 4, '4', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZZMM', '������ò', 5, '5', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZZTX', '��֯��ϵ', 1, '1', 'Ӫ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZZTX', '��֯��ϵ', 2, '2', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZZTXSHBQ', '����Ͷ���ϻ���ǩ', 1, '1', '�����ϻ�_���׿ͻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZZTXSHBQ', '����Ͷ���ϻ���ǩ', 2, '2', '�����ϻ�_ע��ͻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZZTXSHBQ', '����Ͷ���ϻ���ǩ', 3, '3', 'δ���ϻ�_�ص�Ŀ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZZTXSHBQ', '����Ͷ���ϻ���ǩ', 4, '4', 'δ���ϻ�_�ѵ�Ŀ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZZTXSHBQ', '����Ͷ���ϻ���ǩ', 5, '5', 'δ���ϻ�_�����ͻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZZZD', '�����ն�', 0, '0', 'ȡ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZZZD', '�����ն�', 1, '1', '��ͨ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('infolevel', '��Ϣ�ȼ�', 1, '1', 'һ�Ǽ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('infolevel', '��Ϣ�ȼ�', 2, '2', '���Ǽ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('infolevel', '��Ϣ�ȼ�', 3, '3', '���Ǽ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('infolevel', '��Ϣ�ȼ�', 4, '4', '���Ǽ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('infolevel', '��Ϣ�ȼ�', 5, '5', '���Ǽ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('infovalue', '��������', 0, '0', 'δ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('infovalue', '��������', 1, '1', '�Ƽ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('infovalue', '��������', 2, '2', '�����Ƽ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('infovalue', '��������', 3, '3', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('infovalue', '��������', 4, '4', '�ر�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('qrkhlx', '�ͻ�����', 1, '1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('qrkhlx', '�ͻ�����', 2, '2', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('sfzcd', '���֤λ��', 15, '15', '15', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('sfzcd', '���֤λ��', 18, '18', '18', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('tczfs', '������ʽ', 1, '1', '��ʼ������Ӫҵ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('tczfs', '������ʽ', 2, '2', '��ʼ��������δ��ʼ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('��������', 'CSLX', 1, '1', '��Сֵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('��������', 'CSLX', 2, '2', '���ֵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('��������', 'CSLX', 3, '3', 'ȡֵ��Χ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('��������', 'FWLX', 1, '1', '�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('��������', 'FWLX', 2, '2', '�˻�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('��������', 'FWLX', 3, '3', '�ͻ��ط�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('��������', 'FWLX', 4, '4', '�ͻ�Ͷ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('��������', 'FWLX', 5, '5', '��Ʒ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('��������', 'FWLX', 6, '6', '���ʷ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('��������', 'FWLX', 7, '7', '����ҵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('Ͷ�����ģ��', 'TZZHMX', 1, '1', 'Markowitzģ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('Ͷ�����ģ��', 'TZZHMX', 2, '2', '���󷽲�ģ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GXSFCZ', '�ų����й�ϵ', 1, '1', '���й�ϵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GXSFCZ', '�ų����й�ϵ', 2, '2', '�ų����й�ϵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GXSFCZ', '�ų����й�ϵ', 2, '2', '�ų����й�ϵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GXSFCZ', '�ų����й�ϵ', 1, '1', '���й�ϵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CLXMJQCJ', '������Ŀ��Ǣ�㼶', 1, '1', 'ʵ�ʿ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CLXMJQCJ', '������Ŀ��Ǣ�㼶', 2, '2', '�߹�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CLXMJQCJ', '������Ŀ��Ǣ�㼶', 3, '3', '�����ܼ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CLXMJQCJ', '������Ŀ��Ǣ�㼶', 4, '4', '�ͻ���Ŀ�Ŷ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CLXMJQCJ', '������Ŀ��Ǣ�㼶', 5, '5', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGCRMLCSPZT', '����CRM��������״̬', -1, '-1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGCRMLCSPZT', '����CRM��������״̬', 0, '0', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGCRMLCSPZT', '����CRM��������״̬', 2, '2', '����ͨ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGCRMLCSPZT', '����CRM��������״̬', 3, '3', '����δͨ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGCRMLCSPZT', '����CRM��������״̬', 4, '4', '�ݸ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGCRMXMZT', '����CRM��Ŀ��չ', -1, '-1', '�ݻ�/��ֹ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGCRMXMZT', '����CRM��Ŀ��չ', 0, '0', '�ƽ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGCRMXMZT', '����CRM��Ŀ��չ', 1, '1', '���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGCRMXMZT1', '����CRM��Ŀ״̬', 0, '0', '�ݸ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGCRMXMZT1', '����CRM��Ŀ״̬', 1, '1', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGCRMXMZT1', '����CRM��Ŀ״̬', 2, '2', '������ͨ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGCRMXMZT1', '����CRM��Ŀ״̬', 3, '3', '����ͨ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGCRMXMZT1', '����CRM��Ŀ״̬', 4, '4', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SFYSS', '�Ƿ�������', 0, '0', 'δ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SFYSS', '�Ƿ�������', 1, '1', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SFYZQTFMKZYWHZ', '�Ƿ������������濪չҵ�����', 0, '0', 'δ���������濪չҵ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SFYZQTFMKZYWHZ', '�Ƿ������������濪չҵ�����', 1, '1', '�����������濪չҵ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XMLCB', '��Ŀ��̱�', 1, '1', 'ǩ����Э��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XMLCB', '��Ŀ��̱�', 2, '2', '�б�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XMLCB', '��Ŀ��̱�', 3, '3', '�б�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XMLCB', '��Ŀ��̱�', 4, '4', 'ǩ���������Э��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XMLCB', '��Ŀ��̱�', 5, '5', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XMLCB', '��Ŀ��̱�', 6, '6', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XMLCB', '��Ŀ��̱�', 7, '7', '�ں�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XMLCB', '��Ŀ��̱�', 8, '8', '�ϱ���ܻ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTXMLX', 'Эͬҵ����Ŀ����', 1, '1', '��Ȩ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTXMLX', 'Эͬҵ����Ŀ����', 2, '2', 'ծȨ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTXMLX', 'Эͬҵ����Ŀ����', 3, '3', '�ʱ��г���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTXMLX', 'Эͬҵ����Ŀ����', 4, '4', 'ABS', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTXMLX', 'Эͬҵ����Ŀ����', 5, '5', '��ҵ/��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTXMLX', 'Эͬҵ����Ŀ����', 6, '6', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTXMLX', 'Эͬҵ����Ŀ����', 7, '7', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DJLX', '��������', 1, '1', '˾������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DJLX', '��������', 2, '2', '��ҵ���ж���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DJLX', '��������', 3, '3', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FZ', '��ծ', 1, '1', '���ʸ�ծ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FZ', '��ծ', 2, '2', '��ȯ��ծ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FZ', '��ծ', 3, '3', '��Ϣ��ծ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', 'ϵͳָ��˵�����', 1, '1', 'ʱ��ά��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', 'ϵͳָ��˵�����', 2, '2', '�����֧', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', 'ϵͳָ��˵�����', 3, '3', '�ͻ��ֲ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', 'ϵͳָ��˵�����', 11, '11', '�ͻ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', 'ϵͳָ��˵�����', 12, '12', '�ͻ��ʲ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', 'ϵͳָ��˵�����', 13, '13', '�ͻ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', 'ϵͳָ��˵�����', 14, '14', '�ͻ��ֲ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', 'ϵͳָ��˵�����', 15, '15', '�ͻ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', 'ϵͳָ��˵�����', 16, '16', '�ͻ����ϻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', 'ϵͳָ��˵�����', 19, '19', '�ͻ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', 'ϵͳָ��˵�����', 21, '21', 'Ա������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', 'ϵͳָ��˵�����', 22, '22', 'Ա����ϵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', 'ϵͳָ��˵�����', 23, '23', 'Ա����ѵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', 'ϵͳָ��˵�����', 29, '29', 'Ա������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', 'ϵͳָ��˵�����', 31, '31', '������Ϣ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', 'ϵͳָ��˵�����', 32, '32', '�����¼', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', 'ϵͳָ��˵�����', 39, '39', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', 'ϵͳָ��˵�����', 41, '41', '���ڲ�Ʒ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', 'ϵͳָ��˵�����', 42, '42', '���ڲ�Ʒ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', 'ϵͳָ��˵�����', 43, '43', '���ڲ�Ʒ�ʵ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', 'ϵͳָ��˵�����', 49, '49', '���ڲ�Ʒ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', 'ϵͳָ��˵�����', 51, '51', '�����Ʒ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', 'ϵͳָ��˵�����', 52, '52', '�����Ʒ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', 'ϵͳָ��˵�����', 53, '53', '�����Ʒ�ʵ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', 'ϵͳָ��˵�����', 54, '54', '�����Ʒ��Ѷ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', 'ϵͳָ��˵�����', 59, '59', '�����Ʒ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', 'ϵͳָ��˵�����', 71, '71', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', 'ϵͳָ��˵�����', 72, '72', '����MOT', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', 'ϵͳָ��˵�����', 73, '73', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', 'ϵͳָ��˵�����', 79, '79', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', 'ϵͳָ��˵�����', 81, '81', '��Ч����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', 'ϵͳָ��˵�����', 82, '82', '��Ч����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', 'ϵͳָ��˵�����', 83, '83', '��Ч����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', 'ϵͳָ��˵�����', 89, '89', '��Ч����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', 'ϵͳָ��˵�����', 91, '91', 'ϵͳ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', 'ϵͳָ��˵�����', 92, '92', 'ϵͳ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', 'ϵͳָ��˵�����', 99, '99', 'ϵͳ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHLX_XTZBSM', '�˻�����_ϵͳָ��˵��', 0, '0', '�ϲ��˻�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHLX_XTZBSM', '�˻�����_ϵͳָ��˵��', 1, '1', '��ͨ�˻�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHLX_XTZBSM', '�˻�����_ϵͳָ��˵��', 2, '2', '�����˻�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHLX_XTZBSM', '�˻�����_ϵͳָ��˵��', 3, '3', '���ڲ�Ʒ�˻�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHLX_XTZBSM', '�˻�����_ϵͳָ��˵��', 4, '4', '������Ȩ�˻�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLXJJQY', '֤�����ͣ�����Ǩ�ƣ�', 0, '0', '�й��������֤', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLXJJQY', '֤�����ͣ�����Ǩ�ƣ�', 2, '2', '�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLXJJQY', '֤�����ͣ�����Ǩ�ƣ�', 3, '3', '̨��ͬ��������½ͨ��֤', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLXJJQY', '֤�����ͣ�����Ǩ�ƣ�', 4, '4', '�ۣ��ĵ������������ڵ�ͨ��֤', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLXJJQY', '֤�����ͣ�����Ǩ�ƣ�', 5, '5', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CZZT', '����״̬', 1, '1', '�״�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CZZT', '����״̬', 2, '2', '�޸�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', 'ָ��˶����', 23, '23', '˽ļ_�Ǵ�����Ӷ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', 'ָ��˶����', 24, '24', '��Ŀ_Ԥ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', 'ָ��˶����', 25, '25', '��Ŀ_��Ʊ��Ѻ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', 'ָ��˶����', 26, '26', '��Ŀ_����ҵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', 'ָ��˶����', 27, '27', '��Ŀ_��̨ҵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', 'ָ��˶����', 28, '28', '��Ŀ_Ͷ��ҵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', 'ָ��˶����', 29, '29', '��Ŀ_�йܲ�Ʒ˽ļPB', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', 'ָ��˶����', 30, '30', '��Ŀ_�ʹܶ���ҵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', 'ָ��˶����', 31, '31', '��Ŀ_����������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', 'ָ��˶����', 32, '32', '��Ŀ_������Ȩ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', 'ָ��˶����', 33, '33', '��Ŀ_����������ƾ֤', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', 'ָ��˶����', 34, '34', '��Ŀ_�ʲ�֤ȯ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', 'ָ��˶����', 35, '35', '˽ļ_�Ǵ�����������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', 'ָ��˶����', 36, '36', '��Ŀ_��Ʊ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', 'ָ��˶����', 91, '91', '�ʹ�_���깺��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', 'ָ��˶����', 92, '92', '�ʹ�_�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', 'ָ��˶����', 93, '93', '�ʹ�_Ӷ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', 'ָ��˶����', 94, '94', '�ʹ�_����ҵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBLB', 'ָ�����', 1, '1', '������Ϣ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBLB', 'ָ�����', 2, '2', '�ɱ�ָ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBLB', 'ָ�����', 3, '3', '��ֵָ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBLB', 'ָ�����', 4, '4', 'Ͷ��Ч��ָ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBLB', 'ָ�����', 5, '5', '��Ϊָ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBLX', 'ָ������', 1, 'Code1', 'һ��ָ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBLX', 'ָ������', 2, 'Code2', '��Ʒ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBSX', 'ָ������', 1, '1', '��Ч', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBSX', 'ָ������', 2, '2', 'н�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBSX', 'ָ������', 4, '4', '�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBSX', 'ָ������', 8, '8', '���ָ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBSX', 'ָ������', 16, '16', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZCFL', '�ʲ�����', 1, '1', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZCFL', '�ʲ�����', 2, '2', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZCFL', '�ʲ�����', 3, '3', '�����ʲ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZCFL', '�ʲ�����', 4, '4', '��Ʒ�ʲ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZCFL', '�ʲ�����', 5, '5', '�����ʲ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZCLB', '�ʲ����', 1, '1', '�ֽ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZCLB', '�ʲ����', 2, '2', 'Ȩ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZCLB', '�ʲ����', 3, '3', '�̶�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZCLB', '�ʲ����', 4, '4', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZCPZBGLX', '�ʲ����ñ�������', 1, '1', '�˻�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZCPZBGLX', '�ʲ����ñ�������', 2, '2', '��ƹ滮����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZCPZBGLX', '�ʲ����ñ�������', 3, '3', 'Ͷ�ʹ滮����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZCPZZBFZ', '�ʲ�����ָ�����', 1, '1', '�ʲ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZCPZZBFZ', '�ʲ�����ָ�����', 2, '2', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZCPZZBFZ', '�ʲ�����ָ�����', 3, '3', '�г�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZCPZZBFZ', '�ʲ�����ָ�����', 4, '4', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZCPZZBFZ', '�ʲ�����ָ�����', 5, '5', '�ʲ�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZDSXLB', '�ش��������', 1, '1', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZDSXLB', '�ش��������', 2, '2', '�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZDSXLB', '�ش��������', 3, '3', '�����ֺ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZDSXLB', '�ش��������', 4, '4', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZFFS', '֧����ʽ', 0, '0', '���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZFFS', '֧����ʽ', 1, '1', '����Ӷ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZFFS', '֧����ʽ', 2, '2', '�ֽ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZFFS', '֧����ʽ', 3, '3', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZFFS', '֧����ʽ', 4, '4', 'Ӷ��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZFFS', '֧����ʽ', 5, '5', '����ת��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZFFS', '֧����ʽ', 6, '6', '�ֽ�+��Ӷ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_BJTJ', '�ۺϲ�ѯ_�Ƚ�����', 1, '=', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_BJTJ', '�ۺϲ�ѯ_�Ƚ�����', 2, '>', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_BJTJ', '�ۺϲ�ѯ_�Ƚ�����', 3, '<', 'С��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_BJTJ', '�ۺϲ�ѯ_�Ƚ�����', 4, '>=', '���ڵ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_BJTJ', '�ۺϲ�ѯ_�Ƚ�����', 5, '<=', 'С�ڵ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_CZF', '�ۺϲ�ѯ_������', 1, '+', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_CZF', '�ۺϲ�ѯ_������', 2, '-', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_CZF', '�ۺϲ�ѯ_������', 3, '*', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_CZF', '�ۺϲ�ѯ_������', 4, '/', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_CZF', '�ۺϲ�ѯ_������', 5, ')', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_CZF', '�ۺϲ�ѯ_������', 6, '(', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_KHLX', '�ۺϲ�ѯ_�ͻ�����', 1, '1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_KHLX', '�ۺϲ�ѯ_�ͻ�����', 2, '2', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_PXFS', '�ۺϲ�ѯ_����ʽ', 0, '0', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_PXFS', '�ۺϲ�ѯ_����ʽ', 1, '1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_PXFS', '�ۺϲ�ѯ_����ʽ', 2, '2', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_SJZQ', '�ۺϲ�ѯ_ʱ������', 1, '1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_SJZQ', '�ۺϲ�ѯ_ʱ������', 2, '2', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_SJZQ', '�ۺϲ�ѯ_ʱ������', 3, '3', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_SJZQ', '�ۺϲ�ѯ_ʱ������', 4, '4', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_SJZQ', '�ۺϲ�ѯ_ʱ������', 5, '5', '��һ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_SJZQ', '�ۺϲ�ѯ_ʱ������', 6, '6', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_SJZQ', '�ۺϲ�ѯ_ʱ������', 7, '7', '��һ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_SXFS', '�ۺϲ�ѯ_ɸѡ��ʽ', 1, '1', '��ѡ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_SXFS', '�ۺϲ�ѯ_ɸѡ��ʽ', 2, '2', '��ѡ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_SXFS', '�ۺϲ�ѯ_ɸѡ��ʽ', 3, '3', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_SXFS', '�ۺϲ�ѯ_ɸѡ��ʽ', 4, '4', '�Ƚ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_SXFS', '�ۺϲ�ѯ_ɸѡ��ʽ', 5, '5', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_SXFS', '�ۺϲ�ѯ_ɸѡ��ʽ', 6, '6', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_ZBFL', '�ۺϲ�ѯ_ָ�����', 1, '1', '�ͻ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_ZBFL', '�ۺϲ�ѯ_ָ�����', 2, '2', 'Ա������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_ZBFL', '�ۺϲ�ѯ_ָ�����', 3, '3', '�ͻ�ָ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_ZBFL', '�ۺϲ�ѯ_ָ�����', 4, '4', '�ʲ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_ZBFL', '�ۺϲ�ѯ_ָ�����', 5, '5', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_ZBFL', '�ۺϲ�ѯ_ָ�����', 6, '6', '�ֲ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_ZBFL', '�ۺϲ�ѯ_ָ�����', 7, '7', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_ZBFL', '�ۺϲ�ѯ_ָ�����', 8, '8', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_ZBFL', '�ۺϲ�ѯ_ָ�����', 9, '9', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_ZBGS', '�ۺϲ�ѯ_ָ�����', 1, '1', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_ZBGS', '�ۺϲ�ѯ_ָ�����', 2, '2', '�ʲ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_ZBGS', '�ۺϲ�ѯ_ָ�����', 3, '3', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_ZBGS', '�ۺϲ�ѯ_ָ�����', 4, '4', '�ֹ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_ZBGS', '�ۺϲ�ѯ_ָ�����', 5, '5', '���н���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_ZBGS', '�ۺϲ�ѯ_ָ�����', 6, '6', '������ȯ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_ZBGS', '�ۺϲ�ѯ_ָ�����', 7, '7', '���ڲ�Ʒ', 0, 0, null);
commit;
prompt 3000 records committed...
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_ZBGS', '�ۺϲ�ѯ_ָ�����', 8, '8', '������Ȩ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_ZBGS', '�ۺϲ�ѯ_ָ�����', 9, '9', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_ZBGS', '�ۺϲ�ѯ_ָ�����', 99, '99', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_ZDLX', '�ۺϲ�ѯ_�ֶ�����', 1, '1', '��ֵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_ZDLX', '�ۺϲ�ѯ_�ֶ�����', 2, '2', '�ַ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHLX', '�˻�����', 1, '1', '��Ȩ�˻�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHLX', '�˻�����', 2, '2', '��ͨ�˻�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHLX', '�˻�����', 3, '3', '�����˻�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHLX', '�˻�����', 4, '4', 'OTC�˻�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHLX_DX', '�˻�����', 1, '1', '��ͨ�˻�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHLX_DX', '�˻�����', 2, '2', '�����˻�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHLX_DX', '�˻�����', 3, '3', '��Ȩ�˻�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHLX_DX', '�˻�����', 4, '4', 'OTC�˻�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHSX_ZJ', '�ʽ��ʻ�����', 1, '1', '���ʻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHSX_ZJ', '�ʽ��ʻ�����', 2, '2', '��ֹ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHSX_ZJ', '�ʽ��ʻ�����', 4, '4', '��ֹȡ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHSX_ZJ', '�ʽ��ʻ�����', 8, '8', '��ֹ��֤ת��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHSX_ZJ', '�ʽ��ʻ�����', 128, '128', '��ͨ���л���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHZCLX', '�˻��ʲ�����', 1, '1', '���ʲ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHZCLX', '�˻��ʲ�����', 2, '2', '�ɻ��ʲ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHZCLX', '�˻��ʲ�����', 3, '3', '�����ʲ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHZCLX', '�˻��ʲ�����', 4, '4', 'otc�ʲ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHZCLX', '�˻��ʲ�����', 5, '5', '������Ȩ�ʲ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHZT', '�ʻ�״̬', 0, '0', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHZT', '�ʻ�״̬', 1, '1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHZT', '�ʻ�״̬', 2, '2', '��ʧ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHZT', '�ʻ�״̬', 3, '3', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJJDFX', '�ʽ�������', 1, '1', '�跽', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJJDFX', '�ʽ�������', 2, '2', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLB', '֤�����', 0, '0', '���֤', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLB', '֤�����', 1, '1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLB', '֤�����', 2, '2', '����֤', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLB', '֤�����', 4, '4', 'ͨ��֤', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLB', '֤�����', 5, '5', '���ڱ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLB', '֤�����', 8, '8', '��֯��������֤', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLB', '֤�����', 15, '15', '̨��ͨ��֤��������Ч����֤', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLB', '֤�����', 18, '18', '��������þ���֤', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLB', '֤�����', 19, '19', '����ִ��/ע��Ǽ�֤', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLB', '֤�����', 20, '20', '����֤', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLB', '֤�����', 21, '21', '����ͻ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLB', '֤�����', 22, '22', '��۾���ͨ��֤', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLB', '֤�����', 23, '23', '���ž���ͨ��֤', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLB', '֤�����', 24, '24', '̨�����ͨ��֤', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLB', '֤�����', 25, '25', '��ʱ���֤', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLB', '֤�����', 26, '26', '����֤', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLB', '֤�����', 27, '27', '����֤��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLB', '֤�����', 99, '99', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLXFS', '�����ϵ��ʽ', 1, '1', '�ƶ��绰', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLXFS', '�����ϵ��ʽ', 2, '2', '�����绰', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLXFS', '�����ϵ��ʽ', 4, '4', '��ͥ�绰', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLXFS', '�����ϵ��ʽ', 8, '8', '�����ʼ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLXFS', '�����ϵ��ʽ', 16, '16', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLXFS', '�����ϵ��ʽ', 32, '32', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLXPL', '�����ϵƵ��', 1, '1', 'ÿ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLXPL', '�����ϵƵ��', 2, '2', '˫��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLXPL', '�����ϵƵ��', 3, '3', 'ÿ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLXPL', '�����ϵƵ��', 4, '4', 'ÿ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLXPL', '�����ϵƵ��', 5, '5', '�и���ʱ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJTZHY', '�ʽ�Ͷ����ҵ', 0, '0', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJTZHY', '�ʽ�Ͷ����ҵ', 1, '1', '��Ʊ����ծȯ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJTZHY', '�ʽ�Ͷ����ҵ', 2, '2', '��ó��ͨ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJTZHY', '�ʽ�Ͷ����ҵ', 3, '3', 'ũ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('OTC_JSFS', 'OTC_���շ�ʽ', 1, '1', '�����Ը�', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('OTC_JSFS', 'OTC_���շ�ʽ', 2, '2', '��ȯ����', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('OTC_JSFS', 'OTC_���շ�ʽ', 4, '4', '���ȯ', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('OTC_JSFS', 'OTC_���շ�ʽ', 8, '8', '��ȯ����', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('OTC_JYXZ', 'OTC_��������', 1, '1', '��������ת��', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('OTC_JYXZ', 'OTC_��������', 16, '16', '��ֹ�½��ɶ�', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('OTC_JYXZ', 'OTC_��������', 32, '32', '���ռ��ɶ����ƹɶ�����', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('OTC_MMXZ', 'OTC_��������', 16, '16', '��ֹ��������', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('OTC_MMXZ', 'OTC_��������', 32, '32', '��ֹ��������', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('OTC_XJMS', 'OTC_�޼�ģʽ', 0, '0', '��ͨ��Ȩ�޼�+-15%', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('OTC_XJMS', 'OTC_�޼�ģʽ', 1, 'D', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('OTC_XJMS', 'OTC_�޼�ģʽ', 2, 'N', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('OTC_ZDSX', 'OTC_�˻�ָ������', 1, '1', 'δָ��', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('OTC_ZDSX', 'OTC_�˻�ָ������', 2, '2', '����ָ��', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('OTC_ZDSX', 'OTC_�˻�ָ������', 4, '4', '����ָ��', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PCFS', '���ⷽʽ', 1, '1', '�ֹ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PCFS', '���ⷽʽ', 2, '2', '�Զ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PCFS', '���ⷽʽ', 3, '3', '����������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PCLX', '��������', 1, '1', '���ճ��������״�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PCLX', '��������', 2, '2', '���ճ���������������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PCLX', '��������', 3, '3', '������ճ�����������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PCLX', '��������', 4, '4', '������ȯ���ճ�����������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PCLX', '��������', 5, '5', '��ҵ����ճ�����������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PCLX', '��������', 6, '6', '�����ͻ��״η�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PCLX', '��������', 7, '7', '�����ͻ����·�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PCXMFL', '������Ŀ����', 1, '1', 'Ͷ�ʷ���ƫ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PCXMFL', '������Ŀ����', 2, '2', '�͹��ʲ�ʵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PCXMFL', '������Ŀ����', 3, '3', '�ͻ�Ͷ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PCZL', '��������', 1, '1', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PCZL', '��������', 2, '2', '����ƫ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PCZL', '��������', 3, '3', '֪ʶ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PGFS', '������ʽ', 1, '1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PGFS', '������ʽ', 2, '2', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_BQLX', '[PIF]��ǩ����', 1, '1', '��ά��ǩ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_BQLX', '[PIF]��ǩ����', 5, '5', 'ͳ�Ʒ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_BQLX', '[PIF]��ǩ����', 6, '6', 'չʾ��ǩ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_BQLX', '[PIF]��ǩ����', 7, '7', 'Ȩ�ޱ�ǩ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPCSFS', '[PIF]��Ʒ���跽ʽ', 0, '00', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPCSFS', '[PIF]��Ʒ���跽ʽ', 1, '01', '��ǰ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPCSFS', '[PIF]��Ʒ���跽ʽ', 2, '02', '�º󱸰�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPCSFS', '[PIF]��Ʒ���跽ʽ', 3, '03', '���豸��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPDLF', '[PIF]����Ʒ�����', 1, '1', 'OTC', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPDLF', '[PIF]����Ʒ�����', 2, '2', '�ʹܲ�Ʒ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPDLF', '[PIF]����Ʒ�����', 3, '3', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPFJLX', '[PIF]��Ʒ��������', 1, '1', 'ETF', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPFJLX', '[PIF]��Ʒ��������', 2, '2', 'LOF', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPFJLX', '[PIF]��Ʒ��������', 3, '3', 'QDII', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPFXCSLX', '[PIF]��Ʒ���г�������', 0, '00', '����˾', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPFXCSLX', '[PIF]��Ʒ���г�������', 1, '01', '����ϵͳ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPFXCSLX', '[PIF]��Ʒ���г�������', 2, '02', '����֤ȯ��˾', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPFXCSLX', '[PIF]��Ʒ���г�������', 3, '03', '�������ڻ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPFXCSLX', '[PIF]��Ʒ���г�������', 4, '04', '���뼰������ڼ�ܲ�������Ľ��׳���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPFXCSLX', '[PIF]��Ʒ���г�������', 5, '05', '�ط���������Ľ��׳���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPFXCSLX', '[PIF]��Ʒ���г�������', 99, '99', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPFXDJ', '[PIF]��Ʒ���յȼ�', 1, '1', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPFXDJ', '[PIF]��Ʒ���յȼ�', 2, '2', '�е�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPFXDJ', '[PIF]��Ʒ���յȼ�', 3, '3', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPFXDJ', '[PIF]��Ʒ���յȼ�', 4, '4', '�и�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPFXDJ', '[PIF]��Ʒ���յȼ�', 5, '5', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPGMLX', '[PIF]��Ʒ��ģ����', 0, '00', '�̶���ģ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPGMLX', '[PIF]��Ʒ��ģ����', 1, '01', '�趨��ģ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPGMLX', '[PIF]��Ʒ��ģ����', 2, '02', '�趨��ģ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPGMLX', '[PIF]��Ʒ��ģ����', 3, '03', 'δ�趨��ģ���޼�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPJDBZ', '[PIF]��Ʒ�׶α�ʶ', 601, '601', '��ǰ��ֹ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPJDBZ', '[PIF]��Ʒ�׶α�ʶ', 602, '602', '������ֹ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPJDBZ', '[PIF]��Ʒ�׶α�ʶ', 603, '603', '��Ʒ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPJDBZ', '[PIF]��Ʒ�׶α�ʶ', 604, '604', '��Ʒ�¼�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPSX', '[PIF]��Ʒ����', 1, '1', '1-����Ҫ����ԤԼ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPSX', '[PIF]��Ʒ����', 2, '2', '2-��Ҫ��ʾ������ϸ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPXL', '[PIF]��Ʒϵ��', 0, '00', '00-������Ʒ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPXL', '[PIF]��Ʒϵ��', 1, '1', '1-һ��ͨ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPXL', '[PIF]��Ʒϵ��', 2, '2', '2-���²�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPXL', '[PIF]��Ʒϵ��', 3, '3', '3-����Ӯ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPXL', '[PIF]��Ʒϵ��', 4, '4', '4-���ۻع�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPXL', '[PIF]��Ʒϵ��', 5, '5', '5-���ۻع���Ȩ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPZRCSLX', '[PIF]��Ʒת�ó�������', 0, '00', '����˾��̨�г�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPZRCSLX', '[PIF]��Ʒת�ó�������', 1, '01', '����ϵͳ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPZRCSLX', '[PIF]��Ʒת�ó�������', 2, '02', '����֤ȯ��˾��̨�г�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPZRCSLX', '[PIF]��Ʒת�ó�������', 3, '03', '���뼰������ڼ�ܲ�������Ľ��׳���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPZRCSLX', '[PIF]��Ʒת�ó�������', 4, '04', '�ط���������Ľ��׳���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPZRCSLX', '[PIF]��Ʒת�ó�������', 99, '99', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPZTBZ', '[PIF]��Ʒ״̬��ʶ', 1, '1', '�Ǽ�δ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPZTBZ', '[PIF]��Ʒ״̬��ʶ', 2, '2', '��Ʒ�ѵǼ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPZTBZ', '[PIF]��Ʒ״̬��ʶ', 3, '3', 'δ�ύ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPZTBZ', '[PIF]��Ʒ״̬��ʶ', 4, '4', '���������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPZTBZ', '[PIF]��Ʒ״̬��ʶ', 5, '5', '����������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPZTBZ', '[PIF]��Ʒ״̬��ʶ', 6, '6', '��Ʒ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPZTBZ', '[PIF]��Ʒ״̬��ʶ', 7, '7', '�ϼ�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPZTBZ', '[PIF]��Ʒ״̬��ʶ', 8, '8', '��Ʒ���ϼ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPZT_OTC', '[PIF]OTC��Ʒ״̬', 1, '1', '1-ļ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPZT_OTC', '[PIF]OTC��Ʒ״̬', 2, '2', '2-��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPZT_OTC', '[PIF]OTC��Ʒ״̬', 3, '3', '3-����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPZT_OTC', '[PIF]OTC��Ʒ״̬', 4, '4', '4-ͣ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_C_SF', '[PIF]�Ƿ�', 0, 'N', 'N-��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_C_SF', '[PIF]�Ƿ�', 1, 'Y', 'Y-��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_DFBS', '[PIF]������ʶ', 1, '01', '�����ŷ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_DFBS', '[PIF]������ʶ', 2, '02', '���ӹ�˾����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_DFBS', '[PIF]������ʶ', 3, '03', '����������˾', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_DTBZ', '[PIF]��Ͷ��־', 1, '1', '1-����Ͷ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_DXBZ', '[PIF]������־', 0, '0', '0-Ĭ�Ϸ�ʽ(�ɴ���)', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_DXBZ', '[PIF]������־', 1, '1', '1-���ɴ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_DZHT', '[PIF]���Ӻ�ͬ', 0, '0', '0-�����ͬ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_DZHT', '[PIF]���Ӻ�ͬ', 1, '1', '1-���Ӻ�ͬ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_DZHT', '[PIF]���Ӻ�ͬ', 2, '2', '2-ֽ�ʺ�ͬ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_DZHTBS', '[PIF]���Ӻ�ͬ����', 0, '0', '0-Ĭ�Ϸ�ʽ(����)', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_FEBZ', '[PIF]���/�ݶ��־', 1, 'M', 'M-���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_FEBZ', '[PIF]���/�ݶ��־', 2, 'S', 'S-�ݶ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_FPYZ', '[PIF]����ԭ��', 1, '1', '�Ƚ��ȳ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_FPYZ', '[PIF]����ԭ��', 2, '2', '����ȳ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_GGBDLB', '[PIF]�ҹ�������', 0, '00', '����������ƽ���֤ȯ����ָ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_GGBDLB', '[PIF]�ҹ�������', 1, '01', '��������ƽ���֤ȯ����ָ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_GGBDLB', '[PIF]�ҹ�������', 2, '02', '����ϵͳ���Ʋ�Ʒ����ָ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_GGBDLB', '[PIF]�ҹ�������', 3, '03', '�ط��Խ��׳������ƽ��ײ�Ʒ����ָ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_GGBDLB', '[PIF]�ҹ�������', 4, '04', '���ʼ���ָ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_GGBDLB', '[PIF]�ҹ�������', 5, '05', '���ʼ���ָ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_GGBDLB', '[PIF]�ҹ�������', 6, '06', '���������ָ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_GGBDLB', '[PIF]�ҹ�������', 7, '07', '������Ʒ����ָ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_GGBDLB', '[PIF]�ҹ�������', 99, '99', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_GGBDLX', '[PIF]�ҹ��������', 1, '1', 'Ȩ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_GGBDLX', '[PIF]�ҹ��������', 2, '2', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_GGBDLX', '[PIF]�ҹ��������', 3, '3', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_GGBDLX', '[PIF]�ҹ��������', 4, '4', '������Ʒ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_GGBDMC', '[PIF]�ҹ��������', 1, '1', '�������л�׼����3mth', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_GGBDMC', '[PIF]�ҹ��������', 2, '2', '����300ָ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_HBMD', '[PIF]�ڰ�����', 0, '0', '0-������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_HBMD', '[PIF]�ڰ�����', 1, '1', '1-���ú�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_HBMD', '[PIF]�ڰ�����', 2, '2', '2-���ð�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_HBZL', '[PIF]��������', 1, '01', '01-�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_HBZL', '[PIF]��������', 2, '02', '02-����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_HBZL', '[PIF]��������', 3, '03', '03-�۱�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_HTQSPC', '[PIF]��ͬǩ������', 0, '0', '0-��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_HTQSPC', '[PIF]��ͬǩ������', 1, '1', '1-��Ҫ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JGKHCWYQLX', '[PIF]�����ͻ�����Ҫ������', 0, '00', '���ע���ʱ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JGKHCWYQLX', '[PIF]�����ͻ�����Ҫ������', 1, '01', '��;��ʲ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JJLB', '[PIF]�������', 0, '0', '0-�ɳ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JJLB', '[PIF]�������', 1, '1', '1-�Ƚ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JJLB', '[PIF]�������', 2, '2', '2-��ֵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JJLB', '[PIF]�������', 3, '3', '3-����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JJSSTA', '[PIF]��������TA', 98, '98', '����98TA', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JJSSTA', '[PIF]��������TA', 99, '99', '����99TA', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JJZHZT', '[PIF]����ת��״̬', 0, '0', '0-��ת��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JJZHZT', '[PIF]����ת��״̬', 1, '1', '1-ֻ��ת��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JJZHZT', '[PIF]����ת��״̬', 2, '2', '2-ֻ��ת��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JJZHZT', '[PIF]����ת��״̬', 3, '2', '3-����ת��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JRCPZT', '[PIF]���ڲ�Ʒ�׶�', -1, 'Code5', '��ֹ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JRCPZT', '[PIF]���ڲ�Ʒ�׶�', 0, 'Code1', 'Ԥ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JRCPZT', '[PIF]���ڲ�Ʒ�׶�', 1, 'Code2', '�Ϲ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JRCPZT', '[PIF]���ڲ�Ʒ�׶�', 2, 'Code3', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JRCPZT', '[PIF]���ڲ�Ʒ�׶�', 3, 'Code4', '�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JRCPZT', '[PIF]���ڲ�Ʒ�׶�', 4, 'Code4', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JSFS', '[PIF]���շ�ʽ', 1, '1', 'ȫ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JSFS', '[PIF]���շ�ʽ', 2, '2', '�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JSGZMB', '[PIF]�������ģ��', 0, '0', '0-��׼����ģ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JSGZMB', '[PIF]�������ģ��', 1, '1', '1-����ƾ֤', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JXFS', '[PIF]��Ϣ��ʽ', 0, '0', '0-Ĭ�Ϸ�ʽ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JXFS', '[PIF]��Ϣ��ʽ', 1, '1', '1-9007����T+1������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JXFS', '[PIF]��Ϣ��ʽ', 2, '2', '2-9007����T+0������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JYQX', '[PIF]����Ȩ��', 1, '1', '�Ϲ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JYQX', '[PIF]����Ȩ��', 2, '2', '�깺', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JYQX', '[PIF]����Ȩ��', 3, '3', '���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JYQX', '[PIF]����Ȩ��', 101, '101', 'ԤԼ�Ϲ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JYQX', '[PIF]����Ȩ��', 201, '201', 'ԤԼ�깺', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JYQX', '[PIF]����Ȩ��', 301, '301', 'ԤԼ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JYQX', '[PIF]����Ȩ��', 401, '401', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JYQX', '[PIF]����Ȩ��', 402, '402', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JYQX', '[PIF]����Ȩ��', 403, '403', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JYQX', '[PIF]����Ȩ��', 404, '404', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JYQX', '[PIF]����Ȩ��', 405, '405', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JYQX', '[PIF]����Ȩ��', 406, '406', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JYQX', '[PIF]����Ȩ��', 407, '407', '�ɽ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JYQX', '[PIF]����Ȩ��', 408, '408', '�ɽ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JYS', '[PIF]������', 1, '01', '�Ϻ�֤ȯ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JYS', '[PIF]������', 2, '02', '����֤ȯ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JYS', '[PIF]������', 3, '03', 'ȫ�����м�ͬҵ�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JYS', '[PIF]������', 4, '04', '�й������ڻ�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JYS', '[PIF]������', 5, '05', '��Ʒ�ڻ�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JYS', '[PIF]������', 6, '06', '�������г�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JYS', '[PIF]������', 7, '07', '�Ϻ��ƽ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JYS', '[PIF]������', 8, '08', '�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JYS', '[PIF]������', 9, '09', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JYS', '[PIF]������', 10, '10', '��ͨ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JZWT', '[PIF]��ֹί��', 0, '0', '0-Ĭ�Ϸ�ʽ(����ֹ)', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_KFFS', '[PIF]�۷ѷ�ʽ', 1, '1', '�ڿ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_KFFS', '[PIF]�۷ѷ�ʽ', 2, '2', '���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_LCCPLX', '[PIF]��Ʋ�Ʒ����', 0, '0', '0-��ͨ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_LCCPLX', '[PIF]��Ʋ�Ʒ����', 1, '1', '1-�ֽ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_LCCPZLX', '[PIF]��Ʋ�Ʒ������', 0, '0', '0-�ֽ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_LLJSTS', '[PIF]���ʼ�������', 0, '0', '�����Ϣ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_LLJSTS', '[PIF]���ʼ�������', 1, '1', '����Actual/360', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_LLJSTS', '[PIF]���ʼ�������', 2, '2', '����Actual/365', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_LLJSTS', '[PIF]���ʼ�������', 3, '3', '����30/360', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_MJFWF', '[PIF]��ļ����Χ��', 1, '1', '�����ʲ�����ƻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_MJFWF', '[PIF]��ļ����Χ��', 2, '2', '�ض��ʲ�����ƻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_MMJYMS', '[PIF]��������ģʽ', 1, 'Y', 'Y-�����̽���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_MMJYMS', '[PIF]��������ģʽ', 2, 'N', 'N-Э�齻��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_MMJYMS', '[PIF]��������ģʽ', 3, 'A', 'A-�����̺�Э�齻��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_MMJYMS', '[PIF]��������ģʽ', 4, 'S', 'S-�ݶ��Ϲ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_MMJYMS', '[PIF]��������ģʽ', 5, 'M', 'M-����Ϲ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_OTCFXDJ', '[PIF]OTC��Ʒ���յȼ�', 1, '001', '001-�ͷ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_OTCFXDJ', '[PIF]OTC��Ʒ���յȼ�', 2, '002', '002-�еͷ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_OTCFXDJ', '[PIF]OTC��Ʒ���յȼ�', 3, '003', '003-�з���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_OTCFXDJ', '[PIF]OTC��Ʒ���յȼ�', 4, '004', '004-�и߷���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_OTCFXDJ', '[PIF]OTC��Ʒ���յȼ�', 5, '005', '005-�߷���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_PYW', '[PIF]ƫ��λ', -1, '-1', 'ǰ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_PYW', '[PIF]ƫ��λ', 0, '0', '��ƫ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_PYW', '[PIF]ƫ��λ', 1, '1', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_QSRL', '[PIF]��������', 1, '01', '�Ϻ�֤ȯ����������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_QSRL', '[PIF]��������', 3, '03', '���м�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_QSZQ', '[PIF]��������', 0, 'T', 'T', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_QSZQ', '[PIF]��������', 1, 'T+1', 'T+1', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_QSZQ', '[PIF]��������', 2, 'T+2', 'T+2', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_QSZQ', '[PIF]��������', 3, 'T+3', 'T+3', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_QSZQ', '[PIF]��������', 4, 'T+4', 'T+4', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_QSZQ', '[PIF]��������', 5, 'T+5', 'T+5', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_QSZQ', '[PIF]��������', 6, 'T+6', 'T+6', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_QSZQ', '[PIF]��������', 7, 'T+7', 'T+7', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_QSZQ', '[PIF]��������', 8, 'T+8', 'T+8', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_QSZQ', '[PIF]��������', 9, 'T+9', 'T+9', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_QSZQ', '[PIF]��������', 10, 'T+10', 'T+10', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RGFS', '[PIF]�Ϲ���ʽ', 1, '1', '�ֽ��Ϲ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RGFS', '[PIF]�Ϲ���ʽ', 2, '2', 'һ���ӹ�Ʊ�Ϲ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RGMS', '[PIF]�Ϲ�ģʽ', 1, 'S', 'S-�ݶ��Ϲ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RGMS', '[PIF]�Ϲ�ģʽ', 2, 'M', 'M-����Ϲ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]����', 1, '01', '01', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]����', 2, '02', '02', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]����', 3, '03', '03', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]����', 4, '04', '04', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]����', 5, '05', '05', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]����', 6, '06', '06', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]����', 7, '07', '07', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]����', 8, '07', '08', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]����', 9, '09', '09', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]����', 10, '10', '10', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]����', 11, '11', '11', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]����', 12, '12', '12', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]����', 13, '13', '13', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]����', 14, '14', '14', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]����', 15, '15', '15', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]����', 16, '16', '16', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]����', 17, '17', '17', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]����', 18, '18', '18', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]����', 19, '19', '19', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]����', 20, '20', '20', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]����', 21, '21', '21', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]����', 22, '22', '22', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]����', 23, '23', '23', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]����', 24, '24', '24', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]����', 25, '25', '25', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]����', 26, '26', '26', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]����', 27, '27', '27', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]����', 28, '28', '28', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]����', 29, '29', '29', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]����', 30, '30', '30', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]����', 31, '31', '31', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQDW', '[PIF]���ڵ�λ', 1, 'D', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQDW', '[PIF]���ڵ�λ', 2, 'M', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQDW', '[PIF]���ڵ�λ', 3, 'Y', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQDW', '[PIF]���ڵ�λ', 4, 'Q', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQDW', '[PIF]���ڵ�λ', 5, 'H', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SF', '[PIF]�㷨', 1, '1', '���ڸ�Ϣ�㷨����Ӧ����Ϣ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SF', '[PIF]�㷨', 2, '2', '���ڸ�Ϣ�㷨����Ӧ����Ϣ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SF', '[PIF]�㷨', 4, '4', '������Ϣ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SF', '[PIF]�㷨', 5, '5', '����ȡϢ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SF', '[PIF]�㷨', 6, '6', '���ڼ�Ϣ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SF', '[PIF]�㷨', 7, '7', 'δ�������㷨', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SFFS', '[PIF]�շѷ�ʽ', 1, '1', 'ǰ���շ�', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SFFS', '[PIF]�շѷ�ʽ', 2, '2', '����շ�', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SFTGZR', '[PIF]�Ƿ��ṩת��', 1, '00', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SFTGZR', '[PIF]�Ƿ��ṩת��', 2, '01', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SHBAYJ', '[PIF]�Ƿ��������򱸰�ȷ�����', 0, '00', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SHBAYJ', '[PIF]�Ƿ��������򱸰�ȷ�����', 1, '01', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SPHBAJG', '[PIF]�����򱸰�����', 0, '00', '֤��ἰ���ɳ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SPHBAJG', '[PIF]�����򱸰�����', 1, '01', '�Ϻ�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SPHBAJG', '[PIF]�����򱸰�����', 2, '02', '���ڽ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SPHBAJG', '[PIF]�����򱸰�����', 3, '03', 'ȫ����С��ҵ�ɷ�ת��ϵͳ��˾', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SPHBAJG', '[PIF]�����򱸰�����', 4, '04', '֤ȯҵЭ�ἰ�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SPHBAJG', '[PIF]�����򱸰�����', 5, '05', '����ҵЭ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SPHBAJG', '[PIF]�����򱸰�����', 6, '06', '�ڻ�ҵЭ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SPHBAJG', '[PIF]�����򱸰�����', 21, '21', '����ἰ��ϵͳ�ڵ�λ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SPHBAJG', '[PIF]�����򱸰�����', 22, '22', '����ἰ��ϵͳ�ڵ�λ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SPHBAJG', '[PIF]�����򱸰�����', 23, '23', '�������м���ϵͳ�ڵ�λ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SPHBAJG', '[PIF]�����򱸰�����', 24, '24', '�ط�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SPHBAJG', '[PIF]�����򱸰�����', 25, '25', '�����Խ��׳���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SPHBAJG', '[PIF]�����򱸰�����', 99, '99', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SYLX', '[PIF]��������', 1, '1', '�Ǳ�����������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SYLX', '[PIF]��������', 2, '2', '������������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SYLX', '[PIF]��������', 3, '3', '�����̶�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SYLX', '[PIF]��������', 4, '4', '�޶��Լ����ʲ�����ƻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SYLX', '[PIF]��������', 5, '5', '�޶��ض��ʲ�����ƻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SYLX', '[PIF]��������', 6, '6', '�����ʲ�����ƻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SYLX', '[PIF]��������', 7, '7', 'ר���ʲ�����ƻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SYLX', '[PIF]��������', 8, '8', '�ض���ͻ��ʲ�����ƻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SYLX', '[PIF]��������', 9, '9', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SYLX', '[PIF]��������', 10, '10', '�Ǳ�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SYLXF', '[PIF]���������ͷ�', 1, '1', '�̶�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SYLXF', '[PIF]���������ͷ�', 2, '2', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SYYDFS', '[PIF]����Լ����ʽ', 0, '00', '�̶�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SYYDFS', '[PIF]����Լ����ʽ', 1, '01', '�ҹ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SYYDFS', '[PIF]����Լ����ʽ', 2, '02', '�̶�����ӹҹ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SYYDFS', '[PIF]����Լ����ʽ', 3, '03', '������ʽ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_TZFWF', '[PIF]��Ͷ�ʷ�Χ��', 1, '1', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_TZFWF', '[PIF]��Ͷ�ʷ�Χ��', 2, '2', 'ծȯ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_TZFWF', '[PIF]��Ͷ�ʷ�Χ��', 3, '3', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_TZFWF', '[PIF]��Ͷ�ʷ�Χ��', 4, '4', '�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_TZFWF', '[PIF]��Ͷ�ʷ�Χ��', 5, '5', 'FOF��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_TZFWF', '[PIF]��Ͷ�ʷ�Χ��', 6, '6', '��Ʊ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_TZFWF', '[PIF]��Ͷ�ʷ�Χ��', 7, '7', 'ָ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_TZFWF', '[PIF]��Ͷ�ʷ�Χ��', 8, '8', 'QDII��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_TZFWF', '[PIF]��Ͷ�ʷ�Χ��', 9, '9', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_TZLX', '[PIF]Ͷ������', 1, '1', 'Ȩ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_TZLX', '[PIF]Ͷ������', 2, '2', '�̶�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_TZLX', '[PIF]Ͷ������', 3, '3', '�ֽ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_TZLX', '[PIF]Ͷ������', 4, '4', '�ṹ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_TZLX', '[PIF]Ͷ������', 5, '5', '����Ʒ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_TZZLX', '[PIF]Ͷ��������', 1, '1', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_TZZLX', '[PIF]Ͷ��������', 2, '2', '�Ƚ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_TZZLX', '[PIF]Ͷ��������', 3, '3', '��ȡ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_WTFS', '[PIF]ί�з�ʽ', 0, '0', '0-����ί��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_WTFS', '[PIF]ί�з�ʽ', 1, '1', '1-�绰ί��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_WTFS', '[PIF]ί�з�ʽ', 2, '2', '2-פ��ί��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_WTFS', '[PIF]ί�з�ʽ', 3, '3', '3-Զ��ί��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_WTFS', '[PIF]ί�з�ʽ', 4, '4', '4-��̨ί��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_WTFS', '[PIF]ί�з�ʽ', 5, '5', '5-����ί��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_WTFS', '[PIF]ί�з�ʽ', 6, '6', '6-��֧ί��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_WTFS', '[PIF]ί�з�ʽ', 7, '7', '7-����ί��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_WTFS', '[PIF]ί�з�ʽ', 8, '8', '8-ETF����ί��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_WTFS', '[PIF]ί�з�ʽ', 9, '9', '9-�ֻ�ί��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_WTFS', '[PIF]ί�з�ʽ', 10, 'a', 'a-����ATM', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_WTFS', '[PIF]ί�з�ʽ', 11, 'b', 'b-���й�̨', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_WTFS', '[PIF]ί�з�ʽ', 12, 'd', 'd-���ڱ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_WTFS', '[PIF]ί�з�ʽ', 13, 'c', 'c-����ί��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_WTFS', '[PIF]ί�з�ʽ', 14, 'f', 'f-FIXί��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_WTFS', '[PIF]ί�з�ʽ', 15, 'x', 'x-�ֳ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_WTFS', '[PIF]ί�з�ʽ', 16, 'h', 'h-��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_WTFS', '[PIF]ί�з�ʽ', 17, 'm', 'm-����ί��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_WTFS', '[PIF]ί�з�ʽ', 18, 'n', 'n-���ί��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_WTFS', '[PIF]ί�з�ʽ', 19, 'w', 'w-������֤', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_YWCDBZ', '[PIF]ҵ�񳷵���־', 0, '0', '0-Ĭ�Ϸ�ʽ(����)', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_YWTBZ', '[PIF]Ԥί�б�־', 0, '0', '0-��ֹԤί��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_ZCJGJS', '[PIF]�ʲ��۸����', 0, '0', '0-����ֵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_ZCJGJS', '[PIF]�ʲ��۸����', 1, '1', '1-�����¼�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_ZCLX', '[PIF]�ʲ�����', 0, '00', '�м�֤ȯ����Ʊ�ݣ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_ZCLX', '[PIF]�ʲ�����', 1, '01', '���ء�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_ZCLX', '[PIF]�ʲ�����', 2, '02', '���乤��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_ZCLX', '[PIF]�ʲ�����', 3, '03', '����Ȩ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_ZCLX', '[PIF]�ʲ�����', 99, '99', '�����ʲ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_ZRFS', '[PIF]ת�÷�ʽ', 1, '1', 'Э�鷽ʽ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_ZRFS', '[PIF]ת�÷�ʽ', 2, '2', '���۷�ʽ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_ZRFS', '[PIF]ת�÷�ʽ', 3, '3', '���з�ʽ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_ZRFS', '[PIF]ת�÷�ʽ', 4, '4', '������ʽ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_ZXFS', '[PIF]���ŷ�ʽ', 0, '00', '���������õ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_ZXFS', '[PIF]���ŷ�ʽ', 1, '01', '�ǹ��������õ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_ZXFS', '[PIF]���ŷ�ʽ', 2, '02', '�����ʲ���Ѻ����Ѻ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_ZXFS', '[PIF]���ŷ�ʽ', 3, '03', '�������ʲ���Ѻ����Ѻ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_ZXFS', '[PIF]���ŷ�ʽ', 4, '04', '�ǹ������ʲ���Ѻ����Ѻ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_ZXFS', '[PIF]���ŷ�ʽ', 5, '05', '�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_ZXFS', '[PIF]���ŷ�ʽ', 6, '06', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PJYZGJYE', '��Ծ�·���߽��׶�', 1, '1', '10��Ԫ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PJYZGJYE', '��Ծ�·���߽��׶�', 2, '2', '10��Ԫ-30��Ԫ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PJYZGJYE', '��Ծ�·���߽��׶�', 3, '3', '30��Ԫ-100��Ԫ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PJYZGJYE', '��Ծ�·���߽��׶�', 4, '4', '100��Ԫ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PJYZGJYE', '��Ծ�·���߽��׶�', 5, '5', '��δͶ�ʹ����ڲ�Ʒ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PPD', 'ƥ���', 1, '1', '��ȫƥ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PPD', 'ƥ���', 2, '2', '�ж�ƥ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PPD', 'ƥ���', 3, '3', '��ȫ��ƥ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PSQD', '��������', 0, '0', 'δ��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PSQD', '��������', 1, '1', '�绰', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PSQD', '��������', 2, '2', '�����ʼ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PSQD', '��������', 4, '4', '΢��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PSQD', '��������', 8, '8', '����(95532)', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PSQD', '��������', 16, '16', 'IM', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PSQD', '��������', 32, '32', 'վ���ʼ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PSQD', '��������', 64, '64', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PSQD', '��������', 128, '128', '�ݷ���̸', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PSQD', '��������', 256, '256', '����Ͷ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PSQD', '��������', 512, '512', '����(1065)', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PSQD', '��������', 1024, '1024', '�ƶ�CRM', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QDCC', '�������', 1, '1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QDCC', '�������', 2, '2', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QDLX', '��������', 1, 'Code1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QDLX', '��������', 2, 'Code2', 'סլС��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QFFW', 'Ⱥ����Χ', 1, '1', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QFFW', 'Ⱥ����Χ', 2, '2', '��˾���ͻ�Ⱥ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QFFW', 'Ⱥ����Χ', 3, '4', 'Ӫҵ�����ͻ�Ⱥ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QFFW', 'Ⱥ����Χ', 4, '8', '���˿ͻ�Ⱥ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHCC_TJFS', '�ڻ��ֲ�_ͳ�Ʒ�ʽ', 1, '1', '���ͻ���ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHCC_TJFS', '�ڻ��ֲ�_ͳ�Ʒ�ʽ', 2, '2', '��Ӫҵ������ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHCC_TJFS', '�ڻ��ֲ�_ͳ�Ʒ�ʽ', 3, '3', '��������ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHCC_TJFS', '�ڻ��ֲ�_ͳ�Ʒ�ʽ', 4, '4', '��������־ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHCC_TJFS', '�ڻ��ֲ�_ͳ�Ʒ�ʽ', 5, '5', '��Ͷ����־ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHCC_TJFS', '�ڻ��ֲ�_ͳ�Ʒ�ʽ', 10, '10', '���ͻ�����ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHCC_TJFS', '�ڻ��ֲ�_ͳ�Ʒ�ʽ', 11, '11', '���ͻ�����ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHCC_TJFS', '�ڻ��ֲ�_ͳ�Ʒ�ʽ', 15, '15', '����������ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHCC_TJFS', '�ڻ��ֲ�_ͳ�Ʒ�ʽ', 16, '16', '�������·�ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHCC_TJFS', '�ڻ��ֲ�_ͳ�Ʒ�ʽ', 17, '17', '���������ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHCC_TJFS', '�ڻ��ֲ�_ͳ�Ʒ�ʽ', 18, '18', '����Դȯ��ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHCC_TJFS', '�ڻ��ֲ�_ͳ�Ʒ�ʽ', 19, '19', '���ͻ�����ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHGS', '�ڻ���˾', 5, '5', '��֤�ڻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHGS', '�ڻ���˾', 6, '6', '�¼��ڻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHJY_TJFS', '�ڻ�����_ͳ�Ʒ�ʽ', 1, '1', '���ͻ���ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHJY_TJFS', '�ڻ�����_ͳ�Ʒ�ʽ', 2, '2', '��Ӫҵ������ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHJY_TJFS', '�ڻ�����_ͳ�Ʒ�ʽ', 3, '3', '��������ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHJY_TJFS', '�ڻ�����_ͳ�Ʒ�ʽ', 4, '4', '��������־ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHJY_TJFS', '�ڻ�����_ͳ�Ʒ�ʽ', 5, '5', '��Ͷ����־ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHJY_TJFS', '�ڻ�����_ͳ�Ʒ�ʽ', 6, '6', '����ƽ��־ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHJY_TJFS', '�ڻ�����_ͳ�Ʒ�ʽ', 7, '7', '��Ʒ��ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHJY_TJFS', '�ڻ�����_ͳ�Ʒ�ʽ', 10, '10', '���ͻ�����ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHJY_TJFS', '�ڻ�����_ͳ�Ʒ�ʽ', 11, '11', '���ͻ�����ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHJY_TJFS', '�ڻ�����_ͳ�Ʒ�ʽ', 12, '12', '����������ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHJY_TJFS', '�ڻ�����_ͳ�Ʒ�ʽ', 13, '13', '�������·�ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHJY_TJFS', '�ڻ�����_ͳ�Ʒ�ʽ', 14, '14', '���������ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHJY_TJFS', '�ڻ�����_ͳ�Ʒ�ʽ', 15, '15', '����������ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHJY_TJFS', '�ڻ�����_ͳ�Ʒ�ʽ', 16, '16', '�������·�ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHJY_TJFS', '�ڻ�����_ͳ�Ʒ�ʽ', 17, '17', '���������ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHJY_TJFS', '�ڻ�����_ͳ�Ʒ�ʽ', 18, '18', '����Դȯ��ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHJY_TJFS', '�ڻ�����_ͳ�Ʒ�ʽ', 19, '19', '���ͻ�����ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHZJ_TJFS', '�ڻ��ʽ�_ͳ�Ʒ�ʽ', 1, '1', '���ͻ���ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHZJ_TJFS', '�ڻ��ʽ�_ͳ�Ʒ�ʽ', 2, '2', '��Ӫҵ������ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHZJ_TJFS', '�ڻ��ʽ�_ͳ�Ʒ�ʽ', 10, '10', '���ͻ�����ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHZJ_TJFS', '�ڻ��ʽ�_ͳ�Ʒ�ʽ', 11, '11', '���ͻ�����ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHZJ_TJFS', '�ڻ��ʽ�_ͳ�Ʒ�ʽ', 15, '15', '����������ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHZJ_TJFS', '�ڻ��ʽ�_ͳ�Ʒ�ʽ', 16, '16', '�������·�ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHZJ_TJFS', '�ڻ��ʽ�_ͳ�Ʒ�ʽ', 17, '17', '���������ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHZJ_TJFS', '�ڻ��ʽ�_ͳ�Ʒ�ʽ', 18, '18', '����Դȯ��ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHZJ_TJFS', '�ڻ��ʽ�_ͳ�Ʒ�ʽ', 19, '19', '���ͻ�����ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QJLB', '������', 1, 'Code1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QJLB', '������', 2, 'Code2', '�¼�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QJLB', '������', 3, 'Code3', '�ݼ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_FXCD', '���ճ̶�', 0, '0', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_FXCD', '���ճ̶�', 1, '1', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_JJCD', '��������̶�', 1, '1', 'һ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_JJCD', '��������̶�', 2, '2', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_JJCD', '��������̶�', 3, '3', '�ؼ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_KHLX', '����_�ͻ�����', 0, '0', 'Ǳ�ڿͻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_KHLX', '����_�ͻ�����', 1, '1', '�����ͻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_LDX', '������', 1, '1', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_LDX', '������', 2, '2', '��һ��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_LYLX', '������Դ����', 1, '1', '�ͻ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_LYLX', '������Դ����', 2, '2', '�ڲ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_LYQD', '����Ǽ���Դ����', 1, '1', '�˹�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_LYQD', '����Ǽ���Դ����', 2, '2', '�ٹ�ʽ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_LYQD', '����Ǽ���Դ����', 3, '3', '���緽ʽ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_LYQD', '����Ǽ���Դ����', 4, '4', '������ʽ�ɼ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_NBXQ', '�ڲ�����', 1, '1', '�ͻ�������Ϊ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_NBXQ', '�ڲ�����', 2, '2', '�ն˲�����Ϊ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_NBXQ', '�ڲ�����', 3, '3', '�г����з���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_NBXQ', '�ڲ�����', 4, '4', '���˾���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_SJLX', '��������', 1, 'NUMBER', 'NUMBER', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_SJLX', '��������', 2, 'VARCHAR2', 'VARCHAR2', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_TZMD', 'Ͷ��Ŀ��', 1, '1', 'Ͷ���ʲ���Ƹ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_TZMD', 'Ͷ��Ŀ��', 2, '2', 'Ϊ�ض�Ŀ�ĵĴ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_TZMD', 'Ͷ��Ŀ��', 3, '3', '���ض�Ŀ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_TZQX', 'Ͷ������', 1, '1', '���ڣ�5�����ϣ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_TZQX', 'Ͷ������', 2, '2', '���ڣ�1-5�꣩', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_TZQX', 'Ͷ������', 3, '3', '���ڣ�1�����£�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_WZ', '��վ', 1, '1', '��Ѷ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_WZ', '��վ', 2, '2', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_XQZT', '����״̬', 1, '1', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_XQZT', '����״̬', 2, '2', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_XQZT', '����״̬', 3, '3', '���ͨ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_XQZT', '����״̬', 4, '4', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_XQZT', '����״̬', 5, '5', '��Ӧ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_XQZT', '����״̬', 6, '6', '�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_XQZT', '����״̬', 7, '7', '�˻�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_XQZT', '����״̬', 8, '8', '�ر�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_XT', 'ϵͳ', 1, '1', '����Ӫҵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_XT', 'ϵͳ', 2, '2', '�ֻ�֤ȯ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_XT', 'ϵͳ', 3, '3', '�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_XT', 'ϵͳ', 4, '4', '�绰ί��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_YXJ', '���ȼ�', 0, '0', 'һ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_YXJ', '���ȼ�', 1, '1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QYLX', 'ǩԼ����', 0, '0', '����ǩԼ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QYLX', 'ǩԼ����', 1, '1', '��ʽǩԼ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QYMS', 'ǩԼģʽ', 1, '1', 'ǩԼͶ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QYMS', 'ǩԼģʽ', 2, '2', 'ǩԼ�Ŷ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QYMS', 'ǩԼģʽ', 3, '3', 'ǩԼ��Ʒ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QYXZ', '��ҵ����', 0, '0', '��Ӫ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QYXZ', '��ҵ����', 1, '1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QYXZ', '��ҵ����', 2, '2', '��Ӫ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QYXZ', '��ҵ����', 3, '3', '���̺���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QYXZ', '��ҵ����', 4, '4', '���̶���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QYXZ', '��ҵ����', 5, '5', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QYXZ', '��ҵ����', 6, '6', '��ͨ�ϻ���ҵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QYXZ', '��ҵ����', 7, '7', '������ͨ�ϻ���ҵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QYXZ', '��ҵ����', 8, '8', '���޺ϻ���ҵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QYXZ', '��ҵ����', 9, '9', '�Ƿ��˷Ǻϻ��ƴ�ҵͶ����ҵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QZKHHTYY', 'Ǳ�ڿͻ�����ԭ��', 1, 'Code1', '�Ǳ�Ӫҵ����Ͻ�ͻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QZKHHTYY', 'Ǳ�ڿͻ�����ԭ��', 2, 'Code2', '��ϵ�绰�ǿպ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QZLSKHYY', 'Ǳ����ʧ�ͻ�ԭ��', 1, '1', '�˺��ʽ�С��1000', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QZLSKHYY', 'Ǳ����ʧ�ͻ�ԭ��', 2, '2', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RISKLEVEL', '��Ѷ���յȼ�', 0, '0', 'δ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RISKLEVEL', '��Ѷ���յȼ�', 1, '1', '���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RISKLEVEL', '��Ѷ���յȼ�', 2, '2', '�ϵ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RISKLEVEL', '��Ѷ���յȼ�', 3, '3', '�е�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RISKLEVEL', '��Ѷ���յȼ�', 4, '4', '�ϸ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RISKLEVEL', '��Ѷ���յȼ�', 5, '5', '���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RISK_CODE', '���ռ���', 0, '0', 'δ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RISK_CODE', '���ռ���', 1, '1', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RISK_CODE', '���ռ���', 2, '2', '�и�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RISK_CODE', '���ռ���', 3, '3', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RISK_CODE', '���ռ���', 4, '4', '�е�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RISK_CODE', '���ռ���', 5, '5', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RSQCYSJ', '��˾ǰ��ҵʱ��', 1, '1', '8������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RSQCYSJ', '��˾ǰ��ҵʱ��', 2, '2', '6-8�꣨��8�꣩', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RSQCYSJ', '��˾ǰ��ҵʱ��', 3, '3', '4-6�꣨��6�꣩', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RSQCYSJ', '��˾ǰ��ҵʱ��', 4, '4', '2-4�꣨��4�꣩', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RSQCYSJ', '��˾ǰ��ҵʱ��', 5, '5', '2�����£���2�꣩', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RWFZLX', '�����������', 1, '1', 'ʵʱ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RWFZLX', '�����������', 2, '2', 'ҹ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RWFZLX', '�����������', 3, '3', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RWJB', '���񼶱�', 0, '0', '�ܹ�˾', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RWJB', '���񼶱�', 1, '1', '�ֹ�˾', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RWJB', '���񼶱�', 2, '2', 'Ӫҵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RWJB', '���񼶱�', 3, '3', '�Ŷ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RWJB', '���񼶱�', 4, '4', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RWLB', '�������', 1, '1', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RWLB', '�������', 2, '2', 'Ӫ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RWLB', '�������', 3, '3', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RWLX', '��������', 1, 'Code1', '����������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RWLX', '��������', 2, 'Code2', '��Ч������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RWLX', '��������', 3, 'Code3', 'Ǳ�ڿͻ�ת����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RWLX', '��������', 4, 'Code4', '�����ͻ��ʲ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RWLX', '��������', 9, 'Code9', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RWYQ', '����Ҫ��', 0, '0', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RWYQ', '����Ҫ��', 1, '1', 'ѡ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RWYQ', '����Ҫ��', 2, '2', '�Զ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RWZT', '����״̬', -1, '-1', '��ȡ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RWZT', '����״̬', 0, '0', 'δ��ʼ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RWZT', '����״̬', 1, '1', '�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RWZT', '����״̬', 2, '2', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYDLQX', '�����˴���Ȩ��', 1, '1', '��ͻ�����֤ȯ��˾��֤ȯ�г��Ļ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYDLQX', '�����˴���Ȩ��', 2, '2', '��ͻ�����֤ȯͶ�ʵĻ���֪ʶ�����������ס��ʽ��ȡ��ҵ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYDLQX', '�����˴���Ȩ��', 3, '3', '��ͻ�������֤ȯ�����йصķ��ɡ��������桢֤���涨�����ɹ����֤ȯ��˾���йع涨', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYDLQX', '�����˴���Ȩ��', 4, '4', '��ͻ�������֤ȯ��˾ͳһ�ṩ���о����漰��֤ȯͶ���йص���Ϣ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYDLQX', '�����˴���Ȩ��', 5, '5', '��ͻ�������֤ȯ��˾ͳһ�ṩ��֤ȯ����ڲ�Ʒ�����ƽ���ϼ��й���Ϣ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYDLQX', '�����˴���Ȩ��', 6, '6', '���ɡ����������֤���涨֤ȯ�����˿��Դ��µ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYDLQX', '�����˴���Ȩ��', 2, '2', '��ͻ�����֤ȯͶ�ʵĻ���֪ʶ�����������ס��ʽ��ȡ��ҵ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYDLQX', '�����˴���Ȩ��', 3, '3', '��ͻ�������֤ȯ�����йصķ��ɡ��������桢֤���涨�����ɹ����֤ȯ��˾���йع涨', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYDLQX', '�����˴���Ȩ��', 4, '4', '��ͻ�������֤ȯ��˾ͳһ�ṩ���о����漰��֤ȯͶ���йص���Ϣ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYDLQX', '�����˴���Ȩ��', 5, '5', '��ͻ�������֤ȯ��˾ͳһ�ṩ��֤ȯ����ڲ�Ʒ�����ƽ���ϼ��й���Ϣ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYDLQX', '�����˴���Ȩ��', 6, '6', '���ɡ����������֤���涨֤ȯ�����˿��Դ��µ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYDLQX', '�����˴���Ȩ��', 1, '1', '��ͻ�����֤ȯ��˾��֤ȯ�г��Ļ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYHGBZ', '��Ա�Ϲ��־', 0, 'Code1', '�Ϲ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYHGBZ', '��Ա�Ϲ��־', 1, 'Code2', '���Ϲ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYJBXX', '��Ա������Ϣ', 1, 'ZJBH', '֤�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYJBXX', '��Ա������Ϣ', 2, 'SJ', '��ϵ�ֻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYJBXX', '��Ա������Ϣ', 3, 'DH', '��ϵ�绰', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYJBXX', '��Ա������Ϣ', 4, 'EMAIL', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYJBXX', '��Ա������Ϣ', 5, 'LXDZ', '��ϵ��ַ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYJBXX', '��Ա������Ϣ', 6, 'JTDZ', '��ͥסַ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYJBXX', '��Ա������Ϣ', 7, 'YZBM', '�ʱ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYJBXX', '��Ա������Ϣ', 8, 'HTLX', 'ǩ���ͬ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYJBXX', '��Ա������Ϣ', 9, 'DLQX', '����Ȩ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYJBXX', '��Ա������Ϣ', 10, 'HDFW', '���Χ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYJBXX', '��Ա������Ϣ', 11, 'BYYX', '��ҵԺУ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYJBXX', '��Ա������Ϣ', 12, 'XL', 'ѧ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYJBXX', '��Ա������Ϣ', 13, 'XW', 'ѧλ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYJBXX', '��Ա������Ϣ', 14, 'XZ', 'ѧϰ��ʽ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYJBXX', '��Ա������Ϣ', 15, 'XXZY', '��ѧרҵ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYJBXX', '��Ա������Ϣ', 16, 'CSRQ', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYJBXX', '��Ա������Ϣ', 17, 'ZZMM', '������ò', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYJBXX', '��Ա������Ϣ', 18, 'PROVINCE', 'ʡ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYJBXX', '��Ա������Ϣ', 19, 'CITY', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYJBXX', '��Ա������Ϣ', 20, 'SEC', '����Ͻ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYJBXX', '��Ա������Ϣ', 21, 'ZP', '��Ƭ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYKHFL', '��Ա���˷���', 1, '1', '��ʽԱ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYKHFL', '��Ա���˷���', 2, '2', 'ǰ̨��Ա', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYKHFL', '��Ա���˷���', 4, '4', '��̨��Ա', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYKHFL', '��Ա���˷���', 8, '8', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYLB', '��Ա���', 1, '1', '������', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYLB', '��Ա���', 2, '2', 'Ӫ����', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYLB', '��Ա���', 4, '4', '����', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYLBLX', '��Ա�������', 1, '1', 'רְ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYLBLX', '��Ա�������', 2, '2', '�ⲿ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYLBLX', '��Ա�������', 3, '3', '�ڲ�Ա��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYLBLX', '��Ա�������', 4, '4', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYWYXX', '��ԱΨһ��Ϣ', 1, 'ZJBH', '֤�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYWYXX', '��ԱΨһ��Ϣ', 2, 'RYXM', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYWYXX', '��ԱΨһ��Ϣ', 3, 'ORGID', 'Ӫҵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYXM', '��Ա����', 1, '1', '��Ա��Ա����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 1, '1', '������Ƭ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 2, '2', '����֤��_����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 3, '3', '��ҵ֤��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 6, '6', 'ǩԼ��ͬ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 8, '8', '����֤��_����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 9, '9', 'ѧλ֤��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 20, '20', 'ί����Ȩ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 21, '21', 'ת���ͻ���Ȩ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 22, '22', '�ͻ��ҽ�ȷ�ϵ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 23, '23', '�ͻ����ȷ�ϵ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 24, '24', '�ͻ��ҽ�ȷ�ϵ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 30, '30', '�ɼ�֤-֤ȯ�г�����֪ʶ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 31, '31', '�ɼ�֤-֤ȯ���������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_LDX', '������', 3, '3', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 32, '32', '�ɼ�֤-֤ȯ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 33, '33', '�ɼ�֤-֤ȯͶ�ʷ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 34, '34', '�ɼ�֤-֤ȯͶ�ʻ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 36, '36', '�ɼ�֤-֤ȯ�г�������ר�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 37, '37', '�ɼ�֤-֤ȯ����ҵ��Ӫ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 38, '38', '�ɼ�֤-�ڻ����ɷ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 39, '39', '�ɼ�֤-�ڻ��г�����֪ʶ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 40, '40', '�ɼ�֤-�ڻ�Ͷ�ʷ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 41, '41', '�ɼ�֤-֤ȯͶ�ʻ������֪ʶ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 42, '42', '�ɼ�֤-�����ɷ��桢ְҵ������ҵ��淶', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 43, '43', '�ɼ�֤-֤ȯ�г��������ɷ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 44, '44', '�ɼ�֤-�����г�����֪ʶ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 45, '45', '�ɼ�֤-����ר���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 46, '46', '�ɼ�֤-˽ļ��ȨͶ�ʻ��𣨺���ҵͶ�ʻ��𣩻���֪ʶ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 47, '47', '�ɼ�֤-֤ȯ֪ʶ�ۺϿ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 48, '48', '�ɼ�֤-Ͷ������ҵ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 49, '49', '�ɼ�֤-����֤ȯ�о�����ҵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 50, '50', '�ɼ�֤-֤ȯͶ�ʹ���ҵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 51, '51', '�ɼ�֤-ע�����Ͷ�ʷ���ʦ��CIIA��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 52, '52', '�ɼ�֤-����֤ȯ���ڻ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 53, '53', '�ɼ�֤-���ʦ���м�������ְ�ƣ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 54, '54', '�ɼ�֤-���մ������ʸ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 55, '55', '�ɼ�֤-��ƴ�ҵ�ʸ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 60, '60', 'ǩԼ�ֳ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 61, '61', '�ƶ�ǩ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 62, '62', '�ֳ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 79, '79', '�ɼ�֤-���м䱾���г�����Ա����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 80, '80', '�ɼ�֤-ծȯ�йܽ���ҵ���ʸ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 81, '81', '�ɼ�֤-�Ǽ��йܼ���ȯ�������ҵ���ʸ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 82, '82', '�ɼ�֤-����֤ȯ��Ѻ�Ǽ�ҵ���ʸ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 83, '83', '�ɼ�֤-��ƴ�ҵ�ʸ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 84, '84', '�ɼ�֤-����ע���ڲ����ʦ��CIA��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 85, '85', '�ɼ�֤-ע����ʦ��CPA��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 86, '86', '�ɼ�֤-����ע����Ϣϵͳ���ʦ��CISA��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 87, '87', '�ɼ�֤-ע����ʦ��CPA������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 88, '88', '�ɼ�֤-����˾������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 89, '89', '�ɼ�֤-������ڷ���ʦ��CFA������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 90, '90', '�ɼ�֤-֤ȯ��˾�Ϲ������Աʤ����������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 91, '91', '�ɼ�֤-֤ȯ��˾�߼�������Ա���ʲ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 501, '501', '֤ȯ����ҵ��Ӫ���ʸ�֤��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 502, '502', '�����ƽ������ʸ�֤��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 504, '504', '�ڻ�Ӫ��֤��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 508, '508', '֤ȯ������֤��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 516, '516', '֤ȯͶ����ѯ(����)֤��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 532, '532', 'һ��֤ȯҵ��֤��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 564, '564', '����Ͷ�ʹ���֤��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 5128, '5128', '֤ȯͶ����ѯҵ��(����ʦ)֤��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 5256, '5256', '֤ȯͶ����ѯҵ��(Ͷ�ʹ���)֤��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 5512, '5512', 'AFP��������ƹ滮ʦ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 51024, '51024', 'CFP����ƹ滮ʦ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 52048, '52048', 'CFA��������ڷ���ʦ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 54096, '54096', 'CIIA��ע�����Ͷ�ʷ���ʦ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 58192, '58192', '�ڻ�Ͷ����ѯ�ʸ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 516384, '516384', '���������ʸ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', 'Ӱ������', 532768, '532768', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYZBXZ', '��Ա�ڱ�����', 1, '1', '��ʽְ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYZBXZ', '��Ա�ڱ�����', 2, '2', '��ʱ�ù�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYZBXZ', '��Ա�ڱ�����', 3, '3', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYZBXZ', '��Ա�ڱ�����', 4, '4', 'CICC', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYZGZT', '��Ա�ڸ�״̬', -1, '-1', 'ɾ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYZGZT', '��Ա�ڸ�״̬', 0, '0', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYZGZT', '��Ա�ڸ�״̬', 1, '1', '��ְ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYZGZT', '��Ա�ڸ�״̬', 3, '3', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYZGZT', '��Ա�ڸ�״̬', 4, '4', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYZGZT', '��Ա�ڸ�״̬', 5, '5', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYZGZT', '��Ա�ڸ�״̬', 6, '6', '�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYZGZT', '��Ա�ڸ�״̬', 7, '7', '��˲�ͨ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYZGZT', '��Ա�ڸ�״̬', 8, '8', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYZGZT', '��Ա�ڸ�״̬', 10, '10', '��ͣʹ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYZT', '��Ա״̬', 1, 'Code1', '��ְ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYZT', '��Ա״̬', 2, 'Code2', '��ְ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYZT', '��Ա״̬', 3, 'Code3', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYZT', '��Ա״̬', 4, 'Code4', '�ݼ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RZLX', '��־����', 1, '''ZBTJ''', 'ָ��ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RZLX', '��־����', 2, '''SJTJ''', '����ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RZLX', '��־����', 3, '''JKDY''', '�ӿڵ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RZRQFXCSNL', '������ȯ���ճ�������', 1, '1', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RZRQFXCSNL', '������ȯ���ճ�������', 2, '2', '�Ƚ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RZRQFXCSNL', '������ȯ���ճ�������', 3, '3', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RZRQFXCSNL', '������ȯ���ճ�������', 4, '4', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RZRQFXCSNL', '������ȯ���ճ�������', 5, '5', 'ƽ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SCBK', '�г����', 1, '1', '���ڣ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SCBK', '�г����', 2, '2', '���ڣ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SCBK', '�г����', 3, '3', '�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SCBK', '�г����', 4, '4', '���ͨ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SCBK', '�г����', 5, '5', '�Ϻ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SCBK', '�г����', 6, '6', '�Ϻ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SCBK', '�г����', 7, '7', '����ͨ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SCBK', '�г����', 8, '8', '��ת��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SDXZB', '�ʵ���ָ��', 1, 'KH_ZZC', '�ͻ�_���ʲ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SDXZB', '�ʵ���ָ��', 2, 'KH_BNHSRJZC', '�ͻ�_���껦���վ��ʲ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SF', '[PUB]�Ƿ�', 0, '0', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SF', '[PUB]�Ƿ�', 1, '1', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SFKT', '�Ƿ�ͨ', 1, '1', '��ͨ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SFKT', '�Ƿ�ͨ', 2, '2', 'δ��ͨ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SFMS', '�շ�ģʽ', 1, '1', '��Ӷģʽ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SFMS', '�շ�ģʽ', 2, '2', '��Ա��ģʽ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SFTB', '�Ƿ�ͬ��', 0, '0', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SFTB', '�Ƿ�ͬ��', 1, '1', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SFYX', '�Ƿ���Ч', 1, '1', '��Ч', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SFYX', '�Ƿ���Ч', 2, '2', '��Ч', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SHBZ', '��˱�־', 1, 'Code1', '�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SHBZ', '��˱�־', 2, 'Code2', '�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SHBZ', '��˱�־', 3, 'Code3', '�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SHBZ', '��˱�־', 4, 'Code4', '��˲�ͨ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SHBZ', '��˱�־', 5, 'Code5', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SHBZ', '��˱�־', 6, 'Code6', '�ѷ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SHBZ', '��˱�־', 7, 'Code7', '�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SHBZ', '��˱�־', 8, 'Code8', '�ܾ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SHGX', '����ϵ', 1, '1', '��ż', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SHGX', '����ϵ', 2, '2', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SHGX', '����ϵ', 3, '3', 'ĸ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SHGX', '����ϵ', 4, '4', '��Ů', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SHGX', '����ϵ', 5, '5', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SHGX', '����ϵ', 6, '6', 'ͬ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SHGX', '����ϵ', 7, '7', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SHGX', '����ϵ', 8, '8', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SHZT', '���״̬', -1, '-1', 'ûͨ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SHZT', '���״̬', 0, '0', 'δ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SHZT', '���״̬', 1, '1', '�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SHZT', '���״̬', 2, '2', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SJDJ', '�¼��ȼ�', 0, '0', '�ǳ���Ҫ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SJDJ', '�¼��ȼ�', 1, '1', '��Ҫ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SJDJ', '�¼��ȼ�', 2, '2', '��ͨ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SJFSYY', '�¼�����ԭ��', 1, '1', '��֪��Υ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SJFSYY', '�¼�����ԭ��', 2, '2', '�ͻ�Ҫ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SJFSYY', '�¼�����ԭ��', 3, '3', '�Ĵ��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SJFSYY', '�¼�����ԭ��', 4, '4', '�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SJFSYY', '�¼�����ԭ��', 5, '5', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SJLX', '�Ծ�����', 1, '1', '����1', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SJLX', '�Ծ�����', 2, '2', '����2', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SJLX', '�Ծ�����', 4, '4', '����3', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SJLX', '�Ծ�����', 8, '8', '����4', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SJLX_QR', '��������', 1, 'NUMBER', 'NUMBER', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SJLX_QR', '��������', 2, 'VARCHAR2', 'VARCHAR2', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SMCPLX', '˽ļ��Ʒ����', 1, '1', '������˽ļ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SMCPLX', '˽ļ��Ʒ����', 2, '2', '�ṹ��˽ļ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SMCPLX', '˽ļ��Ʒ����', 3, '3', '�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SMCPLX', '˽ļ��Ʒ����', 4, '4', '������Ʒ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SMCPLX', '˽ļ��Ʒ����', 5, '5', 'PE���Ʒ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SMCPLX', '˽ļ��Ʒ����', 6, '6', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SMYY', '˯��ԭ��', 1, '1', '�ʽ�С��1000', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SMYY', '˯��ԭ��', 2, '2', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SOP_FXJB', '������ȨͶ���߼���', 1, '00A', 'һ��Ͷ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SOP_FXJB', '������ȨͶ���߼���', 2, '0AA', '����Ͷ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SOP_FXJB', '������ȨͶ���߼���', 3, 'AAA', '����Ͷ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SOP_JYLX', '������Ȩ��������', 1, '1', '���뿪��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SOP_JYLX', '������Ȩ��������', 2, '2', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SOP_JYLX', '������Ȩ��������', 3, '3', '����ƽ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SOP_JYLX', '������Ȩ��������', 4, '4', '����ƽ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SOP_JYLX', '������Ȩ��������', 5, '5', '���ҿ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SOP_JYLX', '������Ȩ��������', 6, '6', '����ƽ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SOP_JYLX', '������Ȩ��������', 99, '99', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SOP_MMFX', '��������', 1, '1', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SOP_MMFX', '��������', 2, '2', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SOP_QQLX', '������Ȩ��Ȩ����', 1, 'C', '�Ϲ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SOP_QQLX', '������Ȩ��Ȩ����', 2, 'P', '�Ϲ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SRSP', '����ˮƽ', 1, '3000', '3000����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SRSP', '����ˮƽ', 2, '3000-5000', '3000-5000', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SRSP', '����ˮƽ', 3, '5000-10000', '5000-10000', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SRSP', '����ˮƽ', 4, '10000-15000', '10000-15000', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SRSP', '����ˮƽ', 5, '15000', '15000����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SRTXLX', '������������', 1, '1', 'Ҫ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SRTXLX', '������������', 2, '2', '�չ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SRXMLB', '������Ŀ���', 1, '1', 'Լ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SRXMLB', '������Ŀ���', 2, '2', '��Ʊ��Ѻ�ع�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SRXMLB', '������Ŀ���', 5, '5', '�йܲ�Ʒ˽ļPB����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SRXMLB', '������Ŀ���', 6, '6', '�ʹܶ���ҵ��ֳ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SRXMLB', '������Ŀ���', 7, '7', '����ҵ��ֳ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SRXMLB', '������Ŀ���', 8, '8', '��̨ҵ��ֳ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SRXMLB', '������Ŀ���', 9, '9', 'Ͷ��ҵ��ֳ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SRXMLB', '������Ŀ���', 10, '10', '�ṹ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SRXMLB', '������Ŀ���', 11, '11', '������Ȩ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SRXMLB', '������Ŀ���', 12, '12', '����ƾ֤_������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SRXMLB', '������Ŀ���', 13, '13', '�ʲ�֤ȯ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SRXMLB', '������Ŀ���', 14, '14', '��Ʊ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SXTJFZ', 'ɸѡ��������', 1, '1', '�ͻ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SXTJFZ', 'ɸѡ��������', 2, '2', '�ʲ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SXTJFZ', 'ɸѡ��������', 3, '3', '��Ʊ�ֲ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SXTJFZ', 'ɸѡ��������', 4, '4', '��Ʊ��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SXTJFZ', 'ɸѡ��������', 5, '5', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SXTJFZ', 'ɸѡ��������', 6, '6', '���ڲ�Ʒ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SXTJFZ', 'ɸѡ��������', 7, '7', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SXTJFZ', 'ɸѡ��������', 8, '8', '����Ͷ���ϻ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SXTJFZ', 'ɸѡ��������', 9, '9', '��ϵ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SYZT', '����״̬', 0, '0', 'δ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SYZT', '����״̬', 1, '1', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SYZT', '����״̬', 2, '2', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TCCSLX', '��ɲ�������', 1, 'BXZDLC_KH', '������������ɿͻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TCCSLX', '��ɲ�������', 2, 'BXZDLC_RY', '���������������Ա', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TCCSLX', '��ɲ�������', 3, 'BZNDJRY', '������ݼ���Ա', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TCCSLX', '��ɲ�������', 4, 'BZNDJKH', '������ݼ��ͻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TCCSLX', '��ɲ�������', 5, 'KTCKH05', '05��ǰ����ɿͻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TCCSLX', '��ɲ�������', 6, 'KTCRY05', '05��ǰ�������Ա', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TCCSLX', '��ɲ�������', 7, 'TSTGRY', '����Ͷ�ʹ�����Ա', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TCCSLX', '��ɲ�������', 8, 'KHQHGSBL', '����ͻ��ڻ���˾����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TCCSLX', '��ɲ�������', 9, 'QYYXBTC', 'ǧ1���²���ɿͻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TCCSLX', '��ɲ�������', 10, 'BGBTC', 'B�ɲ���ɿͻ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TCGZ', '��ɹ���', 1, '1', '���ڲ�Ʒ��ɱ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TCGZ', '��ɹ���', 2, '2', '2.5����������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TCGZ', '��ɹ���', 3, '3', '���ܴ�ҵ�ʸ�֤����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TCGZ', '��ɹ���', 4, '4', '�ص���ڲ�Ʒ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TCGZ', '��ɹ���', 5, '5', '���в�Ʒ��ɹ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TCGZ', '��ɹ���', 6, '6', '���������ɹ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TCGZ', '��ɹ���', 7, '7', '���ڲ�Ʒ�ֲ����(��)', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TCGZ', '��ɹ���', 8, '8', '���в�Ʒ��ɹ���(��)', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TCGZ', '��ɹ���', 9, '9', '������ɹ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TCGZ', '��ɹ���', 10, '10', '���ڲ�Ʒ�ֲַ��ʣ��£�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TCGZ', '��ɹ���', 11, '11', '���в�Ʒ���ʹ����£�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TCGZ', '��ɹ���', 12, '12', '���ղ�Ʒ���ʹ����£�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TCGZ', '��ɹ���', 13, '13', '���ղ�Ʒ��ɹ����£�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TCLX', '�������', 1, 'YTCSR_PTZH', '��Ȩ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TCLX', '�������', 4, 'YTCSR_XYZH', '�����˻����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TCLX', '�������', 5, 'YTCSR_GGQQ', '������Ȩ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TDCYKHCS', '�Ŷӳ�Ա���˲���', 1, '1', '�ɱ�Ȩ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TDCYKHCS', '�Ŷӳ�Ա���˲���', 2, '2', '����Ȩ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TDKHCS', '�Ŷӿ��˲���', 1, '1', '����Ȩ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TDKHFS', '�Ŷӿ��˷�ʽ', 1, '1', '�Ŷӿ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TDKHFS', '�Ŷӿ��˷�ʽ', 2, '2', '���˿���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TDLB', '�Ŷ����', 0, '0', '�޶ӳ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TDLB', '�Ŷ����', 1, '1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TDLB', '�Ŷ����', 2, '2', '�ر�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TGFWXM', 'Ͷ�˷�����Ŀ', 11, '�о�����', '�о�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TGFWXM', 'Ͷ�˷�����Ŀ', 12, '�˻�ָ��', '�˻�ָ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TGFWXM', 'Ͷ�˷�����Ŀ', 13, 'Ͷ����Ͻ���', 'Ͷ����Ͻ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TGFWXM', 'Ͷ�˷�����Ŀ', 14, '��������', '���������Ͳ�λ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TGFWXM', 'Ͷ�˷�����Ŀ', 15, '�����ж�', '�����ж�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TGFWXM', 'Ͷ�˷�����Ŀ', 16, '�ȵ���׷��', '�ȵ���׷��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TGFWXM', 'Ͷ�˷�����Ŀ', 17, '������Ϣ', '������Ϣ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TGFWXM', 'Ͷ�˷�����Ŀ', 18, '���߽��', '���߽��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TGFWXM', 'Ͷ�˷�����Ŀ', 19, '��ָ�ڻ�����', '��ָ�ڻ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TGFWXM', 'Ͷ�˷�����Ŀ', 20, '������ȯָ��', '������ȯָ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TGFWXM', 'Ͷ�˷�����Ŀ', 21, '��ȹ�ͨ', '��ȹ�ͨ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TGFWXM', 'Ͷ�˷�����Ŀ', 22, '��׼����Ʒ', '��׼����Ʒ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TGFWXM', 'Ͷ�˷�����Ŀ', 91, '����', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TGQYLX', 'Ͷ��ǩԼ����', 0, '�й̶�����', '�й̶�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TGQYLX', 'Ͷ��ǩԼ����', 1, '�޹̶�����', '�޹̶�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TGQYLX', 'Ͷ��ǩԼ����', 2, '����Э��', '����Э��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TGQYLX', 'Ͷ��ǩԼ����', 3, '����Э��', '����Э��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TGQYLX', 'Ͷ��ǩԼ����', 4, 'Ӷ��', 'Ӷ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TGQYLX', 'Ͷ��ǩԼ����', 5, '�ֽ�', '�ֽ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJFS', 'ͳ�Ʒ�ʽ', 1, 'Code 1', '���ͻ���ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJFS', 'ͳ�Ʒ�ʽ', 2, 'Code 2', '��Ӫҵ������ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJFS', 'ͳ�Ʒ�ʽ', 3, 'Code 3', '��������ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJFS', 'ͳ�Ʒ�ʽ', 4, 'Code 4', '��������־ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJFS', 'ͳ�Ʒ�ʽ', 5, 'Code 5', '��Ͷ����־ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJFS', 'ͳ�Ʒ�ʽ', 6, 'Code 6', '����ƽ��־ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJFS', 'ͳ�Ʒ�ʽ', 7, 'Code 7', '��Ʒ��ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJFS', 'ͳ�Ʒ�ʽ', 8, 'Code 8', '��������ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJFS', 'ͳ�Ʒ�ʽ', 9, 'Code 9', '���ͻ�����ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJFS', 'ͳ�Ʒ�ʽ', 10, 'Code 10', '���ͻ�����ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJFS', 'ͳ�Ʒ�ʽ', 11, 'Code 11', '���ͻ�����ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJFS', 'ͳ�Ʒ�ʽ', 12, 'Code 12', '����������ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJFS', 'ͳ�Ʒ�ʽ', 13, 'Code 13', '�������·�ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJFS', 'ͳ�Ʒ�ʽ', 14, 'Code 14', '���������ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJFS', 'ͳ�Ʒ�ʽ', 15, 'Code 15', '����������ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJFS', 'ͳ�Ʒ�ʽ', 16, 'Code 16', '�������·�ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJFS', 'ͳ�Ʒ�ʽ', 17, 'Code 17', '���������ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJFS', 'ͳ�Ʒ�ʽ', 18, 'Code 18', '����Դȯ��ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJFS', 'ͳ�Ʒ�ʽ', 19, 'Code 19', '���ʲ����ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJFS', 'ͳ�Ʒ�ʽ', 20, 'Code20', '���ͻ�����ͳ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJSD', 'ͳ��ʱ��', 1, '1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJSD', 'ͳ��ʱ��', 2, '2', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJSD', 'ͳ��ʱ��', 3, '3', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJSD', 'ͳ��ʱ��', 5, '5', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJSD', 'ͳ��ʱ��', 6, '6', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJSD', 'ͳ��ʱ��', 7, '7', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJSD', 'ͳ��ʱ��', 8, '8', '�ϼ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJSD', 'ͳ��ʱ��', 9, '9', '���1��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJSD', 'ͳ��ʱ��', 10, '10', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJSD2', 'ͳ������-����', 1, '1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJSD2', 'ͳ������-����', 2, '2', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJYFX_KHZQ', '��Ӫ����_��������', 2, '2', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJYFX_KHZQ', '��Ӫ����_��������', 3, '3', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJYFX_SYCJ', '��Ӫ����_���ò㼶', 0, '0', '�ܲ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJYFX_SYCJ', '��Ӫ����_���ò㼶', 1, '1', '�ֹ�˾', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJYFX_SYCJ', '��Ӫ����_���ò㼶', 2, '2', 'Ӫҵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJZQ_JYN', 'ͳ������_������', 1, '1', '��һ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJZQ_JYN', 'ͳ������_������', 2, '2', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJZQ_JYN', 'ͳ������_������', 3, '3', '��һ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJZQ_RYJN', 'ͳ������_���¼���', 0, '0', '�ۼ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJZQ_RYJN', 'ͳ������_���¼���', 1, '1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJZQ_RYJN', 'ͳ������_���¼���', 2, '2', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJZQ_RYJN', 'ͳ������_���¼���', 3, '3', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJZQ_RYJN', 'ͳ������_���¼���', 4, '4', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJZQ_YJN', 'ͳ������_�¼���', 1, '1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJZQ_YJN', 'ͳ������_�¼���', 2, '2', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJZQ_YJN', 'ͳ������_�¼���', 3, '3', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJZQ_YJNSN', 'ͳ������_�¼�������', 1, '1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJZQ_YJNSN', 'ͳ������_�¼�������', 2, '2', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJZQ_YJNSN', 'ͳ������_�¼�������', 3, '3', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJZQ_YJNSN', 'ͳ������_�¼�������', 4, '4', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJZQ_ZYN', 'ͳ������_������', 1, '1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJZQ_ZYN', 'ͳ������_������', 2, '2', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJZQ_ZYN', 'ͳ������_������', 3, '3', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJZQ_ZYN', 'ͳ������_������', 4, '4', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJZQ_ZYN', 'ͳ������_������', 5, '5', '���һ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJZQ_ZYN', 'ͳ������_������', 6, '6', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJZQ_ZYN', 'ͳ������_������', 7, '7', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJZS', '�Ƽ�ָ��', 1, '1', 'һ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJZS', '�Ƽ�ָ��', 2, '2', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJZS', '�Ƽ�ָ��', 3, '3', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJZS', '�Ƽ�ָ��', 4, '4', '�Ŀ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJZS', '�Ƽ�ָ��', 5, '5', '�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TMLB', '��Ŀ���', 1, '1', '�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TMLB', '��Ŀ���', 2, '2', '�г�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TSLB', 'Ͷ�����', 1, '1', '֤ȯ�ʻ���ҵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TSLB', 'Ͷ�����', 2, '2', '�����ʷ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TSLB', 'Ͷ�����', 3, '3', '���Ͻ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TSLB', 'Ͷ�����', 4, '4', '����ʽ����ҵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TSLB', 'Ͷ�����', 5, '5', '���������ҵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TSLB', 'Ͷ�����', 6, '6', '֤ȯ�ʻ���ҵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TSLB', 'Ͷ�����', 7, '7', '�����ʷ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TSLB', 'Ͷ�����', 8, '8', '���Ͻ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TSLB', 'Ͷ�����', 9, '9', '����ʽ����ҵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TSLB', 'Ͷ�����', 10, '10', '���������ҵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TSLB', 'Ͷ�����', 12, '12', '����̬������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TSLB', 'Ͷ�����', 13, '13', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TXLXDL', '�������ʹ���', 1, '1', '�ͻ��ػ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TXLXDL', '�������ʹ���', 2, '2', '�˻�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TXLXDL', '�������ʹ���', 3, '3', '�ͻ��ʲ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TXLXDL', '�������ʹ���', 4, '4', '�ֲ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TXLXDL', '�������ʹ���', 5, '5', '�ͻ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TXLXDL', '�������ʹ���', 6, '6', '�˻�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TYKDJ', '���鿨�ȼ�', 1, '1', '��ͨ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TYKDJ', '���鿨�ȼ�', 2, '2', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TYKDJ', '���鿨�ȼ�', 3, '3', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZCL_LHDC', '�����Գ�ҵ��Ͷ�ʲ���', 1, '1', 'ETF����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZCL_LHDC', '�����Գ�ҵ��Ͷ�ʲ���', 2, '2', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZCL_LHDC', '�����Գ�ҵ��Ͷ�ʲ���', 3, '3', '����������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZCL_LHDC', '�����Գ�ҵ��Ͷ�ʲ���', 4, '4', '������Ƶ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZCL_LHDC', '�����Գ�ҵ��Ͷ�ʲ���', 5, '5', '�Գ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZCL_LHDC', '�����Գ�ҵ��Ͷ�ʲ���', 6, '6', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZFS', '֪ͨ��ʽ', 1, '1', '����֪ͨ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZFS', '֪ͨ��ʽ', 2, '2', '�ʼ�֪ͨ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZFS', '֪ͨ��ʽ', 3, '3', '�绰֪ͨ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZFS', '֪ͨ��ʽ', 4, '4', '��д�����¼', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZFS', '֪ͨ��ʽ', 5, '5', '��֪ͨ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZHBZYYY', 'Ͷ�ʻر���Ҫ����', 1, '1', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZHBZYYY', 'Ͷ�ʻر���Ҫ����', 2, '2', '����������Ӫ��֤ȯͶ�������Ͷ����Ϊ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZHBZYYY', 'Ͷ�ʻر���Ҫ����', 3, '3', '���з�������������������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZHBZYYY', 'Ͷ�ʻر���Ҫ����', 4, '4', '�������ϻ�ҽ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZHBZYYY', 'Ͷ�ʻر���Ҫ����', 5, '5', '����ծ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZHBZYYY', 'Ͷ�ʻر���Ҫ����', 6, '6', '������Ϣ', 0, 0, null);
commit;
prompt 4000 records committed...
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZJY', 'Ͷ�ʾ���', 1, '1', '���ޣ������л��ںͶ��ڴ���⣬�һ���û������Ͷ�ʾ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZJY', 'Ͷ�ʾ���', 2, '2', 'һ�㣺�����л����˻��Ͷ��ڴ���⣬��������𡢱��յ���Ʋ�Ʒ������Ҫָ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZJY', 'Ͷ�ʾ���', 3, '3', '�ḻ���������Ʊ������Ȳ�Ʒ���ף��������Լ�����Ͷ�ʾ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZJY', 'Ͷ�ʾ���', 4, '4', '�ǳ��ḻ�������Ȩ֤���ڻ���ҵ��ȸ߷��ղ�Ʒ�Ľ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZNX', 'Ͷ������', 1, '1', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZNX', 'Ͷ������', 2, '2', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZNX', 'Ͷ������', 3, '3', 'һ��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZNX', 'Ͷ������', 4, '4', '��������һ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZNX', 'Ͷ������', 5, '5', '����������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZPZ', 'Ͷ��Ʒ��', 1, '1', 'ծȯ�����г�����ծȯ����ȹ̶�������Ͷ��', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZPZ', 'Ͷ��Ʒ��', 2, '2', '��Ʊ����ͻ���ƫ���ͻ����Ʊ�ͻ����Ͷ��', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZPZ', 'Ͷ��Ʒ��', 4, '4', '�ڻ���������ȯ', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZPZ', 'Ͷ��Ʒ��', 8, '8', '���ӻ�߷��ս��ڲ�Ʒ', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZPZ', 'Ͷ��Ʒ��', 16, '16', '������Ʒ', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZSYMB', 'Ͷ������Ŀ��', 1, '1', '�ʲ���ֵ���Ҳ�Ը��е��κ�Ͷ�ʷ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZSYMB', 'Ͷ������Ŀ��', 2, '2', '�����ܱ�֤����ȫ�����ں������ʱȽϵ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZSYMB', 'Ͷ������Ŀ��', 3, '3', '�����϶�����棬���Գе�һ����Ͷ�ʷ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZSYMB', 'Ͷ������Ŀ��', 4, '4', 'ʵ���ʲ����������Ը��е��ܴ��Ͷ�ʷ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZZDBGLX', 'Ͷ��ָ����������', 1, '1', '����滮����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZZDBGLX', 'Ͷ��ָ����������', 2, '2', '�ʲ����ñ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZZFL', 'Ͷ���߷���', 0, '0', '��ͨͶ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZZFL', 'Ͷ���߷���', 1, '1', 'רҵͶ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZZFL', 'Ͷ���߷���', 9, '9', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZZHMX', 'Ͷ�����ģ��', 1, '1', 'Markowitzģ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZZHMX', 'Ͷ�����ģ��', 2, '2', '���󷽲�ģ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZZLY', 'Ͷ������Դ', 0, '0', '��ͨͶ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZZLY', 'Ͷ������Դ', 1, '1', '����������ͨͶ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZZLY', 'Ͷ������Դ', 2, '2', 'רҵͶ����I��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZZLY', 'Ͷ������Դ', 3, '3', 'רҵͶ����II��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZZLY', 'Ͷ������Դ', 4, '4', 'רҵͶ����III��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZZS', 'Ͷ��֪ʶ', 1, '1', '���ھ��òƻ�����ڲ�ƷͶ�ʹ�����������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZZS', 'Ͷ��֪ʶ', 2, '2', '���ھ��û�ƻ����ѧʿ����ѧλ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZZS', 'Ͷ��֪ʶ', 3, '3', 'ע����ʦ֤���ע����ڷ���ʦ֤��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZZS', 'Ͷ��֪ʶ', 4, '4', '�Ҳ����������κ�һ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WDLX', '��������', 1, 'Code1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WDLX', '��������', 2, 'Code2', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WDLX', '��������', 3, 'Code3', 'һ��֧��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WDLX', '��������', 4, 'Code4', '����֧��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WJYWFL', '�ʾ�ҵ�����', 1, '1', '��������ѵ����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WJYWFL', '�ʾ�ҵ�����', 2, '2', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WTFS', 'ί�з�ʽ', 1, '1', '�绰', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WTFS', 'ί�з�ʽ', 2, '2', '�ſ�', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WTFS', 'ί�з�ʽ', 4, '4', '�ȼ�', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WTFS', 'ί�з�ʽ', 8, '8', '��̨', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WTFS', 'ί�з�ʽ', 16, '16', 'Զ��', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WTFS', 'ί�з�ʽ', 32, '32', '������', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WTFS', 'ί�з�ʽ', 64, '64', '�ֻ�', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WTFS', 'ί�з�ʽ', 128, '128', '���۳���', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WTFS', 'ί�з�ʽ', 256, '256', '���ߵ绰', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WTFS', 'ί�з�ʽ', 512, '512', '��������', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WTFS', 'ί�з�ʽ', 1024, '1024', '��������', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WTFS', 'ί�з�ʽ', 2048, '2048', '�ֳ�ί��', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WTFS', 'ί�з�ʽ', 8192, '8192', '����ί��', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WTLB', 'ί�����', 1, '1', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WTLB', 'ί�����', 2, '2', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WTLB', 'ί�����', 3, '3', '���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WTLB', 'ί�����', 6, '6', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WTLB', 'ί�����', 16, '16', '�͹�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WTSBJG', 'ί���걨���', 0, '0', 'δ�걨', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WTSBJG', 'ί���걨���', 1, '1', '�����걨', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WTSBJG', 'ί���걨���', 2, '2', '���걨δ�ɽ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WTSBJG', 'ί���걨���', 3, '3', '�Ƿ�ί��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WTSBJG', 'ί���걨���', 4, '4', '�����ʽ���Ȩ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WTSBJG', 'ί���걨���', 5, '5', '���ֳɽ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WTSBJG', 'ί���걨���', 6, '6', 'ȫ���ɽ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WTSBJG', 'ί���걨���', 7, '7', '���ɲ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WTSBJG', 'ί���걨���', 8, '8', 'ȫ������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WTSBJG', 'ί���걨���', 9, '9', '����δ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XB', '�Ա�', 0, '0', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XB', '�Ա�', 1, '1', '��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XB', '�Ա�', 2, '2', 'Ů', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XCJSBZ', 'н����㲽��', 1, '1', '����ͬ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XCJSBZ', 'н����㲽��', 2, '2', 'ָ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XCJSBZ', 'н����㲽��', 3, '3', '��ɼ���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XCJSBZ', 'н����㲽��', 4, '4', 'н�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XCLB', 'н�����', 1, '1', '��������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XCLB', 'н�����', 2, '2', '���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XCLB', 'н�����', 3, '3', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XCLB', 'н�����', 4, '4', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XCLB', 'н�����', 5, '5', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XCLB', 'н�����', 6, '6', '˰��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XCLB', 'н�����', 7, '7', '�ۿ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XCLB', 'н�����', 8, '8', 'н��ϵ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XCYWLCZT', 'н��ҵ������״̬', 1, '1', '�Ŷ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XCYWLCZT', 'н��ҵ������״̬', 2, '2', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XCYWLCZT', 'н��ҵ������״̬', 3, '3', '�˶�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XCYWLCZT', 'н��ҵ������״̬', 4, '4', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XCYWLCZT', 'н��ҵ������״̬', 5, '5', '���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XCYWXL', 'н��ҵ������', 1, '1', 'Ӫ��', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XCYWXL', 'н��ҵ������', 2, '2', '����', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XGFK_FXJB', '���ռ���', 1, '1', '��ʾ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XGFK_FXJB', '���ռ���', 2, '2', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XGZT', '�޸�״̬', 1, '1', '�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XGZT', '�޸�״̬', 2, '2', '���ͨ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XLDM', 'ѧ������', 0, '0', 'δ֪', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XLDM', 'ѧ������', 1, '1', '��ʿ�о���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XLDM', 'ѧ������', 2, '2', '˶ʿ�о���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XLDM', 'ѧ������', 3, '3', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XLDM', 'ѧ������', 4, '4', '��ר', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XLDM', 'ѧ������', 5, '5', '��ר', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XLDM', 'ѧ������', 6, '6', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XLDM', 'ѧ������', 7, '7', '���м�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XLDM', 'ѧ������', 8, '8', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XMLX', '��Ŀ����', 1, '1', '��Ѷ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XMLX', '��Ŀ����', 2, '2', '���', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XMLX', '��Ŀ����', 3, '3', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XMLX', '��Ŀ����', 4, '4', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XMLX', '��Ŀ����', 5, '5', 'ģ���˻�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XMLX', '��Ŀ����', 6, '6', 'Ͷ�����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XMLX', '��Ŀ����', 7, '7', '��Ʊ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XMLX', '��Ŀ����', 8, '8', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XMLX', '��Ŀ����', 9, '9', '������Ŀ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQAH', '��Ȥ����', 1, '1', '��ʳ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQAH', '��Ȥ����', 2, '2', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQAH', '��Ȥ����', 3, '3', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQAH', '��Ȥ����', 4, '4', '��Ӱ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQAH', '��Ȥ����', 5, '5', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQAH', '��Ȥ����', 6, '6', 'Ϸ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQAH', '��Ȥ����', 7, '7', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQAH', '��Ȥ����', 8, '8', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQAH', '��Ȥ����', 9, '9', '׬Ǯ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQAH', '��Ȥ����', 10, '10', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQAH', '��Ȥ����', 11, '11', '��Ϸ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQAH', '��Ȥ����', 12, '12', '�滭', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQAH', '��Ȥ����', 13, '13', '�鷨', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQAH', '��Ȥ����', 14, '14', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQAH', '��Ȥ����', 15, '15', 'ʱ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQAH', '��Ȥ����', 16, '16', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQAH', '��Ȥ����', 17, '17', '�Ķ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQAH', '��Ȥ����', 18, '18', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQAH', '��Ȥ����', 19, '19', '�����˶�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQAH', '��Ȥ����', 20, '20', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQAH', '��Ȥ����', 21, '21', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQAH', '��Ȥ����', 22, '22', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQAH', '��Ȥ����', 23, '23', '�ڽ�', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQAH', '��Ȥ����', 24, '24', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQAH', '��Ȥ����', 25, '25', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQZT', '����״̬', 0, '0', 'δ�ύ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQZT', '����״̬', 1, '1', '������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQZT', '����״̬', 2, '2', '��˲�ͨ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQZT', '����״̬', 3, '3', '���ͨ��', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TSLB', 'Ͷ�����', 11, '11', '���׻�������', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQZT', '����״̬', 4, '4', '����', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQZT', '����״̬', 5, '5', '��Ӧ', 0, 0, null);
commit;
prompt 4144 records loaded
prompt Enabling triggers for TXTDM...
alter table TXTDM enable all triggers;
set feedback on
set define on
prompt Done.
