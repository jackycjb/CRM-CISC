prompt PL/SQL Developer import file
prompt Created on 2017年11月17日 by Administrator
set feedback off
set define off
prompt Disabling triggers for TXTDM...
alter table TXTDM disable all triggers;
prompt Loading TXTDM...
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDJSLX', '股东结算类型', 1, '1', '保证金帐户结算', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDJYQX', '股东交易权限', 1, '1', '基本交易权限', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDJYQX', '股东交易权限', 2, '2', '回购融资', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDJYQX', '股东交易权限', 4, '4', '回购融券', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDJYQX', '股东交易权限', 8, '8', 'ETF申赎', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDJYQX', '股东交易权限', 16, '16', '权证交易', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDJYQX', '股东交易权限', 32, '32', '三板报价转让', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDJYQX', '股东交易权限', 64, '64', '创业板', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDJYQX', '股东交易权限', 128, '128', '专业投资者债券', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDLB', '股东分类', 1, '1', '境内个人投资者', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDLB', '股东分类', 2, '2', '境内机构投资者', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDLB', '股东分类', 3, '3', '境外个人投资者', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDLB', '股东分类', 4, '4', '境外机构投资者', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDLB', '股东分类', 5, '5', '券商自营', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDLB', '股东分类', 6, '6', '虚拟股东', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDSX', '股东属性', 1, '1', '主股东卡', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDSX', '股东属性', 2, '2', '当日指定', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDSX', '股东属性', 4, '4', '禁止买入', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDSX', '股东属性', 8, '8', '禁止卖出', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDSX', '股东属性', 16, '16', '回购指定', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDSX', '股东属性', 32, '32', '隔日指定', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDSX', '股东属性', 64, '64', '禁止撤指', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDSX', '股东属性', 128, '128', '禁止转托管', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDSX', '股东属性', 256, '256', '批量委托指定股东', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDSX', '股东属性', 1024, '1024', '允许权证买入', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDZT', '股东状态', 0, '0', '正常', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDZT', '股东状态', 1, '1', '冻结', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDZT', '股东状态', 2, '2', '挂失', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDZT', '股东状态', 3, '3', '销户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDZT', '股东状态', 6, '6', '小额休眠', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDZT', '股东状态', 7, '7', '不合格', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GDZT', '股东状态', 8, '8', '激活', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GFLX', '股份类型', 1, '1', '国家股', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GFLX', '股份类型', 2, '2', '国有法人股', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GFLX', '股份类型', 4, '4', '境内法人股', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GFLX', '股份类型', 8, '8', '自然人发起人股', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GFLX', '股份类型', 16, '16', '内部职工股', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GFLX', '股份类型', 32, '32', '优先股', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GFLX', '股份类型', 64, '64', '非上市外资股', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GFSX', '帐户规范属性', 0, 'code1', '散户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GFSX', '帐户规范属性', 1, 'code1', '中户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GFSX', '帐户规范属性', 2, 'code2', '大户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GFSX', '帐户规范属性', 3, 'code3', '机构户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GFSX', '帐户规范属性', 4, 'code4', '自营', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GFSX', '帐户规范属性', 5, 'code5', '资产管理', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GFSX', '帐户规范属性', 6, 'code6', '银行批量划帐', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GFSX', '帐户规范属性', 8, 'code8', 'VIP', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GFSX', '帐户规范属性', 9, 'code9', '其他', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GFSX', '帐户规范属性', 10, 'code10', '回购专用', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GFSX', '帐户规范属性', 11, 'code11', '帐户管理', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GFSX', '帐户规范属性', 12, 'code12', '定向管理', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GFSX', '帐户规范属性', 15, 'code15', 'VIP席位', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GFSX', '帐户规范属性', 16, 'code16', '小额休眠户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GFSX', '帐户规范属性', 17, 'code17', '不合格资金帐户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GFSX', '帐户规范属性', 18, 'code18', '不合格纯资金户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GFSX', '帐户规范属性', 19, 'code19', '不合格证券帐户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GFSX', '帐户规范属性', 20, 'code20', '新增小额休眠户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GGJYPH', '港股交易排行', 1, '1', '月成交金额(万)', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GGJYPH', '港股交易排行', 2, '2', '月交易客户数', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GGJYPH', '港股交易排行', 3, '3', '月净佣金', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GGKHPH', '港股开户排行', 1, '1', '累计开户数', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GGKHPH', '港股开户排行', 2, '2', '新增开户数', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GGKHPH', '港股开户排行', 3, '3', '激活率', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GGLX', '公告类型', 1, '1', '营销活动', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GGLX', '公告类型', 2, '2', '基金活动', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GGLX', '公告类型', 3, '3', '理财活动', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_CGYHYQY', '高级查询_存管银行已签约', 2, '6002', '农行银行', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_CGYHYQY', '高级查询_存管银行已签约', 3, '6007', '中行银行', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_CGYHYQY', '高级查询_存管银行已签约', 4, '6005', '建行银行', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_CGYHYQY', '高级查询_存管银行已签约', 5, '6004', '交行银行', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_CGYHYQY', '高级查询_存管银行已签约', 9, '6000', '浦发银行', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_CGYHYQY', '高级查询_存管银行已签约', 11, '6003', '招行银行', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_CGYHYQY', '高级查询_存管银行已签约', 15, '5007', '兴业银行', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_CGYHYQY', '高级查询_存管银行已签约', 20, '6006', '工行银行', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_FWCP', '金跑道服务套餐', 701, '701', '金跑道服务套餐', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_FWCP', '金跑道服务套餐', 702, '702', '金智讯服务套餐', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_FWCP', '金跑道服务套餐', 703, '703', '金智尊服务套餐', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_FWCP', '金跑道服务套餐', 721, '721', '金智富服务套餐', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_FWCP', '金跑道服务套餐', 722, '722', '金智睿服务套餐', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_FWCP', '金跑道服务套餐', 701, '701', '金跑道服务套餐', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_FWCP', '金跑道服务套餐', 721, '721', '金智富服务套餐', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_FWCP', '金跑道服务套餐', 702, '702', '金智讯服务套餐', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_FWCP', '金跑道服务套餐', 703, '703', '金智尊服务套餐', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_FWCP', '金跑道服务套餐', 722, '722', '金智睿服务套餐', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_FWCP', '金跑道服务套餐', 701, '701', '金跑道服务套餐', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_FWCP', '金跑道服务套餐', 721, '721', '金智富服务套餐', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_FWCP', '金跑道服务套餐', 702, '702', '金智讯服务套餐', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_FWCP', '金跑道服务套餐', 703, '703', '金智尊服务套餐', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_FWCP', '金跑道服务套餐', 722, '722', '金智睿服务套餐', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_FWCP', '金跑道服务套餐', 701, '701', '金跑道服务套餐', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_FWCP', '金跑道服务套餐', 721, '721', '金智富服务套餐', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_FWCP', '金跑道服务套餐', 702, '702', '金智讯服务套餐', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_FWCP', '金跑道服务套餐', 703, '703', '金智尊服务套餐', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_FWCP', '金跑道服务套餐', 722, '722', '金智睿服务套餐', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_FWCP', '金跑道服务套餐', 701, '701', '金跑道服务套餐', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_FWCP', '金跑道服务套餐', 721, '721', '金智富服务套餐', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_FWCP', '金跑道服务套餐', 702, '702', '金智讯服务套餐', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_FWCP', '金跑道服务套餐', 703, '703', '金智尊服务套餐', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_FWCP', '金跑道服务套餐', 722, '722', '金智睿服务套餐', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_FWCPGJCX_FWCP', '金智讯服务套餐', 702, '702', '金智讯服务套餐', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_GGQQ_JYFX', '高级查询_个股期权_交易类别', 1, '1', '交易量', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_GGQQ_JYFX', '高级查询_个股期权_交易类别', 2, '2', '交易量_买入开仓', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_GGQQ_JYFX', '高级查询_个股期权_交易类别', 3, '3', '交易量_买入平仓', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_GGQQ_JYFX', '高级查询_个股期权_交易类别', 4, '4', '交易量_卖出开仓', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_GGQQ_JYFX', '高级查询_个股期权_交易类别', 5, '5', '交易量_卖出平仓', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_GGQQ_JYFX', '高级查询_个股期权_交易类别', 6, '6', '交易量_备兑开仓', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_GGQQ_JYFX', '高级查询_个股期权_交易类别', 7, '7', '交易量_备兑平仓', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_GXLX', '高级查询_关系类型', 1, '1', '属于', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_GXLX', '高级查询_关系类型', 2, '2', '不属于', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_JYFX', '高级查询_交易类别', 1, '1', '买入', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_JYFX', '高级查询_交易类别', 2, '2', '卖出', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_KHQD', '高级查询_开户渠道', 1, '1', '临柜开户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_KHQD', '高级查询_开户渠道', 2, '2', '非现场开户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_SFDZ', '高级查询_是否定制', 1, '1', '已定制', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_SFDZ', '高级查询_是否定制', 2, '2', '未定制', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_TJR', '推荐人手机号', 1, '1', '推荐人手机号', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_TJR', '推荐人手机号', 2, '2', '推荐人姓名', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_TJR', '推荐人手机号', 1, '1', '推荐人手机号', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_TJR', '推荐人手机号', 2, '2', '推荐人姓名', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_TJZQ', '统计周期', 1, '1', '上日', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_TJZQ', '统计周期', 2, '2', '上月', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_TJZQ', '统计周期', 3, '3', '本月', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_TJZQ', '统计周期', 4, '4', '本年', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_ZCLX', '高级查询_资产类型', 1, '1', '总资产', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_ZCLX', '高级查询_资产类型', 2, '2', '股基资产', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_ZCLX', '高级查询_资产类型', 3, '3', '信用资产', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_ZCLX', '高级查询_资产类型', 4, '4', '个股期权资产', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_ZHLX', '高级查询_账户类型', 1, '1', '合并账户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_ZHLX', '高级查询_账户类型', 2, '2', '股基账户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GJCX_ZHLX', '高级查询_账户类型', 3, '3', '信用账户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GPCFG', '股票池风格', 1, '1', '短线', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GPCFG', '股票池风格', 2, '2', '中长线', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GPFXCSNL', '股票风险承受能力', 1, '1', '保守型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GPFXCSNL', '股票风险承受能力', 2, '2', '稳健型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GPFXCSNL', '股票风险承受能力', 3, '3', '积极型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GPFXCSNL', '股票风险承受能力', 4, '4', '激进型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GPFXCSNL', '股票风险承受能力', 5, '5', '平衡型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GRJGBZ', '个人/机构标志', 0, '0', '机构', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GRJGBZ', '个人/机构标志', 1, '1', '个人', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GRZJLX', '个人证件类型', 0, '0', '身份证', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GRZJLX', '个人证件类型', 1, '1', '护照', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GRZJLX', '个人证件类型', 2, '2', '军官证', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GRZJLX', '个人证件类型', 3, '3', '士兵证', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GRZJLX', '个人证件类型', 4, '4', '回乡证', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GRZJLX', '个人证件类型', 5, '5', '户口本', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GRZJLX', '个人证件类型', 6, '6', '外国护照', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GRZJLX', '个人证件类型', 7, '7', '其它', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GRZJLX', '个人证件类型', 8, '8', '无', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GT_MMYZFS', '柜台_密码验证方式', 0, '0', '不验证', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GT_MMYZFS', '柜台_密码验证方式', 1, '1', '柜台系统资金密码', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GT_MMYZFS', '柜台_密码验证方式', 2, '2', '柜台系统交易密码', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GT_MMYZFS', '柜台_密码验证方式', 9, '9', '服务密码', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GT_ZHSX_ZJ', '柜台_资金账户属性', 2, '2', '禁止存款', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GT_ZHSX_ZJ', '柜台_资金账户属性', 4, '4', '禁止取款', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GT_ZHSX_ZJ', '柜台_资金账户属性', 8, '8', '禁止银转证', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GT_ZHSX_ZJ', '柜台_资金账户属性', 16, '16', '禁止证转银', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GT_ZHSX_ZJ', '柜台_资金账户属性', 32, '32', '禁止单户资金内转', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GT_ZJJSLX', '资金结算类型', 1, '1', '保证金结算', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GT_ZJJSLX', '资金结算类型', 2, '2', '第三方结算', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GT_ZJZHLB', '柜台_资金账户类别', 1, '1', '存管普通资金账户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GT_ZJZHLB', '柜台_资金账户类别', 2, '1', '存管信用资金账户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GT_ZJZHLB', '柜台_资金账户类别', 3, '2', '非存管银行账户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GT_ZJZHLB', '柜台_资金账户类别', 4, '2', '支付宝账户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GT_ZJZHZT', '柜台_资金账户状态', 0, '0', '正常', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GT_ZJZHZT', '柜台_资金账户状态', 1, '1', '冻结', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GT_ZJZHZT', '柜台_资金账户状态', 2, '2', '挂失', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GT_ZJZHZT', '柜台_资金账户状态', 3, '3', '销户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GT_ZJZHZT', '柜台_资金账户状态', 4, '4', '预指定存管银行', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GT_ZJZHZT', '柜台_资金账户状态', 6, '6', '小额休眠', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GT_ZJZHZT', '柜台_资金账户状态', 7, '7', '不合格', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GT_ZJZHZT', '柜台_资金账户状态', 9, '9', '公司不合格', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GT_ZJZHZT', '柜台_资金账户状态', 99, '99', '开户锁定', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GX', '关系', 1, '1', '夫妻', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GX', '关系', 2, '2', '父母', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GX', '关系', 3, '3', '子女', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GX', '关系', 4, '4', '亲戚', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GX', '关系', 5, '5', '同事', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GX', '关系', 6, '6', '朋友', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GX', '关系', 7, '7', '其它', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GX', '关系', 8, '8', '实际控制人（企业）', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GXFS', '更新方式', 1, '1', '手机', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GXFS', '更新方式', 2, '2', '邮政编码', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GXFS', '更新方式', 3, '3', '电话区号', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GXFS', '更新方式', 4, '4', '地址查找', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GXFS', '更新方式', 5, '5', '身份证', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GXFS', '更新方式', 6, '6', '无法区分', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GXFS', '更新方式', 7, '7', '渠道网点', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GXLX', '关系类型', 1, '1', '同类', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GXLX', '关系类型', 2, '2', '配套', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GXLX', '关系类型', 3, '3', '互斥', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GZQHFXCSNL', '股指期货风险承受能力', 1, '1', '保守型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GZQHFXCSNL', '股指期货风险承受能力', 2, '2', '稳健型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GZQHFXCSNL', '股指期货风险承受能力', 3, '3', '积极型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GZQHFXCSNL', '股指期货风险承受能力', 4, '4', '激进型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GZQHFXCSNL', '股指期货风险承受能力', 5, '5', '平衡型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GZRZLB', '工作日志类别', 0, '0', '其它', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GZRZLB', '工作日志类别', 1, 'tKHFWJL', '客户维护', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GZRZLB', '工作日志类别', 2, 'tKHFWJL', '潜在客户开发', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GZRZLB', '工作日志类别', 3, 'tKHFWJL', '渠道开发', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GZRZLB', '工作日志类别', 4, 'tKHFWJL', '渠道维护', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GZRZLX', '工作日志类型', 1, '1', '日志', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GZRZLX', '工作日志类型', 2, '2', '周志', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GZRZLX', '工作日志类型', 3, '3', '月结', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GZRZLX', '工作日志类型', 4, '4', '半年报', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GZRZLX', '工作日志类型', 5, '5', '年报', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GZRZLX', '工作日志类型', 6, '6', '内部交流', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GZRZLX', '工作日志类型', 7, '7', '培训和学习总结', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GZRZLX', '工作日志类型', 8, '8', '报表报送', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GZRZLX', '工作日志类型', 9, '9', '准休眠户分配方案', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GZRZLX', '工作日志类型', 10, '10', '引进高端客户经理', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GZRZLX', '工作日志类型', 11, '11', '高端客户开发', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HDPJ', '活动评价', 1, 'Code1', '一般', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HDPJ', '活动评价', 2, 'Code2', '很好', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HDPJ', '活动评价', 3, 'Code3', '非常好', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HDPJ', '活动评价', 4, 'Code4', '不好', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HDPJ', '活动评价', 5, 'Code5', '很差', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFDXKXLB', '华福短信快线类别', 1, '1', '节日祝福', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFDXKXLB', '华福短信快线类别', 2, '2', '提示-权证风险', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFDXKXLB', '华福短信快线类别', 3, '3', '提示-配股配债', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFDXKXLB', '华福短信快线类别', 4, '4', '提示-新股中签', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFDXKXLB', '华福短信快线类别', 5, '5', '提示-新股上市', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFDXKXLB', '华福短信快线类别', 6, '6', '提示-要约收购', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFDXKXLB', '华福短信快线类别', 11, '11', '基金-分红', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFDXKXLB', '华福短信快线类别', 12, '12', '基金-认购开放日', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFDXKXLB', '华福短信快线类别', 21, '21', '重大事项-停牌', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFDXKXLB', '华福短信快线类别', 22, '22', '重大事项-复牌', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFDXKXLB', '华福短信快线类别', 23, '23', '重大事项-转增', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFDXKXLB', '华福短信快线类别', 24, '24', '重大事项-退市', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFDXKXLB', '华福短信快线类别', 25, '25', '重大事项-解禁上市', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFDXKXLB', '华福短信快线类别', 26, '26', '重大事项-分红送股', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFDXKXLB', '华福短信快线类别', 27, '27', '重大事项-经济数据', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFFS', '回复方式', 0, '0', '不详', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFFS', '回复方式', 1, '1', '手机', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFFS', '回复方式', 2, '2', 'Email', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFFS', '回复方式', 3, '3', '传真', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFFS', '回复方式', 4, '4', '电话', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFFS', '回复方式', 11, '11', 'msn', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFGL_HFCLZT', '回访管理_回访处理状态', 1, '1', '正常回访', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFGL_HFCLZT', '回访管理_回访处理状态', 2, '2', '预约回访', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFGL_HFCLZT', '回访管理_回访处理状态', 3, '3', '无人接听', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFGL_HFCLZT', '回访管理_回访处理状态', 4, '4', '拒绝接听', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFGL_HFCLZT', '回访管理_回访处理状态', 5, '5', '号码错误', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFGL_HFRWZT', '回访管理_回访任务状态', 0, '0', '未处理', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFGL_HFRWZT', '回访管理_回访任务状态', 1, '1', '未完成', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFGL_HFRWZT', '回访管理_回访任务状态', 2, '2', '完成-正常', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFGL_HFRWZT', '回访管理_回访任务状态', 3, '3', '异常', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFGL_HFRWZT', '回访管理_回访任务状态', 4, '4', '无法完成', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFGL_HFZXQK', '回访管理_回访执行情况', 0, '0', '未实施回访', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFGL_HFZXQK', '回访管理_回访执行情况', 1, '1', '无人接听', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFGL_HFZXQK', '回访管理_回访执行情况', 2, '2', '拒绝接受', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFGL_HFZXQK', '回访管理_回访执行情况', 3, '3', '电话号码错误', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFGL_HFZXQK', '回访管理_回访执行情况', 4, '4', '预约回访', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFGL_HFZXQK', '回访管理_回访执行情况', 5, '5', '回访异常', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFGL_HFZXQK', '回访管理_回访执行情况', 99, '99', '回访成功', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFGL_YCQK', '回访管理_异常情况', 1, '1', '开户非客户本人办理', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFGL_YCQK', '回访管理_异常情况', 2, '2', '开户时柜员未向客户揭示证券投资风险', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFGL_YCQK', '回访管理_异常情况', 3, '3', '客户电话号码错误', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFGL_YCQK', '回访管理_异常情况', 4, '4', '客户表示不认识经纪人', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFGL_YCQK', '回访管理_异常情况', 5, '5', '客户表示不认识营销经理', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFGL_YCQK', '回访管理_异常情况', 6, '6', '客户表示不认识客服经理', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFGL_YCQK', '回访管理_异常情况', 7, '7', '客户不满意客户经理/营销经理/经纪人的服务', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFGL_YCQK', '回访管理_异常情况', 8, '8', '客户对行情交易系统有意见', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFGL_YCQK', '回访管理_异常情况', 9, '9', '客户对资讯服务有意见', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFGL_YCQK', '回访管理_异常情况', 10, '10', '存在全权委托、代客理财、违规向客户提供买卖意见等行为或相关迹象', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFZZRLX', '回访责任人类型', 0, '0', '客服', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFZZRLX', '回访责任人类型', 1, '1', '总部回访', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HFZZRLX', '回访责任人类型', 2, '2', '营业部回访', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HTLX', '合同类型', 0, '0', '劳务派遣', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HTLX', '合同类型', 1, '1', '代理合同', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HTLX', '合同类型', 2, '2', '非全日制', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HTLX', '合同类型', 3, '3', '劳动合同', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HTLX', '合同类型', 4, '4', '其他', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HTLX', '合同类型', 99, '99', '未签', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HWGX', '海外关系', 1, '1', '海外留学', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HWGX', '海外关系', 2, '2', '海外工作', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HWGX', '海外关系', 3, '3', '海外留学并工作', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYFL', '行业分类', 1, '1', '农,林,牧,渔业', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYFL', '行业分类', 2, '2', '采掘业', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYFL', '行业分类', 3, '3', '制造业', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYFL', '行业分类', 4, '4', '电力、煤气及水的生产和供应业', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYFL', '行业分类', 5, '5', '建筑业', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYFL', '行业分类', 6, '6', '地质勘查业、水利管理业', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYFL', '行业分类', 7, '7', '交通运输、仓储及邮电通信业', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYFL', '行业分类', 8, '8', '批发和零售贸易、餐饮业', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYFL', '行业分类', 9, '9', '金融、保险业', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYFL', '行业分类', 10, '10', '房地产业', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYFL', '行业分类', 11, '11', '社会服务业', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYFL', '行业分类', 12, '12', '卫生、体育和社会福利业', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYFL', '行业分类', 13, '13', '教育、文化艺术及广播电影电视业', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYFL', '行业分类', 14, '14', '科学研究和综合技术服务业', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYFL', '行业分类', 15, '15', '国家机关、政党机关和社会团体', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYFL', '行业分类', 16, '16', '其他行业', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYLB', '机构所在行业类别', 0, '0', '能源', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYLB', '机构所在行业类别', 1, '1', '原材料', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYLB', '机构所在行业类别', 2, '2', '初级产品工业', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYLB', '机构所在行业类别', 3, '3', '投资品工业', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYLB', '机构所在行业类别', 4, '4', '耐用消费品制造', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYLB', '机构所在行业类别', 5, '5', '医疗卫生', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYLB', '机构所在行业类别', 6, '6', '经营性消费品工业', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYLB', '机构所在行业类别', 7, '7', '贸易和零售', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYLB', '机构所在行业类别', 8, '8', '社会服务业', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFXPJ', '基金风险评级', 42, 'Code11', '低风险2', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFYLB', '开放基金费用类别', 5, '5', '销售奖励', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFYLB', '开放基金费用类别', 6, '6', '尾随佣金', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFYLB', '开放基金费用类别', 7, '7', '服务费', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFYLB', '开放基金费用类别', 8, '8', '维护费', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFYLB', '开放基金费用类别', 5020, '5020', '认购费', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFYLB', '开放基金费用类别', 5022, '5022', '申购费', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFYLB', '开放基金费用类别', 5024, '5024', '赎回费', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFYLB', '开放基金费用类别', 5036, '5036', '转换费', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJGM', '基金规模', 0, 'Code1', '不限', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJGM', '基金规模', 1, 'Code2', '10亿以下', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJGM', '基金规模', 2, 'Code3', '10亿？30亿', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJGM', '基金规模', 3, 'Code4', '30亿？50亿', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJGM', '基金规模', 4, 'Code5', '50亿？100亿', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJGM', '基金规模', 5, 'Code6', '100亿以上', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJGX_YWLB', '客户关系业务类别', 1, '1', '普通股票', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJGX_YWLB', '客户关系业务类别', 2, '2', '开放基金', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJGX_YWLB', '客户关系业务类别', 3, '3', '信用业务', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJGX_YWLB', '客户关系业务类别', 4, '4', 'IB业务', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJHZT', '基金帐户状态', 0, '0', '正常', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJHZT', '基金帐户状态', 1, '1', '冻结', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJHZT', '基金帐户状态', 2, '2', '挂失', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJHZT', '基金帐户状态', 4, '4', '销户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJHZT', '基金帐户状态', 8, '8', '开户申请中', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJHZT', '基金帐户状态', 16, '16', '销户申请中', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJHZT', '基金帐户状态', 64, '64', '内部冻结', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJKSLX', '基金考试资格类型', 1, '1', '基金从业资格考试合格证', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJKSLX', '基金考试资格类型', 2, '2', '基金销售资格考试合格证', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJLX', '经济类型', 1, 'Code1', '国有全资', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJLX', '经济类型', 2, 'Code2', '集体全资', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJLX', '经济类型', 3, 'Code3', '股份合作', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJLX', '经济类型', 4, 'Code4', '联营', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJLX', '经济类型', 5, 'Code5', '国有联营', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJLX', '经济类型', 6, 'Code6', '有限责任（公司）', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJLX', '经济类型', 7, 'Code7', '股份有限公司', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJLX', '经济类型', 8, 'Code8', '私有', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJQESHCLBZ', '巨额赎回处理标志', 0, '0', '取消', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJQESHCLBZ', '巨额赎回处理标志', 1, '1', '顺延', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRBDLX', '经纪人变动类型', 1, '1', '新招员工', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRBDLX', '经纪人变动类型', 2, '2', '内部调动', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRBDLX', '经纪人变动类型', 3, '3', '辞职', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRDLQX', '经纪人代理权限', 1, '1', '向客户介绍证券公司和证券市场的基本情况', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRDLQX', '经纪人代理权限', 2, '2', '向客户介绍证券投资的基本知识及开户、交易、资金存取等业务流程', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRDLQX', '经纪人代理权限', 3, '3', '向客户介绍与证券交易有关的法律、行政法规、证监会规定、自律规则和证券公司的有关规定', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRDLQX', '经纪人代理权限', 4, '4', '向客户传递由证券公司统一提供的研究报告及与证券投资有关的信息', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRDLQX', '经纪人代理权限', 5, '5', '向客户传递由证券公司统一提供的证券类金融产品宣传推介材料及有关信息', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRDLQX', '经纪人代理权限', 6, '6', '法律、行政法规和证监会规定证券经纪人可以从事的其他活动', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRHGZT', '经纪人合规状态', 0, '0', '合规', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRHGZT', '经纪人合规状态', 1, '1', '不合规', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRHGZT', '经纪人合规状态', 2, '2', '标准冻结', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRHGZT', '经纪人合规状态', 4, '4', '特殊冻结', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRKHCS', '经纪人考核参数', 1, '1', '开户奖权重', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRLX', '经纪人类型', 1, '1', '专职', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRLX', '经纪人类型', 2, '2', '外部代理', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRLX', '经纪人类型', 3, '3', '内部员工', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRLX', '经纪人类型', 4, '4', '虚拟', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '经纪人影像类型', 1, '1', '个人照片', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '经纪人影像类型', 2, '2', '个人证件_正面', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '经纪人影像类型', 3, '3', '毕业证书', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '经纪人影像类型', 6, '6', '签约合同书', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '经纪人影像类型', 8, '8', '个人证件_背面', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '经纪人影像类型', 9, '9', '学位证书', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '经纪人影像类型', 20, '20', '委托授权书', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '经纪人影像类型', 21, '21', '转赠客户授权书', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '经纪人影像类型', 22, '22', '客户挂接确认单正面', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '经纪人影像类型', 23, '23', '客户解挂确认单', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '经纪人影像类型', 24, '24', '客户挂接确认单背面', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '经纪人影像类型', 30, '30', '成绩证-证券市场基础知识', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '经纪人影像类型', 31, '31', '成绩证-证券发行与承销', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '经纪人影像类型', 32, '32', '成绩证-证券交易', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '经纪人影像类型', 33, '33', '成绩证-证券投资分析', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '经纪人影像类型', 34, '34', '成绩证-证券投资基金', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '经纪人影像类型', 35, '35', '成绩证-经纪人专项', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '经纪人影像类型', 36, '36', '成绩证-证券市场基础编码', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '经纪人影像类型', 37, '37', '成绩证-证券经纪业务营销编码', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '经纪人影像类型', 38, '38', '成绩证-期货基础知识', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '经纪人影像类型', 39, '39', '成绩证-期货法律法规', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '经纪人影像类型', 40, '40', '成绩证-证券投资基金销售基础知识', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '经纪人影像类型', 501, '501', '证券经纪业务营销资格证书', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '经纪人影像类型', 502, '502', '基金推介销售资格证书', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '经纪人影像类型', 504, '504', '期货营销证书', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '经纪人影像类型', 508, '508', '证券经纪人证书', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '经纪人影像类型', 516, '516', '证券投资咨询业务证书', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '经纪人影像类型', 532, '532', '一般证券业务证书', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRYXLX', '经纪人影像类型', 564, '564', '基金投资管理证书', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRZHZT', '经纪人帐户状态', 0, '0', '正常执业', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRZHZT', '经纪人帐户状态', 1, '1', '注销', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRZHZT', '经纪人帐户状态', 2, '2', '暂时离岗', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRZHZT', '经纪人帐户状态', 3, '3', '待入职', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRZHZT', '经纪人帐户状态', 4, '4', '已入职', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJRZHZT', '经纪人帐户状态', 5, '5', '停止执业', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJSBCLJG', '基金申报处理结果', 0, '0', '未申报', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJSBCLJG', '基金申报处理结果', 1, '1', '已申报', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJSBCLJG', '基金申报处理结果', 3, '3', '本地已撤单', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJSBCLJG', '基金申报处理结果', 4, '4', '申请资金授权中', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJSFFS', '基金收费方式', 1, '1', '前端收费', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJSFFS', '基金收费方式', 2, '2', '后端收费', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJTZDX', '基金投资对象', 1, '1', '股票型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJTZDX', '基金投资对象', 2, '2', '债券型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJTZDX', '基金投资对象', 3, '3', '货币型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJTZDX', '基金投资对象', 4, '4', 'QDII', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJTZDX', '基金投资对象', 9, '9', '混合型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJTZFG', '基金投资风格', 1, 'Code1', '平衡型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJTZFG', '基金投资风格', 2, 'Code2', '成长型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJTZFG', '基金投资风格', 3, 'Code3', '指数型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJTZFG', '基金投资风格', 4, 'Code4', '收益型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJTZFG', '基金投资风格', 5, 'Code5', '价值型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJTZFG', '基金投资风格', 6, 'Code6', '保本型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJTZFG_SZ', '基金投资风格_商智', 1, 'Code1', '主动', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJTZFG_SZ', '基金投资风格_商智', 2, 'Code2', '被动', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJTZFG_SZ', '基金投资风格_商智', 3, 'Code3', '绝对回报', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJTZFG_SZ', '基金投资风格_商智', 4, 'Code4', '价值', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJTZFG_SZ', '基金投资风格_商智', 5, 'Code5', '平衡', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJTZFG_SZ', '基金投资风格_商智', 6, 'Code6', '成长', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJZHZT', '基金转换状态', 0, '0', '可转入、转出', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJZHZT', '基金转换状态', 1, '1', '只可转入', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJZHZT', '基金转换状态', 2, '2', '只可转出', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJZHZT', '基金转换状态', 3, '3', '不可转换', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJZT', '基金状态', -1, '-1', '不允许交易', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJZT', '基金状态', 0, '0', '交易', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJZT', '基金状态', 1, '1', '发行', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJZT', '基金状态', 2, '2', '发行成功', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJZT', '基金状态', 3, '3', '发行失败', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJZT', '基金状态', 4, '4', '基金停止交易', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJZT', '基金状态', 5, '5', '停止申购', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJZT', '基金状态', 6, '6', '停止赎回', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJZT', '基金状态', 7, '7', '权益登记', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJZT', '基金状态', 8, '8', '红利发放', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJZT', '基金状态', 9, '9', '基金封闭', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJZT', '基金状态', 10, '10', '基金终止', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JKQD', '接口渠道', 0, '0', 'CRM', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JKQD', '接口渠道', 1, '1', 'OCRM', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JKQD', '接口渠道', 3, '3', '手机开户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JKQD', '接口渠道', 5, '5', '中投商城', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JKQD', '接口渠道', 6, '6', '金融商城', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JNRLX', '纪念日类型', 1, '1', '结婚', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JNRLX', '纪念日类型', 2, '2', '生日', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRCPGMLX', '金融产品购买类型', 20, 'Code1', '认购', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRCPGMLX', '金融产品购买类型', 22, 'Code2', '申购', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRCPLB', '金融产品类别', 1, 'Code1', '理财产品', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRCPLB', '金融产品类别', 2, 'Code2', '基金', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRCPLB', '金融产品类别', 3, 'Code3', '信托', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRCPSYLX', '金融产品收益类型', 1, '1', '非保本浮动收益', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRCPSYLX', '金融产品收益类型', 2, '2', '保本浮动收益', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRCPSYLX', '金融产品收益类型', 3, '3', '保本保底收益', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRCPSYLX', '金融产品收益类型', 4, '4', '保本固定收益', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRCPSYLX', '金融产品收益类型', 9, '9', '其它', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRCPSYLX_SZ', '金融产品收益类型_商智', 1, '1', '保本固定收益', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRCPSYLX_SZ', '金融产品收益类型_商智', 2, '2', '保本浮动收益', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRCPSYLX_SZ', '金融产品收益类型_商智', 3, '3', '非保本浮动收益', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRCPSYLX_SZ', '金融产品收益类型_商智', 4, '4', '其他', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRCPXSLX', '金融产品销售类型', 0, 'Code1', '无效委托', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRCPXSLX', '金融产品销售类型', 1, 'Code1', '营业部营销', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRCPXSLX', '金融产品销售类型', 2, 'Code2', '营业部服务', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRCPXSLX', '金融产品销售类型', 3, 'Code3', '资管部直销', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRCPXSLX', '金融产品销售类型', 4, 'Code4', '总部直销', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRCPXSLX', '金融产品销售类型', 5, 'Code5', '自然销售', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRCPZFFS', '金融产品支付方式', 1, '1', '保证金', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRCPZFFS', '金融产品支付方式', 2, '2', '银行转账', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRCPZFFS', '金融产品支付方式', 4, '4', '支付宝', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRTZPZ', '金融投资品种', 1, '1', '股票', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRTZPZ', '金融投资品种', 2, '2', '基金', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRTZPZ', '金融投资品种', 3, '3', '债券', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRTZPZ', '金融投资品种', 4, '4', '期货', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRTZPZ', '金融投资品种', 5, '5', '权证', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRTZPZ', '金融投资品种', 6, '6', '港股', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JRTZPZ', '金融投资品种', 7, '7', '理财产品', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JSBZ', '结算标志', 0, '0', '未存管', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JSBZ', '结算标志', 1, '1', '预指定', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JSBZ', '结算标志', 2, '2', '正常存管', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JSJB', '警示级别', 1, '1', '风险警示', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JSJB', '警示级别', 2, '2', '退市整理', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JSJB2', '讲师级别', 1, '1', '讲师助理', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JSJB2', '讲师级别', 2, '2', '助理讲师', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JSJB2', '讲师级别', 3, '3', '初级讲师', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JSJB2', '讲师级别', 4, '4', '中级讲师', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JSJB2', '讲师级别', 5, '5', '高级讲师', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JSJB2', '讲师级别', 6, '6', '资深讲师', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JSJB2', '讲师级别', 7, '7', '管理员', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JSZC', '技术职称', 1, '1', '高级', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JSZC', '技术职称', 2, '2', '中级', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JSZC', '技术职称', 3, '3', '初级', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JSZC', '技术职称', 4, '4', '高级技师', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JSZC', '技术职称', 5, '5', '技师', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JSZC', '技术职称', 6, '6', '高级工', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JSZC', '技术职称', 7, '7', '中级工', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JSZC', '技术职称', 8, '8', '无职称', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JTJYQK', '家庭就业情况', 1, '1', '您与配偶均有稳定收入的工作', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JTJYQK', '家庭就业情况', 2, '2', '您与配偶其中一人有稳定收入的工作', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JTJYQK', '家庭就业情况', 3, '3', '您与配偶均没有稳定收入的工作或者已退休', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JTJYQK', '家庭就业情况', 4, '4', '未婚，但有稳定收入的工作', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JTJYQK', '家庭就业情况', 5, '5', '未婚，目前暂无稳定收入的工作', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JTZCZC', '家庭资产组成', 1, '1', '现金', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JTZCZC', '家庭资产组成', 2, '2', '银行存款', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JTZCZC', '家庭资产组成', 3, '3', '投资', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JTZCZC', '家庭资产组成', 4, '4', '保险', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JTZCZC', '家庭资产组成', 5, '5', '房产', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JTZCZC', '家庭资产组成', 6, '6', '汽车', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYCD', '教育程度', 1, '1', '初中', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYCD', '教育程度', 2, '2', '高中', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYCD', '教育程度', 4, '3', '中专', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYCD', '教育程度', 8, '4', '大专', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYCD', '教育程度', 16, '5', '本科', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYCD', '教育程度', 32, '6', '硕士', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYCD', '教育程度', 64, '7', '博士', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYCD', '教育程度', 128, '8', '其他', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYCW', '建议仓位', 1, '1', '空仓', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYCW', '建议仓位', 2, '2', '20%', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYCW', '建议仓位', 3, '3', '半仓', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYCW', '建议仓位', 4, '4', '70%', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYCW', '建议仓位', 5, '5', '满仓', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_DFLX', '得分类型', 1, '1', '阶梯式得分', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_DFLX', '得分类型', 2, '2', '区间式得分', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_JFFS', '经营分析_计分方式', 1, '1', '直接计分', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_JFFS', '经营分析_计分方式', 2, '2', '按完成率计分', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_JFFS', '经营分析_计分方式', 3, '3', '按完成量分段计分', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_JFFS', '经营分析_计分方式', 4, '4', '按增长率计分', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_JFFS', '经营分析_计分方式', 5, '5', '按增长量分段计分', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_JSFS', '计算方式', 1, '1', '完成率', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_JSFS', '计算方式', 2, '2', '增长率', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_JSFS', '计算方式', 3, '3', '实际值', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_KHZQ', '经营分析_考核周期', 2, '2', '月', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_KHZQ', '经营分析_考核周期', 3, '3', '年', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_QYZT', '经营分析_启用状态', 0, '0', '不可用', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_QYZT', '经营分析_启用状态', 1, '1', '可用', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_SHZT', '经营分析_审核状态', 0, '0', '上报', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_SHZT', '经营分析_审核状态', 1, '1', '通过', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_SHZT', '经营分析_审核状态', 2, '2', '不通过', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_SJLD', '数据粒度', 1, '1', '日', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_SJLD', '数据粒度', 2, '2', '月', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_SJLD', '数据粒度', 3, '3', '年', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_SJLD', '数据粒度', 4, '4', '季度', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_SYCJ', '经营分析_适用层级', 0, '0', '总部', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_SYCJ', '经营分析_适用层级', 1, '1', '分公司', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_SYCJ', '经营分析_适用层级', 2, '2', '营业部', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_TJCJ', '统计层级', 1, '1', '总部', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_TJCJ', '统计层级', 2, '2', '分公司', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_TJCJ', '统计层级', 3, '3', '营业部', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_YJYS', '经营分析_颜色预警', 1, '1', '红', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_YJYS', '经营分析_颜色预警', 2, '2', '黄', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_YJYS', '经营分析_颜色预警', 3, '3', '绿', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_ZBFL', '经营分析_指标类型', 1, '1', '财务', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_ZBFL', '经营分析_指标类型', 2, '2', '客户与市场', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_ZBFL', '经营分析_指标类型', 3, '3', '管理考核', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_ZBZQ', '经营分析_指标周期', 1, '1', '日', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_ZBZQ', '经营分析_指标周期', 2, '2', '月', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYFX_ZBZQ', '经营分析_指标周期', 3, '3', '年', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 0, '0', '成功', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 1, '1', '份额余额不足', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 2, '2', '账户已冻结', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 3, '3', '账户已挂失', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 4, '4', '发行期不受理', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 5, '5', '封闭期不受理', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 6, '6', '非开放日不受理', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 7, '7', '收到预约数据确认', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 8, '8', '巨额不受理', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 9, '9', '无此账户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 10, '10', '其它原因失败', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 100, '100', '证件号码错误', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 101, '101', '证件号码重复', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 102, '102', '地区号无效', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 103, '103', '业务种类非法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 104, '104', '销售人交易基金帐号非法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 105, '105', '销售公司代码非法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 106, '106', '无户名', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 107, '107', '个人/法人标志非法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 108, '108', '证件类型非法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 109, '109', '无经办人姓名', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 110, '110', '经办人证件类型非法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 111, '111', '经办人证件号码错误', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 112, '112', '无通讯地址', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 113, '113', '邮政编码非法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 114, '114', '无电话', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 115, '115', '无住址电话', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 116, '116', '无单位电话', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 117, '117', '开户网点非法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 118, '118', '冻结挂失截止日期无效', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 119, '119', '无E-MAIL地址', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 120, '120', '无法人代表姓名', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 121, '121', '法人代表证件类型非法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 122, '122', '法人身份证件代码非法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 123, '123', 'TA基金帐号非法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 124, '124', '密函编号非法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 125, '125', '职业代码非法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 126, '126', '学历代码', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 127, '127', '年收入代码', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 128, '128', '性别非法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 129, '129', '出生日期非法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 130, '130', '传真号码非法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 131, '131', '手机号码非法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 132, '132', '传呼机号码非法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 133, '133', '交收行代码非法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 134, '134', '交收行账户名非法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 135, '135', '交收行帐号非法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 136, '136', '上交所帐号非法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 137, '137', '深交所帐号非法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 138, '138', '开户日期非法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 139, '139', '申请单编号非法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 140, '140', '冻结标志非法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 141, '141', '默认分红方式非法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 200, '200', '基金代码非法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 201, '201', '交易日期非法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 202, '202', '交易时间非法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 203, '203', '销售人流水号非法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 204, '204', '币种代码非法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 205, '205', '资金帐号非法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KCXL', '课程系列', 3, '3', '业务系列', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KCXL', '课程系列', 4, '4', '通用课程', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KFND', '开发难度', 1, 'Code1', '潜力大，开发服务难度小', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KFND', '开发难度', 2, 'Code2', '潜力大，开发服务难度大', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KFND', '开发难度', 3, 'Code3', '潜力小，开发和服务难度小', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KFND', '开发难度', 4, 'Code4', '潜力小，开发服务难度大', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHDXLX', '考核对象类型', 1, 'Code1', '总公司', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHDXLX', '考核对象类型', 2, 'Code2', '分公司', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHDXLX', '考核对象类型', 3, 'Code3', '营业部', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHDXLX', '考核对象类型', 4, 'Code4', '团队', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHDXLX', '考核对象类型', 5, 'Code5', '个人', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHFL', '客户分类', 4, '4', '集中交易客户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHFL', '客户分类', 5, '5', '中证期货客户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHFL', '客户分类', 6, '6', '新际期货客户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHFL', '客户分类', 8, '8', '金融产品客户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHFL', '客户分类', 10, '10', '其他', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGF_TJFS', '客户股份_统计方式', 1, '1', '按客户号统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGF_TJFS', '客户股份_统计方式', 2, '2', '按营业部代码统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGF_TJFS', '客户股份_统计方式', 3, '3', '按证券市场统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGF_TJFS', '客户股份_统计方式', 4, '4', '按证券类别统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGF_TJFS', '客户股份_统计方式', 5, '5', '按证券代码统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGF_TJFS', '客户股份_统计方式', 9, '9', '按客户级别统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGF_TJFS', '客户股份_统计方式', 14, '14', '按开户日期统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGF_TJFS', '客户股份_统计方式', 15, '15', '按开户月份统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGF_TJFS', '客户股份_统计方式', 16, '16', '按开户年份统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGF_TJFS', '客户股份_统计方式', 17, '17', '按来源券商统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGF_TJFS', '客户股份_统计方式', 18, '18', '按客户经理统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGLGX', '客户关联关系', 1, '1', '帐户控制人', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGLGX', '客户关联关系', 2, '2', '直系亲属', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGLGX', '客户关联关系', 3, '3', '亲戚', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGLGX', '客户关联关系', 4, '4', '朋友同事', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGLGX', '客户关联关系', 5, '5', '其它', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGL_KHCXSXGN', '客户查询受限功能', 1, '1', '我的客户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGL_KHCXSXGN', '客户查询受限功能', 4, '4', '客户交易查询', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGL_KHCXSXGN', '客户查询受限功能', 5, '5', '客户交易统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGL_KHCXSXGN', '客户查询受限功能', 6, '6', '客户股份查询', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGL_KHCXSXGN', '客户查询受限功能', 7, '7', '客户股份统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGL_KHCXSXGN', '客户查询受限功能', 8, '8', '客户资金查询', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGL_KHCXSXGN', '客户查询受限功能', 9, '9', '客户资金统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGL_KHCXSXGN', '客户查询受限功能', 10, '10', '分客户提成明细查询', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGXLX', '客户关系类型', 1, '1', '服务', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGXLX', '客户关系类型', 2, '2', '签约', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGXLX', '客户关系类型', 10, '10', '开发', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGXLX', '客户关系类型', 11, '11', '信用开发', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGXLX', '客户关系类型', 12, '12', '个股期权开发', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGXLX', '客户关系类型', 13, '13', 'IC(自主开发)', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGXLX', '客户关系类型', 14, '14', 'IC(营业部分配)', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGXLX', '客户关系类型', 15, '15', 'IC(客户专员输送)', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGXLX', '客户关系类型', 16, '16', '辅IC', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGXLX', '客户关系类型', 17, '17', 'IC(指定服务)', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGXYWXL', '客户关系业务序列', 1, '1', '营销', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGXYWXL', '客户关系业务序列', 2, '2', '服务', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGXYWXL', '客户关系业务序列', 3, '3', '后台', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGXYWXL', '客户关系业务序列', 4, '4', '推荐', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGX_YWLX', '客户关系_业务类型', 0, '0', '全部', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGX_YWLX', '客户关系_业务类型', 1, '1', '普通股票', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGX_YWLX', '客户关系_业务类型', 2, '2', '开放基金', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGX_YWLX', '客户关系_业务类型', 3, '3', '信用', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGX_YWLX', '客户关系_业务类型', 4, '4', 'IB业务', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGX_YWLX', '客户关系_业务类型', 5, '5', '港股通', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGX_YWLX', '客户关系_业务类型', 6, '6', '小微贷', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGX_YWLX', '客户关系_业务类型', 7, '7', '质押式回购', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGX_YWLX', '客户关系_业务类型', 8, '8', '报价回购', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGX_YWLX', '客户关系_业务类型', 9, '9', '约定式购回', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHGX_YWLX', '客户关系_业务类型', 10, '10', '个股期权', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHHFLX', '客户回访类型', 1, 'Code1', '新开客户回访', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHHFLX', '客户回访类型', 2, 'Code2', '重要客户回访', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHHFLX', '客户回访类型', 3, 'Code3', '可疑客户回访', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHHFLX', '客户回访类型', 4, 'Code4', '投诉客户回访', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHHFLX', '客户回访类型', 5, 'Code5', '一般回访', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHJG', '考核结果', 1, '1', 'A', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHJG', '考核结果', 2, '2', 'B', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHJG', '考核结果', 3, '3', 'C', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHJG', '考核结果', 4, '4', 'D', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHJG', '考核结果', 5, '5', 'N', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHJYFS', '客户交易方式', 1, '1', '网上交易', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHJYFS', '客户交易方式', 2, '2', '电话委托', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHJYFS', '客户交易方式', 3, '3', '场内交易', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHJYFS', '客户交易方式', 4, '4', '手机委托', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHJY_TJFS', '客户交易_统计方式', 1, '1', '按客户号统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHJY_TJFS', '客户交易_统计方式', 2, '2', '按营业部代码统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHJY_TJFS', '客户交易_统计方式', 3, '3', '按证券市场统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHJY_TJFS', '客户交易_统计方式', 4, '4', '按证券类别统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHJY_TJFS', '客户交易_统计方式', 5, '5', '按证券代码统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHJY_TJFS', '客户交易_统计方式', 6, '6', '按交易类别统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHJY_TJFS', '客户交易_统计方式', 7, '7', '按货币代码统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHJY_TJFS', '客户交易_统计方式', 9, '9', '按客户级别统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHJY_TJFS', '客户交易_统计方式', 10, '10', '按委托方式统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHJY_TJFS', '客户交易_统计方式', 11, '11', '按交易日期统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHJY_TJFS', '客户交易_统计方式', 12, '12', '按交易月份统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHJY_TJFS', '客户交易_统计方式', 13, '13', '按交易年份统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHJY_TJFS', '客户交易_统计方式', 14, '14', '按开户日期统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHJY_TJFS', '客户交易_统计方式', 15, '15', '按开户月份统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHJY_TJFS', '客户交易_统计方式', 16, '16', '按开户年份统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHJY_TJFS', '客户交易_统计方式', 17, '17', '按来源券商统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHJY_TJFS', '客户交易_统计方式', 18, '18', '按客户经理统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHKFZT', '客户开发状态', 0, '0', '正式客户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHKFZT', '客户开发状态', 1, '1', '未接触', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHKFZT', '客户开发状态', 2, '2', '初次了解', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHKFZT', '客户开发状态', 3, '3', '多次了解', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHKFZT', '客户开发状态', 4, '4', '有意向签约', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHKFZT', '客户开发状态', 5, '5', '无意向签约', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHKFZT', '客户开发状态', 6, '6', '已流失', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHKFZT', '客户开发状态', 7, '7', '预约开户中', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHLB', '客户类别', 1, '1', '正式客户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHLB', '客户类别', 3, '3', '潜在客户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHLB', '客户类别', 7, '7', '会员', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHLSYY', '客户流失原因', 1, '1', '收费问题,佣金费率偏高', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHLSYY', '客户流失原因', 2, '2', '地理位置,交通不便', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHLSYY', '客户流失原因', 3, '3', '服务态度较差', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHLSYY', '客户流失原因', 4, '4', '硬件设施较差', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 206, '206', '交易数量非法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 207, '207', '交易金额非法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 208, '208', '对方销售人基金帐号非法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 209, '209', 'TA帐号非法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 210, '210', '对方TA帐号非法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 211, '211', '过户代理地点代码非法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 212, '212', '股东账户代码非法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 213, '213', '指定券商席位号非法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 214, '214', '预约赎回日期非法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 215, '215', '网点号非法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 216, '216', '折扣率非法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 217, '217', '有效天数非法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 218, '218', '原申请单编号非法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 219, '219', '巨额赎回处理标志非法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 220, '220', '冻结原因非法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 221, '221', '对方网点号非法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 222, '222', '再投资类型非法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 223, '223', '目标基金代码非法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 224, '224', '手续费率非法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 225, '225', '手续费非法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 226, '226', '对方销售人代码非法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 227, '227', '原申购日期非法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 228, '228', '账户未挂失', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYHHDM', '交易还回代码', 229, '229', '账户未冻结', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYSC', '交易市场', 1, '1', '深A', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYSC', '交易市场', 2, '2', '沪A', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYSC', '交易市场', 3, '3', '深B', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYSC', '交易市场', 4, '4', '沪B', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JYSC', '交易市场', 5, '5', '特别转让', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KCDJ', '课程等级', 1, '1', '基础', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KCDJ', '课程等级', 2, '2', '提升', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KCLB', '课程类别', 1, '1', '视频培训', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KCLB', '课程类别', 2, '2', '网络培训', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KCLB', '课程类别', 3, '3', '现场培训', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KCLB', '课程类别', 4, '4', '自学', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KCLX', '课程类型', 1, '1', '经纪人岗前培训', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KCLX', '课程类型', 2, '2', '非经纪人岗前培训', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KCLX', '课程类型', 3, '3', '其他', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KCXL', '课程系列', 1, '1', '岗前系列', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KCXL', '课程系列', 2, '2', '晋升系列', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYLB', '机构所在行业类别', 9, '9', '交通运输和仓储业', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYLB', '机构所在行业类别', 10, 'A', '金融业', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYLB', '机构所在行业类别', 11, 'B', '房地产', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYLB', '机构所在行业类别', 12, 'C', '信息技术业', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYLB', '机构所在行业类别', 13, 'D', '公用事业', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYLB', '机构所在行业类别', 14, 'E', '综合类', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYLB', '机构所在行业类别', 15, 'F', '律师,会计师等中介行业', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYLB', '机构所在行业类别', 16, 'G', '珠宝行业', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYLB', '机构所在行业类别', 17, 'H', '娱乐行业', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYLB', '机构所在行业类别', 18, 'Z', '其它', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYLX', '会议类型', 1, 'Code1', '部门早会', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYLX', '会议类型', 2, 'Code2', '部门夕会', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYLX', '会议类型', 3, 'Code3', '部门周例会', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYLX', '会议类型', 4, 'Code4', '团队早会', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYLX', '会议类型', 5, 'Code5', '团队夕会', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYLX', '会议类型', 6, 'Code6', '团队周例会', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYZK', '婚姻状况', 0, '0', '未婚', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYZK', '婚姻状况', 1, '1', '已婚', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYZK', '婚姻状况', 2, '2', '离异', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYZK', '婚姻状况', 3, '3', '丧偶', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('HYZK', '婚姻状况', 4, '4', '未知', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('INFOMARK', '资讯分值', 1, '1', '很差', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('INFOMARK', '资讯分值', 2, '2', '差', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('INFOMARK', '资讯分值', 3, '3', '一般', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('INFOMARK', '资讯分值', 4, '4', '好', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('INFOMARK', '资讯分值', 5, '5', '很好', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JBRSBFS', '经办人识别方式', 1, '1', '书面委托', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JBRSBFS', '经办人识别方式', 2, '2', '印鉴', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JBRSBFS', '经办人识别方式', 3, '3', '密码', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JBRSBFS', '经办人识别方式', 4, '4', '证件', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JBXZLX', '级别限制类型', 1, '1', '禁止调整', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JBXZLX', '级别限制类型', 2, '2', '禁止注销客户', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JBXZLX', '级别限制类型', 4, '4', '禁止客户权重大于1', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JBXZLX', '级别限制类型', 8, '8', '禁止共享客户', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JD', '阶段', 0, '0', '潜在阶段', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JD', '阶段', 1, '1', '开发阶段', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JD', '阶段', 2, '2', '成长阶段', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JD', '阶段', 3, '3', '成熟阶段', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JD', '阶段', 4, '4', '衰退阶段', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JD', '阶段', 5, '5', '通用阶段', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JDQK', '借贷情况', 1, '1', '没有', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JDQK', '借贷情况', 2, '2', '有，住房抵押贷款等长期定额债务', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JDQK', '借贷情况', 3, '3', '有，信用卡欠款、消费信贷等短期信用债务', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JDQK', '借贷情况', 4, '4', '有，亲朋之间借款', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JFKM', '积分科目', 1001, '1001', '自动积分', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JFKM', '积分科目', 1002, '1002', '手工调整', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JFKM', '积分科目', 1003, '1003', '它方捐赠', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JFKM', '积分科目', 1004, '1004', '失效积分', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JFKM', '积分科目', 1005, '1005', '消费积分', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JFKM', '积分科目', 1006, '1006', '积分回收', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JFLX', '积分类型', 1, '1', '证券交易积分', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JFLX', '积分类型', 2, '2', '信用交易积分', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JFLX', '积分类型', 3, '3', '体验积分', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JFLX', '积分类型', 4, '4', '行为积分', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGKHLB', '机构客户类别', 2, '2', '基金保险类', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGKHLB', '机构客户类别', 3, '3', '合作渠道类', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGKHLB', '机构客户类别', 4, '4', '产业类', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGKHLB', '机构客户类别', 5, '5', '中介类', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGKHLB', '机构客户类别', 6, '6', '其它类', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGLXRLB', '机构联系人类别', 1, '1', '董事长', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGLXRLB', '机构联系人类别', 2, '2', '总裁', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGLXRLB', '机构联系人类别', 4, '4', '法人代表', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGLXRLB', '机构联系人类别', 8, '8', '高管', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGLXRLB', '机构联系人类别', 16, '16', '经办人', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGLXRLB', '机构联系人类别', 32, '32', '业务负责人', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGLXRLB', '机构联系人类别', 64, '64', '关键部门负责人', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGLXRLB', '机构联系人类别', 128, '128', '业务关系人', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGLXRLB', '机构联系人类别', 256, '256', '社会关系人', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGZJLX', '机构证件类型', 0, '0', '技术监督局代码', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGZJLX', '机构证件类型', 1, '1', '营业执照', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGZJLX', '机构证件类型', 2, '2', '行政机关', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGZJLX', '机构证件类型', 3, '3', '社会团体', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGZJLX', '机构证件类型', 4, '4', '军队', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGZJLX', '机构证件类型', 5, '5', '武警', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGZJLX', '机构证件类型', 6, '6', '下属机构（具有主管单位批文号）', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGZJLX', '机构证件类型', 7, '7', '基金会', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGZJLX', '机构证件类型', 8, '8', '其它', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_CLSJ', '机构成立时间', 1, '1', '10年以上（不含）', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_CLSJ', '机构成立时间', 2, '2', '10年以下5年以上（含）', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_CLSJ', '机构成立时间', 3, '3', '5年以下', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_GM', '机构规模', 1, '1', '最近年度净资产＜1000万元', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_GM', '机构规模', 2, '2', '1000万元＜最近年度净资产≤3000万元', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_GM', '机构规模', 3, '3', '3000万元＜最近年度净资产≤5000万元', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_GM', '机构规模', 4, '4', '5000万元≤最近年度净资产', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_HYTZ', '机构行业特征', 1, '1', '垄断成熟行业', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_HYTZ', '机构行业特征', 2, '2', '高度成熟行业，竞争过分激烈，行业整体盈利能力低', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_HYTZ', '机构行业特征', 3, '3', '正在成长的行业，前景比较看好', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_HYTZ', '机构行业特征', 4, '4', '新兴行业，爆炸性比例增长，或市场尚未接受持观望态度', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_HYTZ', '机构行业特征', 5, '5', '高风险行业如小型餐饮业、小型服务业、娱乐休闲业等', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_JZCSYL', '机构净资产收益率', 1, 'Code1', '15%＜净资产收益率', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_JZCSYL', '机构净资产收益率', 2, 'Code2', '10%＜净资产收益率≤15%', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_JZCSYL', '机构净资产收益率', 3, 'Code3', '10%＜净资产收益率≤15%', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_JZCZZL', '机构净资产增长率', 1, 'Code1', '连续3年增长', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_JZCZZL', '机构净资产增长率', 2, 'Code2', '连续2年未有增长', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_JZCZZL', '机构净资产增长率', 3, 'Code3', '连续2年下降', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_LXBZBS', '机构利息保障倍数', 1, 'Code1', '连续3年增长', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_LXBZBS', '机构利息保障倍数', 2, 'Code2', '连续2年未有增长', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_LXBZBS', '机构利息保障倍数', 3, 'Code3', '连续2年下降', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_SDBL', '机构速动比率', 1, 'Code1', '1＜速动比例', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_SDBL', '机构速动比率', 2, 'Code2', '0.5≤速动比例≤1', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_SDBL', '机构速动比率', 3, 'Code3', '速动比例＜0.5', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_TZGM', '机构投资规模', 1, 'Code1', '1000万＜资产规模', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_TZGM', '机构投资规模', 2, 'Code2', '200万＜资产规模≤1000万', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_TZGM', '机构投资规模', 3, 'Code3', '资产规模≤200万', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_TZJY', '机构投资经验', 1, 'Code1', '10年＜入市时间', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_TZJY', '机构投资经验', 2, 'Code2', '3年＜入市时间≤10年', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_TZJY', '机构投资经验', 3, 'Code3', '入市时间≤3年', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_XJLLZZL', '机构现金流量增长率', 1, 'Code1', '连续3年平稳增长', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_XJLLZZL', '机构现金流量增长率', 2, 'Code2', '连续2年未见增长', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_XJLLZZL', '机构现金流量增长率', 3, 'Code3', '连续2年下降', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_ZCFZL', '机构资产负债率', 1, 'Code1', '资产负债率≤50%', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_ZCFZL', '机构资产负债率', 2, 'Code2', '50%＜资产负债率≤65%', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_ZCFZL', '机构资产负债率', 3, 'Code3', '65%＜资产负债率', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_ZHQK', '机构账户情况', 1, 'Code1', '5%＜普通账户内标的证券占总流通市值', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_ZHQK', '机构账户情况', 2, 'Code2', '3%＜普通账户内标的证券占总流通市值≤5%', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_ZHQK', '机构账户情况', 3, 'Code3', '普通账户内标的证券占总流通市值≤3%', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_ZHSYSP', '机构账户收益水平', 1, 'Code1', '15%＜账户年收益率', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_ZHSYSP', '机构账户收益水平', 2, 'Code2', '融资融券利率＜账户年收益率≤15%', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_ZHSYSP', '机构账户收益水平', 3, 'Code3', '3＜账户年收益率≤融资融券利率', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_ZHSYSP', '机构账户收益水平', 4, 'Code4', '账户处于亏损状态', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_ZZL', '机构资产周转率', 1, '1', '年资产周转率≤3次', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_ZZL', '机构资产周转率', 2, '2', '3次＜年资产周转率≤6次', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_ZZL', '机构资产周转率', 3, '3', '6次＜年资产周转率≤10次', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JG_ZZL', '机构资产周转率', 4, '4', '10次＜年资金周转率', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJCFFS', '基金拆分方式', 1, '1', '份额折算', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJCFFS', '基金拆分方式', 2, '2', '份额转换', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJCFFS', '基金拆分方式', 3, '3', '份额拆分', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFHFS', '基金分红方式', 1, '1', '红利转投', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFHFS', '基金分红方式', 2, '2', '现金分红', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFHFS_SZ', '基础分红方式_商智', 1, '1', '红利转投资', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFHFS_SZ', '基础分红方式_商智', 2, '2', '现金分红', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFXCSNL', '基金风险承受能力', 1, '1', '保守型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFXCSNL', '基金风险承受能力', 2, '2', '稳健型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFXCSNL', '基金风险承受能力', 3, '3', '积极型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFXCSNL', '基金风险承受能力', 4, '4', '激进型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFXCSNL', '基金风险承受能力', 5, '5', '平衡型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFXPJ', '基金风险评级', 11, 'Code5', '高风险1', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFXPJ', '基金风险评级', 12, 'Code4', '高风险2', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFXPJ', '基金风险评级', 13, 'Code3', '高风险3', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFXPJ', '基金风险评级', 14, 'Code2', '高风险4', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFXPJ', '基金风险评级', 15, 'Code1', '高风险5', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFXPJ', '基金风险评级', 21, 'Code8', '中风险1', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFXPJ', '基金风险评级', 22, 'Code7', '中风险2', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFXPJ', '基金风险评级', 23, 'Code6', '中风险3', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFXPJ', '基金风险评级', 31, 'Code10', '较低风险1', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFXPJ', '基金风险评级', 32, 'Code9', '较低风险2', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJFXPJ', '基金风险评级', 41, 'Code12', '低风险1', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJCD', '紧急程度', 1, '1', '一般', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJCD', '紧急程度', 2, '2', '紧急', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JJCD', '紧急程度', 3, '3', '特急', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TXFS', '发送方式', 1, '1', '内部消息', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TXFS', '发送方式', 2, '2', '手机短信', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TXFS', '发送方式', 3, '3', 'EMail', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RCBQ', '日程标签', 1, '1', '重要', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RCBQ', '日程标签', 2, '2', '商务', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RCBQ', '日程标签', 3, '3', '个人', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RCBQ', '日程标签', 4, '4', '假期', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RCBQ', '日程标签', 5, '5', '必须出席', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RCBQ', '日程标签', 6, '6', '需要出差', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RCBQ', '日程标签', 7, '7', '需要准备', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RCBQ', '日程标签', 8, '8', '生日', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RCBQ', '日程标签', 9, '9', '纪念日', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RCBQ', '日程标签', 10, '10', '电话呼叫', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CFZQ', '提醒周期', 1, '1', '按日', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CFZQ', '提醒周期', 2, '2', '按周', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CFZQ', '提醒周期', 3, '3', '按月', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', '时间分段', 0, '0', '00:00', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', '时间分段', 1, '1', '00:30', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', '时间分段', 2, '2', '01:00', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', '时间分段', 3, '3', '01:30', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', '时间分段', 4, '4', '02:00', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', '时间分段', 5, '5', '02:30', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', '时间分段', 6, '6', '03:00', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', '时间分段', 7, '7', '03:30', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', '时间分段', 8, '8', '04:00', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', '时间分段', 9, '9', '04:30', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', '时间分段', 10, '10', '05:00', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', '时间分段', 11, '11', '05:30', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', '时间分段', 12, '12', '06:00', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', '时间分段', 13, '13', '06:30', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', '时间分段', 14, '14', '07:00', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', '时间分段', 15, '15', '07:30', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', '时间分段', 16, '16', '08:00', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', '时间分段', 17, '17', '08:30', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', '时间分段', 18, '18', '09:00', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', '时间分段', 19, '19', '09:30', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', '时间分段', 20, '20', '10:00', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', '时间分段', 21, '21', '10:30', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', '时间分段', 22, '22', '11:00', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', '时间分段', 23, '23', '11:30', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', '时间分段', 24, '24', '12:00', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', '时间分段', 25, '25', '12:30', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', '时间分段', 26, '26', '13:00', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', '时间分段', 27, '27', '13:30', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', '时间分段', 28, '28', '14:00', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', '时间分段', 29, '29', '14:30', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', '时间分段', 30, '30', '15:00', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', '时间分段', 31, '31', '15:30', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', '时间分段', 32, '32', '16:00', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', '时间分段', 33, '33', '16:30', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', '时间分段', 34, '34', '17:00', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', '时间分段', 35, '35', '17:30', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', '时间分段', 36, '36', '18:00', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', '时间分段', 37, '37', '18:30', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', '时间分段', 38, '38', '19:00', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', '时间分段', 39, '39', '19:30', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', '时间分段', 40, '40', '20:00', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', '时间分段', 41, '41', '20:30', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', '时间分段', 42, '42', '21:00', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', '时间分段', 43, '43', '21:30', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', '时间分段', 44, '44', '22:00', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', '时间分段', 45, '45', '22:30', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', '时间分段', 46, '46', '23:00', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', '时间分段', 47, '47', '23:30', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DailyTime', '时间分段', 48, '48', '23:59', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XWFL', '新闻分类', 1, '1', '内部新闻', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XWFL', '新闻分类', 2, '2', '文件与通告', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XWFL', '新闻分类', 3, '3', '行业动态', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XWFL', '新闻分类', 4, '4', '市场动态', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XWFL', '新闻分类', 5, '5', '产品与技术', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XWFL', '新闻分类', 6, '6', '推荐文章', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XWFL', '新闻分类', 7, '7', '畅所欲言', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XWFL', '新闻分类', 8, '8', '每日邮件', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FBFW', '客户开放范围', 1, '1', '内部', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FBFW', '客户开放范围', 2, '2', '客户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FBFW', '客户开放范围', 3, '3', '公共', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GXFW', '日程共享属性', 1, '1', '共享', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GXFW', '日程共享属性', 2, '2', '私有', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LB.GROUP', '组分类', 1, '1', '项目类', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LB.GROUP', '组分类', 2, '2', '任务类', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LB.GROUP', '组分类', 3, '3', '其他', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LB.ORGANIZATION', '组织类型', 0, '0', '总公司', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LB.ORGANIZATION', '组织类型', 1, '1', '分公司', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LB.ORGANIZATION', '组织类型', 2, '2', '营业部', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LB.ORGANIZATION', '组织类型', 3, '3', '服务部', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LB.ORGANIZATION', '组织类型', 4, '4', '部门', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JRCPFL', '金融产品分类', 3, '3', '私募股票基金', 0, 0, '保险');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JRCPFL', '金融产品分类', 4, '4', '私募股权', 0, 0, '保险');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JRCPFL', '金融产品分类', 10, '10', '衍生品', 0, 0, '保险');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JRCPFL', '金融产品分类', 8, '8', '保险产品', 0, 0, '保险');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JRCPFL', '金融产品分类', 1, '1', '开放式基金', 0, 0, '保险');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JRCPFL', '金融产品分类', 6, '6', '券商资管产品', 0, 0, '保险');
commit;
prompt 1000 records committed...
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JRCPFL', '金融产品分类', 7, '7', '银行理财产品', 0, 0, '保险');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JRCPFL', '金融产品分类', 9, '9', '私募债', 0, 0, '保险');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JRCPFL', '金融产品分类', 5, '5', '信托产品', 0, 0, '保险');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_ALOT_ST', '任务中心_分配状态', 0, '0', '未分解、未分配', 0, 0, '任务中心');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_ALOT_ST', '任务中心_分配状态', 1, '1', '已分解', 0, 0, '任务中心');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_ALOT_ST', '任务中心_分配状态', 2, '2', '已分配', 0, 0, '任务中心');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_CTL_TP', '任务中心_控件类型', 1, '1', '数值型', 0, 0, '任务中心');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_CTL_TP', '任务中心_控件类型', 2, '2', '文本编辑框', 0, 0, '任务中心');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_CTL_TP', '任务中心_控件类型', 3, '3', '多行编辑域', 0, 0, '任务中心');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_CTL_TP', '任务中心_控件类型', 4, '4', '选择框', 0, 0, '任务中心');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_EXEC_ST', '任务中心_执行状态', -1, '-1', '未下达', 0, 0, '任务中心');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_EXEC_ST', '任务中心_执行状态', 1, '1', '处理中', 0, 0, '任务中心');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_EXEC_ST', '任务中心_执行状态', 2, '2', '已完成', 0, 0, '任务中心');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_EXEC_ST', '任务中心_执行状态', 3, '3', '已终止', 0, 0, '任务中心');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_IDX_TP', '任务中心_指标类型', 1, '1', '自动指标', 0, 0, '任务中心');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_IDX_TP', '任务中心_指标类型', 2, '2', '非统计填报指标', 0, 0, '任务中心');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_IDX_TP', '任务中心_指标类型', 3, '3', '统计填报指标', 0, 0, '任务中心');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_IMPT', '任务中心_重要程度', 1, '1', '非常重要', 0, 0, '任务中心');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_IMPT', '任务中心_重要程度', 2, '2', '重要', 0, 0, '任务中心');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_IMPT', '任务中心_重要程度', 3, '3', '一般', 0, 0, '任务中心');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_SPVS_MODE', '任务中心_督办方式', 1, '1', '仅手工', 0, 0, '任务中心');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_SPVS_MODE', '任务中心_督办方式', 2, '2', '任务下派后', 0, 0, '任务中心');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_SPVS_MODE', '任务中心_督办方式', 3, '3', '任务截止前', 0, 0, '任务中心');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_SPVS_MODE', '任务中心_督办方式', 4, '4', '定时督办', 0, 0, '任务中心');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_SRVC_MODE', '任务中心_服务方式', 1, '1', '电话', 0, 0, '任务中心');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_SRVC_MODE', '任务中心_服务方式', 2, '2', '上门拜访', 0, 0, '任务中心');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_SRVC_MODE', '任务中心_服务方式', 98, '98', '问卷调查', 0, 0, '任务中心');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_SRVC_MODE', '任务中心_服务方式', 99, '99', '消息推送', 0, 0, '任务中心');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_SRVC_ST', '任务中心_服务状态', -1, '-1', '无法服务', 0, 0, '任务中心');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_SRVC_ST', '任务中心_服务状态', 0, '0', '未服务', 0, 0, '任务中心');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_SRVC_ST', '任务中心_服务状态', 1, '1', '已服务', 0, 0, '任务中心');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_STATC_MODE', '任务中心_统计方式', 1, '1', '合计', 0, 0, '任务中心');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_STATC_MODE', '任务中心_统计方式', 2, '2', '平均', 0, 0, '任务中心');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_STATC_MODE', '任务中心_统计方式', 3, '3', '最大值', 0, 0, '任务中心');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_STATC_MODE', '任务中心_统计方式', 4, '4', '最小值', 0, 0, '任务中心');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_STRT_USE_ST', '任务中心_启用状态', 0, '0', '禁用', 0, 0, '任务中心');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_STRT_USE_ST', '任务中心_启用状态', 1, '1', '启用', 0, 0, '任务中心');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_TASK_ST', '任务中心_任务状态', -1, '-1', '未下达', 0, 0, '任务中心');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_TASK_ST', '任务中心_任务状态', 0, '0', '编辑中', 0, 0, '任务中心');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_TASK_ST', '任务中心_任务状态', 1, '1', '处理中', 0, 0, '任务中心');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_TASK_ST', '任务中心_任务状态', 2, '2', '已完成', 0, 0, '任务中心');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_TASK_ST', '任务中心_任务状态', 3, '3', '已终止', 0, 0, '任务中心');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_CT_TASK_ST', '任务中心_任务状态', 4, '4', '已过期', 0, 0, '任务中心');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_SUBCL', '任务中心_MOT事件分类', 1, '1', '持仓动态应对策略', 0, 0, '任务中心');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_SUBCL', '任务中心_MOT事件分类', 2, '2', '业务提醒', 0, 0, '任务中心');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_SUBCL', '任务中心_MOT事件分类', 3, '3', '资金动向', 0, 0, '任务中心');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_SUBCL', '任务中心_MOT事件分类', 4, '4', '客户基本信息', 0, 0, '任务中心');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_SUBCL', '任务中心_MOT事件分类', 5, '5', '客户特征', 0, 0, '任务中心');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_SUBCL', '任务中心_MOT事件分类', 6, '6', '信用类', 0, 0, '任务中心');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_TRTMRQMT', '任务中心_MOT执行类型', 1, '1', '必做', 0, 0, '任务中心');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_TRTMRQMT', '任务中心_MOT执行类型', 2, '2', '选做', 0, 0, '任务中心');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_TRTMRQMT', '任务中心_MOT执行类型', 3, '3', '自动且必做', 0, 0, '任务中心');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TASK_TRTMRQMT', '任务中心_MOT执行类型', 4, '4', '自动且选做', 0, 0, '任务中心');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPTZPZ_SDX', '产品投资品种_适当性', 1, '01', '固定收益类', 0, 0, '适当性新规');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPTZPZ_SDX', '产品投资品种_适当性', 2, '02', '权益类', 0, 0, '适当性新规');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPTZPZ_SDX', '产品投资品种_适当性', 3, '03', '衍生品类', 0, 0, '适当性新规');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPTZPZ_SDX', '产品投资品种_适当性', 4, '04', '复杂或高风险类', 0, 0, '适当性新规');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPTZPZ_SDX', '产品投资品种_适当性', 99, '99', '其他类', 0, 0, '适当性新规');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPTZQX_SDX', '产品投资期限_适当性', 0, '0', '0到1年', 0, 0, '适当性新规');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPTZQX_SDX', '产品投资期限_适当性', 1, '1', '0到5年', 0, 0, '适当性新规');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPTZQX_SDX', '产品投资期限_适当性', 2, '2', '1到5年', 0, 0, '适当性新规');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPTZQX_SDX', '产品投资期限_适当性', 4, '4', '5年以上', 0, 0, '适当性新规');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPYQSY_SDX', '产品预期收益_适当性', 0, '0', '期望收益比较低，尽可能保证本金安全', 0, 0, '适当性新规');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPYQSY_SDX', '产品预期收益_适当性', 1, '1', '期望产生一定的收益，可以承担一定的投资风险', 0, 0, '适当性新规');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPYQSY_SDX', '产品预期收益_适当性', 2, '2', '期望产生较大的收益，可以承担较大的投资风险', 0, 0, '适当性新规');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPYQSY_SDX', '产品预期收益_适当性', 3, '3', '期望实现资本大幅增长，愿意承担很大的投资风险', 0, 0, '适当性新规');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZPZ_SDX', '客户投资品种_适当性', 1, '01', '债券、货币市场基金、债券基金等固定收益类投资品种', 0, 0, '适当性新规');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZPZ_SDX', '客户投资品种_适当性', 2, '02', '股票、混合型基金、偏股型基金、股票型基金等权益类投资品种', 0, 0, '适当性新规');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZPZ_SDX', '客户投资品种_适当性', 3, '03', '期货、场内期权、融资融券等', 0, 0, '适当性新规');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZPZ_SDX', '客户投资品种_适当性', 4, '04', '复杂金融产品或服务', 0, 0, '适当性新规');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZPZ_SDX', '客户投资品种_适当性', 99, '99', '其他产品或服务', 0, 0, '适当性新规');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZQX_SDX', '客户投资期限_适当性', 0, '0', '无特别要求', 0, 0, '适当性新规');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZQX_SDX', '客户投资期限_适当性', 1, '1', '0到5年', 0, 0, '适当性新规');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZQX_SDX', '客户投资期限_适当性', 4, '4', '0到1年', 0, 0, '适当性新规');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YQSY_SDX', '客户预期收益_适当性', 0, '0', '期望收益比较低，尽可能保证本金安全', 0, 0, '适当性新规');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YQSY_SDX', '客户预期收益_适当性', 1, '1', '期望产生一定的收益，可以承担一定的投资风险', 0, 0, '适当性新规');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YQSY_SDX', '客户预期收益_适当性', 2, '2', '期望产生较大的收益，可以承担较大的投资风险', 0, 0, '适当性新规');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YQSY_SDX', '客户预期收益_适当性', 3, '3', '期望实现资本大幅增长，愿意承担很大的投资风险', 0, 0, '适当性新规');
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('AuditType', '审核类别', 0, '0', '用户权限', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('AuditType', '审核类别', 1, '1', '角色权限', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('AuditType', '审核类别', 2, '2', '组织权限', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('AuditType', '审核类别', 3, '3', '用户范围', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('AuditType', '审核类别', 4, '4', '角色范围', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BBFXLX', '报表分析类型', 1, '1', '报表查询时长分析', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BBFXLX', '报表分析类型', 2, '2', '报表使用情况分析', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BBFXLX', '报表分析类型', 3, '3', '报表查询日志分析', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BGCLZT', '报告处理状态', 1, '1', '提交申请', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BGCLZT', '报告处理状态', 2, '2', '撰写完成', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BGCLZT', '报告处理状态', 3, '3', '已完成', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BGCLZT', '报告处理状态', 4, '4', '完成已发送', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BGCLZT', '报告处理状态', 5, '5', '审核不通过', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BGLX', '报告类型', 1, '1', '账户诊断', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BGLX', '报告类型', 2, '2', '个股诊断', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BGLY', '变更理由', 1, '1', '邮寄地址错误', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BGLY', '变更理由', 2, '2', '手机号码变更', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BGLY', '变更理由', 3, '3', '邮件地址错误', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BGLY', '变更理由', 4, '4', '其他', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BMKHCS', '部门考核参数', 1, '1', '育成权重', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BMKHCS', '部门考核参数', 2, '2', '育成时效', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ', '币种', 1, '1', '人民币', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ', '币种', 2, '2', '港币', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ', '币种', 3, '3', '美元', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZHDZ', '行动方案标准化动作', 1, '1', '短信', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZHDZ', '行动方案标准化动作', 2, '2', '电子邮件', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZHDZ', '行动方案标准化动作', 4, '4', '登记服务', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZZT', '编制状态', 0, '0', '编制中', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZZT', '编制状态', 1, '1', '审核通过', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZZT', '编制状态', 2, '2', '审核不通过', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZZT', '编制状态', 3, '3', '编制完成', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZZT', '编制状态', 4, '4', '审核中', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 1, '1', '香港元', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 2, '2', '伯利兹元', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 3, '3', '马尔加什法郎', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 4, '4', 'UAE迪拉姆', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 5, '5', '乌吉亚', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 6, '6', 'Mvdol', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 7, '7', '克瓦查', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 8, '8', '卢旺达法郎', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 9, '9', '俄罗斯卢布', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 10, '10', '荷属安的列斯盾', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 11, '11', '佛得角埃斯库多', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 12, '12', '钯', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 13, '13', '乌兹别克斯坦苏姆', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 14, '14', '东加勒比元', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 15, '15', 'CFA法郎BEAC=', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 16, '16', '直布罗陀镑', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 17, '17', '兰特', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 18, '18', '可自由兑换标记', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 19, '19', '牙买加元', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 20, '20', '墨西哥比索', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 21, '21', '阿鲁巴盾', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 22, '22', '(次日)*', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 23, '23', '努尔特鲁姆', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 24, '24', '利比里亚元', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 25, '25', '离岸版人民币', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 26, '26', '冰岛克朗', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 27, '27', '坦桑尼亚先令', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 28, '28', '巴巴多斯元', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 29, '29', '智利比索', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 30, '30', '未包括的交易货币代码指定为：', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 31, '31', '俄罗斯卢布', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 32, '32', '乌干达先令', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 33, '33', '捷克克朗', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 34, '34', '葡萄牙埃斯库多', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 35, '35', '罗提', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 36, '36', '卡塔尔里亚尔', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 37, '37', '开曼群岛元', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 38, '38', '列克', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 39, '39', '瑞士法郎', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 40, '40', '土耳其里拉', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 41, '41', '巴波亚', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 42, '42', '美元', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 43, '43', '欧洲货币合成单', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 44, '44', '黄金', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 45, '45', '纳克法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 46, '46', '德国马克', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 47, '47', '人民币元', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 48, '48', '第纳尔', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 49, '49', '基普', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 50, '50', '(同日)*', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 51, '51', '古德', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 52, '52', '马纳特', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 53, '53', '邦加', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 54, '54', '斐济元', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 55, '55', '埃及镑', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 56, '56', '英镑', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 57, '57', '古巴比索', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 58, '58', '百慕大元', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 59, '59', '安道尔比塞塔', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 60, '60', '澳门元', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 61, '61', '塞地', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 62, '62', '爱尔兰镑', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 63, '63', '苏里南盾', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 64, '64', '马克', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 65, '65', '达拉西', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 66, '66', '拉脱维亚拉特', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 67, '67', '先令', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 68, '68', '铂白金', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 69, '69', '文莱元', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 70, '70', '几内亚比绍比索', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 71, '71', '其他', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 72, '72', '新谢客尔', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 73, '73', '塞浦路斯镑', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 74, '74', '列弗', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 75, '75', '塔卡', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 76, '76', '欧洲帐户9单位 (E.U.A.-9)', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 77, '77', '瑞典克朗', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 78, '78', '纳米比亚元', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 79, '79', '奈拉', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 80, '80', '黄金法郎', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 81, '81', '巴基斯坦卢比', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 82, '82', '欧元', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 83, '83', 'CFP法郎', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 84, '84', '阿塞拜疆马纳特', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 85, '85', '刚果法郎', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 86, '86', '哥伦比亚比索', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 87, '87', '澳大利亚元', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 88, '88', '福林', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 89, '89', '荷兰盾', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 90, '90', '克罗地亚库纳', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 91, '91', '黎巴嫩镑', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 92, '92', '加元', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 93, '93', '麦梯卡尔', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 94, '94', '立陶宛', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 95, '95', '埃塞俄比亚比尔', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 96, '96', '意大利里拉', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 97, '97', '索马里先令', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 98, '98', '圭亚那元', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 99, '99', '几内亚法郎', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 100, '100', '瑞尔', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 101, '101', '格里夫纳', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 102, '102', '非律宾比索', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 103, '103', '巴哈马元', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 104, '104', '印度卢比', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 105, '105', '为测试特别保留的代码', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 106, '106', '图格里克', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 107, '107', '拉里', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 108, '108', '索莫尼', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 109, '109', '阿富汗尼', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 110, '110', '格查尔', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 111, '111', '苏丹第纳尔', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 112, '112', '坚戈', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 113, '113', '萨尔瓦多科郎', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 114, '114', '丹麦克朗', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 115, '115', '阿根廷比索', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 116, '116', '也门里亚尔', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 117, '117', '毛里求斯卢比', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 118, '118', '阿尔及利亚第纳尔', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 119, '119', '哥斯达黎加科郎', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 120, '120', '克瓦查', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 121, '121', '阿曼里亚尔', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 122, '122', '托拉尔', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 123, '123', '马来西亚林吉特', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 124, '124', '泰铢', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 125, '125', '福克兰群岛镑', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 126, '126', '盾', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 127, '127', '索姆', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 128, '128', '巴林第纳尔', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 129, '129', '日元', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 130, '130', '法国法郎', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 131, '131', '乌拉圭比索', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 132, '132', '卢比', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 133, '133', '塞舌尔卢比', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 134, '134', '斯里兰卡卢比', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 135, '135', '所罗门群岛元', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 136, '136', '特别提款权', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 137, '137', '吉布提法郎', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 138, '138', '伊拉克第纳尔', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 139, '139', '约旦第纳尔', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 140, '140', '北朝鲜圆', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 141, '141', '津巴布韦元', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 142, '142', '基那', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 143, '143', '金科多巴', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 144, '144', 'UIC法郎', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 145, '145', '玻利瓦诺', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 146, '146', '新台湾元', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 147, '147', '德拉克马', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 148, '148', '伦皮拉', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 149, '149', '卢森堡法郎', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 150, '150', '利比亚第纳尔', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 151, '151', '普拉', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 152, '152', 'CFA法郎BCEAO+', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 153, '153', '瓦图', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 154, '154', '西班牙比塞塔', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 155, '155', '银', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 156, '156', '挪威克朗', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 157, '157', '尼泊尔卢比', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 158, '158', '瓜拉尼', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 159, '159', '克罗姆', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 160, '160', '南斯拉夫第纳尔', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 161, '161', '保加利亚列弗', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 162, '162', '发展单位*', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 163, '163', '索尔', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 164, '164', '里兰吉尼', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 165, '165', '白俄罗斯卢布', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 166, '166', '宽扎', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 167, '167', '沙特里亚尔', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 168, '168', '欧洲帐户17单位(E.U.A-17)', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 169, '169', '叙利亚镑', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 170, '170', '兹罗提', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 171, '171', '马尔他里拉', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 172, '172', '科威特第纳尔', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 173, '173', '新加坡元', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 174, '174', '摩尔瓦多列伊', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 175, '175', '圣赫勒拿磅', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 176, '176', '韩元', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 177, '177', '特立尼达和多巴哥元', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 178, '178', '肯尼亚先令', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 179, '179', '新西兰元', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 180, '180', '科摩罗法郎', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 181, '181', 'Mexican Unidad de inversion', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 182, '182', '斯洛伐克克朗', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 183, '183', '利昂', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 184, '184', '摩洛哥迪拉姆', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 185, '185', '多布拉', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 186, '186', '多米尼加比索', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 187, '187', '比利时法郎', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 188, '188', '伊朗里亚尔', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 189, '189', '欧洲货币单位 (E.M.U.-6)***', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 190, '190', '亚美尼亚达姆', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 191, '191', '突尼斯第纳尔', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 192, '192', '东帝汶埃斯库多', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 193, '193', '塔拉', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 194, '194', '布隆迪法郎', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 195, '195', '巴西瑞尔', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 196, '196', '缅元', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 197, '197', '列伊', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('BZ_SZ', '币种_商智', 198, '198', '卢菲亚', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CBJZLX', '成本记帐类型', 1, '1', '一次性成本', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CBJZLX', '成本记帐类型', 2, '2', '摊薄成本', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '座席话务操作', 1, '1', '签入', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '座席话务操作', 2, '2', '签出', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '座席话务操作', 3, '3', '摘机', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '座席话务操作', 4, '4', '挂机', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '座席话务操作', 5, '5', '会议', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '座席话务操作', 6, '6', '会议结束', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '座席话务操作', 7, '7', '转IVR', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '座席话务操作', 8, '8', '转IVR结束', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '座席话务操作', 9, '9', '保持', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '座席话务操作', 10, '10', '保持结束', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '座席话务操作', 11, '11', '监听', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '座席话务操作', 12, '12', '监听结束', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '座席话务操作', 13, '13', '示忙', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '座席话务操作', 14, '14', '示忙结束(示闲)', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '座席话务操作', 15, '15', '呼叫后工作', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '座席话务操作', 16, '16', '呼叫后工作结束', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '座席话务操作', 17, '17', '辅助工作', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '座席话务操作', 18, '18', '辅助工作结束', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '座席话务操作', 19, '19', '求助', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '座席话务操作', 20, '20', '求助结束', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '座席话务操作', 21, '21', '呼出', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '座席话务操作', 22, '22', '呼出结束', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '座席话务操作', 23, '23', '转接', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '座席话务操作', 24, '24', 'webchat-签入', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '座席话务操作', 25, '25', 'webchat-签出', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '座席话务操作', 26, '26', 'webchat-开始通话', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '座席话务操作', 27, '27', 'webchat-结束通话', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '座席话务操作', 28, '28', 'webchat-开始会议', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '座席话务操作', 29, '29', 'webchat-结束会议', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '座席话务操作', 30, '30', 'webchat-开始监听', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '座席话务操作', 31, '31', 'webchat-结束监听', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '座席话务操作', 32, '32', 'webchat-开始示忙', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_HWCZ', '座席话务操作', 33, '33', 'webchat-结束示忙', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_THLX', '通话类型', 1, 'Code1', '语音', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_THLX', '通话类型', 2, 'Code2', 'WEBCHAT', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_ZXQX', '座席权限', 1, '1', '语音座席基本权限', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_ZXQX', '座席权限', 2, '2', '会议', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_ZXQX', '座席权限', 4, '4', '外呼', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_ZXQX', '座席权限', 8, '8', '管理', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_ZXQX', '座席权限', 16, '16', '监听', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_ZXQX', '座席权限', 32, '32', '接管', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_ZXQX', '座席权限', 64, '64', '强制签出', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_ZXQX', '座席权限', 128, '128', '强制示闲', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_ZXQX', '座席权限', 256, '256', '强制示忙', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_ZXQX', '座席权限', 512, '512', 'Webchat基本权限', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_ZXQX', '座席权限', 1024, '1024', 'Webchat-会议', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_ZXQX', '座席权限', 2048, '2048', 'Webchat-监听', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_ZXQX', '座席权限', 4096, '4096', 'Webchat-接管', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_ZXQX', '座席权限', 8192, '8192', 'Webchat-强制签出', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_ZXQX', '座席权限', 16384, '16384', 'Webchat-强制示闲', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CC_ZXQX', '座席权限', 32768, '32768', 'Webchat-强制示忙', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CDFL', '菜单分类', 1, '1', '工作', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CDFL', '菜单分类', 2, '2', '客户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CDFL', '菜单分类', 3, '3', '产品', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CDFL', '菜单分类', 4, '4', '外部', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CFKHLX', '财富客户类型', 1, '1', '财富客户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CFKHLX', '财富客户类型', 2, '2', '大众客户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CFKHLX', '财富客户类型', 3, '3', '机构客户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CFKHLX', '财富客户类型', 4, '4', '其他客户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CI_TZPZ', '投资品种_CI_CLIENTPREFER', 1, '1', '股票、混合型基金、偏股型基金、股票型基金等权益类投资品种', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CI_TZPZ', '投资品种_CI_CLIENTPREFER', 2, '2', '债券、货币市场基金、债券基金等固定收益类投资品种', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CI_TZPZ', '投资品种_CI_CLIENTPREFER', 3, '3', '期货、融资融券', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CI_TZPZ', '投资品种_CI_CLIENTPREFER', 4, '4', '复杂金融产品', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CI_TZPZ', '投资品种_CI_CLIENTPREFER', 5, '5', '其他产品', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CI_TZQX', '投资期限_CI_CLIENTPREFER', 1, '1', '0到1年', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CI_TZQX', '投资期限_CI_CLIENTPREFER', 2, '2', '1到5年', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CI_TZQX', '投资期限_CI_CLIENTPREFER', 3, '3', '1到3年', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CI_TZQX', '投资期限_CI_CLIENTPREFER', 4, '4', '3到5年', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CI_TZQX', '投资期限_CI_CLIENTPREFER', 5, '5', '5年以上', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CLBS', '存量标识', 1, '1', '普通', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CLBS', '存量标识', 2, '2', '基金户', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CLBS', '存量标识', 4, '4', '流失户', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CLBS', '存量标识', 8, '8', '准休眠户', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CLBS', '存量标识', 16, '16', '融资融券', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CLBS', '存量标识', 32, '32', '约定购回', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CLZT', '处理状态', 1, 'Code 1', '已分发', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CLZT', '处理状态', 2, 'Code 2', '处理中', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CLZT', '处理状态', 3, 'Code 3', '处理结束', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CLZT', '处理状态', 4, 'Code 4', '已回复', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CLZT', '处理状态', 5, 'Code 5', '已作废', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPCLLB', '产品策略类别', 1, '1', '基础产品', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPCLLB', '产品策略类别', 2, '2', '收费产品', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPCLLB', '产品策略类别', 3, '3', '会员产品', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPCLLB', '产品策略类别', 4, '4', '投顾产品', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPCXQD', '接口渠道', 0, '0', 'CRM', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPCXQD', '接口渠道', 1, '1', 'OCRM', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPCXQD', '接口渠道', 3, '3', '手机开户', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPCXQD', '接口渠道', 5, '5', '中投商城', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPCXQD', '接口渠道', 6, '6', '金融商城', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPFXDJ', '产品风险等级', 1, '1', '低', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPFXDJ', '产品风险等级', 2, '2', '中低', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPFXDJ', '产品风险等级', 3, '3', '中', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPFXDJ', '产品风险等级', 4, '4', '中高', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPFXDJ', '产品风险等级', 5, '5', '高', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPFXDJ_SZ', '产品风险等级_商智', 1, '1', '中', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPFXDJ_SZ', '产品风险等级_商智', 2, '2', '中低', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPFXDJ_SZ', '产品风险等级_商智', 3, '3', '低', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPFXDJ_SZ', '产品风险等级_商智', 4, '4', '高', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPFXDJ_SZ', '产品风险等级_商智', 5, '5', '中高', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '产品类别', 1, '1', '复利防御', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '产品类别', 2, '2', '新股申购策略', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '产品类别', 3, '3', '新股定价策略', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '产品类别', 4, '4', '债券市场阶段性研究', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '产品类别', 5, '5', '方向配置', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '产品类别', 6, '6', '机构数据监控', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '产品类别', 7, '7', '方向配置月报', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '产品类别', 8, '8', '方向配置特刊', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '产品类别', 9, '9', '财富泰山早班车', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '产品类别', 10, '10', '齐鲁早班车', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '产品类别', 11, '11', '一周要闻回顾', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '产品类别', 12, '12', '财富泰山看数据', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '产品类别', 13, '13', '齐鲁盘中金', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '产品类别', 14, '14', '财富泰山月报', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '产品类别', 15, '15', '趋势交易', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '产品类别', 16, '16', '热点搜银', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '产品类别', 17, '17', '融资融券周策略', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '产品类别', 18, '18', '股指期货周策略', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '产品类别', 19, '19', '齐鲁多空宝', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '产品类别', 20, '20', '齐鲁多空宝周刊', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '产品类别', 21, '21', '基金池和基金组合', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '产品类别', 22, '22', '基金快讯', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '产品类别', 23, '23', '基金观察', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '产品类别', 24, '24', '重点基金投资建议', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '产品类别', 25, '25', '看市场', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '产品类别', 26, '26', '量化交易策略', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '产品类别', 27, '27', '全市场配置组合', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '产品类别', 28, '28', '权益类配置型投资组合', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '产品类别', 29, '29', '大宗品投资组合', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '产品类别', 30, '30', '明星分析师投资组合', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '产品类别', 31, '31', '量化投资组合', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLB', '产品类别', 32, '32', '现金管理', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLX', '产品类型', 1, '1', '资讯类', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLX', '产品类型', 2, '2', '活动类', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLX', '产品类型', 3, '3', '工具类', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLX', '产品类型', 4, '4', '其它类', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLYZD', '产品来源字典', 1, '1', '基金公司', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLYZD', '产品来源字典', 2, '2', '外部信托公司', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLYZD', '产品来源字典', 3, '3', '公司内连类产品', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPLYZD', '产品来源字典', 4, '4', '其他', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPPFXM', '产品评分项目', 1, 'KXX', '可行性', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPPFXM', '产品评分项目', 2, 'ZYX', '专业性', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPPFXM', '产品评分项目', 3, 'XY', '效益', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPQX', '流动性', 2, '2', '6-12个月', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPQX', '流动性', 3, '3', '12-18个月', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPQX', '流动性', 4, '4', '18-24个月', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPQX', '流动性', 5, '5', '2年以上', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPXSJB', '产品销售级别', 0, '0', '非主力', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPXSJB', '产品销售级别', 1, '1', '主力', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPXSLX', '产品销售类型', 0, '0', '非主力', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPXSLX', '产品销售类型', 1, '1', '主力', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CRMWTXQCLR', 'CRM问题需求处理人', 0, '0', '胡冬伟', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CRMWTXQCLR', 'CRM问题需求处理人', 1, '1', '莫亦乐', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CRMWTXQCLR', 'CRM问题需求处理人', 2, '2', '王剑', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CRMWTXQCLR', 'CRM问题需求处理人', 3, '3', '王璇', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CRMWTXQCLR', 'CRM问题需求处理人', 4, '4', '吴俊', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CRMWTXQCLR', 'CRM问题需求处理人', 5, '5', '陈剑波', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CSLX', '参数类型', 1, '1', '最小值', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CSLX', '参数类型', 2, '3', '最大值', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CSLX', '参数类型', 3, '3', '范围值', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CW', '称谓', 1, '1', '先生', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CW', '称谓', 2, '2', '女士', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CW', '称谓', 3, '3', '博士', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CW', '称谓', 4, '4', '其它', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CXJB', '炒新级别', 1, '1', '炒新活跃账户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CXJB', '炒新级别', 2, '2', '炒新重点账户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CXJB', '炒新级别', 3, '3', '炒新亏损账户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CXJB', '炒新级别', 4, '4', '风险承受能力不足账户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYBFXCSNL', '创业板风险承受能力', 1, '1', '保守型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYBFXCSNL', '创业板风险承受能力', 2, '2', '稳健型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYBFXCSNL', '创业板风险承受能力', 3, '3', '积极型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYBFXCSNL', '创业板风险承受能力', 4, '4', '激进型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYBFXCSNL', '创业板风险承受能力', 5, '5', '平衡型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '从业考试科目', 1, '1', '证券市场基础知识', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '从业考试科目', 2, '2', '证券发行与承销', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '从业考试科目', 3, '3', '证券交易', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '从业考试科目', 4, '4', '证券投资分析', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '从业考试科目', 5, '5', '证券投资基金', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '从业考试科目', 7, '7', '证券市场基础（专项）', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '从业考试科目', 8, '8', '证券经纪业务营销', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '从业考试科目', 9, '9', '期货法律法规', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '从业考试科目', 10, '10', '期货基础知识', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '从业考试科目', 11, '11', '期货投资分析', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '从业考试科目', 12, '12', '证券投资基金基础知识', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '从业考试科目', 13, '13', '基金法律法规、职业道德与业务规范', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '从业考试科目', 14, '14', '证券市场基本法律法规', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '从业考试科目', 15, '15', '金融市场基础知识', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '从业考试科目', 16, '16', '基金专项考试', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '从业考试科目', 17, '17', '私募股权投资基金（含创业投资基金）基础知识', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '从业考试科目', 18, '18', '证券知识综合考试', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '从业考试科目', 19, '19', '投资银行业务考试', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '从业考试科目', 20, '20', '发布证券研究报告业务', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '从业考试科目', 21, '21', '证券投资顾问业务', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '从业考试科目', 22, '22', '注册国际投资分析师（CIIA）', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '从业考试科目', 23, '23', '基本证券及期货规例', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '从业考试科目', 24, '24', '会计师（中级及以上职称）', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '从业考试科目', 25, '25', '保险代理人资格', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '从业考试科目', 26, '26', '会计从业资格', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '从业考试科目', 50, '50', '银行间本币市场交易员考试', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '从业考试科目', 51, '51', '债券托管结算业务资格', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '从业考试科目', 52, '52', '登记托管及现券金额清算业务资格', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '从业考试科目', 53, '53', '代理证券质押登记业务资格考试', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '从业考试科目', 54, '54', '会计从业资格考试', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '从业考试科目', 55, '55', '国际注册内部审计师（CIA）', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '从业考试科目', 56, '56', '注册会计师（CPA）', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '从业考试科目', 57, '57', '国际注册信息系统审计师（CISA）', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '从业考试科目', 58, '58', '注册会计师（CPA）考试', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '从业考试科目', 59, '59', '国家司法考试', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '从业考试科目', 60, '60', '特许金融分析师（CFA）考试', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '从业考试科目', 61, '61', '证券公司合规管理人员胜任能力测试', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYKSKM', '从业考试科目', 62, '62', '证券公司高级管理人员资质测试', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYZG', '从业资格', 1, '1', '证券经纪业务营销', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYZG', '从业资格', 2, '2', '基金推介销售', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYZG', '从业资格', 4, '4', '期货从业资格', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYZG', '从业资格', 8, '8', '证券经纪人', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYZG', '从业资格', 16, '16', '证券投资咨询业务(其他)', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYZG', '从业资格', 32, '32', '一般证券业务', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYZG', '从业资格', 64, '64', '基金投资管理', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYZG', '从业资格', 128, '128', '证券投资咨询业务(分析师)', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYZG', '从业资格', 256, '256', '证券投资咨询业务（投资顾问）', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYZG', '从业资格', 512, '512', 'AFP（金融理财规划师）', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYZG', '从业资格', 1024, '1024', 'CFP（理财规划师）', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYZG', '从业资格', 2048, '2048', 'CFA（特许金融分析师）', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYZG', '从业资格', 4096, '4096', 'CIIA（注册国际投资分析师）', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYZG', '从业资格', 8192, '8192', '期货投资咨询资格', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYZG', '从业资格', 16384, '16384', '保险销售资格', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CYZG', '从业资格', 32768, '32768', '保荐人', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DCFS', '调查方式', 1, '1', '面谈', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DCFS', '调查方式', 2, '2', '电话', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DCFS', '调查方式', 3, '3', '邮件', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DCFS', '调查方式', 4, '4', '短信', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DCFS', '调查方式', 5, '5', 'QQ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DCFS', '调查方式', 6, '6', 'MSN', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DCFS', '调查方式', 7, '7', '其他', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DCGLXMFL', '调查管理项目分类', 1, '1', '分类1', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DCGLXMFL', '调查管理项目分类', 2, '2', '分类2', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDCLZT', '订单处理状态', 1, '1', '提交申请', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDCLZT', '订单处理状态', 2, '2', '订单已确认', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDCLZT', '订单处理状态', 3, '3', '审核通过', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDCLZT', '订单处理状态', 4, '4', '订单取消', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDCLZT', '订单处理状态', 5, '5', '审核不通过', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDCLZT', '订单处理状态', 6, '6', '订单生效', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_FSF', '滴滴服务_发送方', 1, '1', '客户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_FSF', '滴滴服务_发送方', 2, '2', '内部员工', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_GDLX', '滴滴服务_工单类型', 1, '1', '咨询问答', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_GDLX', '滴滴服务_工单类型', 2, '2', '预约开户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_GZSJ', '滴滴服务_是否工作时间', 0, '0', '非工作时间', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_GZSJ', '滴滴服务_是否工作时间', 1, '1', '工作时间', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_JNDJ', '滴滴服务_技能等级', 1, '1', '初级', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_JNDJ', '滴滴服务_技能等级', 2, '2', '中级', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_JNDJ', '滴滴服务_技能等级', 3, '3', '高级', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_JZYY', '滴滴服务_禁止抢单原因', 1, '1', '投诉过多', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_JZYY', '滴滴服务_禁止抢单原因', 2, '2', '辱骂客户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_JZYY', '滴滴服务_禁止抢单原因', 3, '3', '违反规定', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_JZYY', '滴滴服务_禁止抢单原因', 4, '4', '其他', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_KHLX', '滴滴服务_客户类型', 0, '0', '理财账户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_KHLX', '滴滴服务_客户类型', 1, '1', '正式客户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_KHLX', '滴滴服务_客户类型', 2, '2', '注册客户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_KHLX', '滴滴服务_客户类型', 3, '3', '匿名客户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_LYLX', '滴滴服务_来源类型', 1, '1', '微信', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_LYLX', '滴滴服务_来源类型', 2, '2', '手机APP', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_LYLX', '滴滴服务_来源类型', 3, '3', '网站', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_LYLX', '滴滴服务_来源类型', 4, '4', '其他', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_NLFW', '滴滴服务_年龄范围', 1, '[0,20岁)', '第 1 项', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_NLFW', '滴滴服务_年龄范围', 2, '[20岁,30岁)', '第 2 项', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_NLFW', '滴滴服务_年龄范围', 3, '[30岁,40岁)', '第 3 项', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_NLFW', '滴滴服务_年龄范围', 4, '[40岁,50岁)', '第 4 项', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_NLFW', '滴滴服务_年龄范围', 5, '[50岁,65岁)', '第 5 项', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_NLFW', '滴滴服务_年龄范围', 6, '[65岁,~)', '第 6 项', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_NRLX', '滴滴服务_内容类型', 1, '1', '文字', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_NRLX', '滴滴服务_内容类型', 2, '2', '语音', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_NRLX', '滴滴服务_内容类型', 3, '3', '图像', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_NRLX', '滴滴服务_内容类型', 4, '4', '视频', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_PJJG', '滴滴服务_评价结果', 1, '1', '满意', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_PJJG', '滴滴服务_评价结果', 2, '2', '不满意', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_PJLX', '滴滴服务_评价类型', 0, '0', '未评价', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_PJLX', '滴滴服务_评价类型', 1, '1', '满意', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_PJLX', '滴滴服务_评价类型', 2, '2', '不满意', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_QDZT', '滴滴服务_抢单状态', 0, '0', '失败', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_QDZT', '滴滴服务_抢单状态', 1, '1', '成功', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_XB', '滴滴服务_性别', 1, '1', '男', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDFW_XB', '滴滴服务_性别', 2, '2', '女', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDLX', '订单类型', 0, '0', '限价委托', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDLX', '订单类型', 1, '1', '最优五档立即成交剩余撤单', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDLX', '订单类型', 2, '2', '最优五档立即成交剩余转限价', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDLX', '订单类型', 101, '101', '市价转限价订单(深圳)', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDLX', '订单类型', 102, '102', '最优价格订单(深圳)', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDLX', '订单类型', 103, '103', '立即成交否则撤销(深圳)', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDLX', '订单类型', 104, '104', '最优五档立即成交否则撤销(深圳)', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDLX', '订单类型', 105, '105', '全部成交否则撤单(深圳)', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDZT', '订单状态', 0, '0', '未生效', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDZT', '订单状态', 1, '1', '已生效', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CPQX', '流动性', 1, '1', '6个月以下', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDZT', '订单状态', 2, '2', '未付费', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDZT', '订单状态', 3, '3', '已过期', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DDZT', '订单状态', 4, '4', '已退订', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DJDW', '定价单位', 0, '0', '天', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DJDW', '定价单位', 1, '1', '月', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DJDW', '定价单位', 2, '2', '季', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DJDW', '定价单位', 3, '3', '年', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DJQK', '登记情况', 1, '1', '已登记', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DJQK', '登记情况', 2, '2', '未登记', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DLQX', '代理权限', 1, '1', '代理存款', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DLQX', '代理权限', 2, '2', '代理取款', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DLQX', '代理权限', 4, '4', '代理买入', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DLQX', '代理权限', 8, '8', '代理卖出', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DLQX', '代理权限', 16, '16', '代理转托', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DLQX', '代理权限', 32, '32', '代理撤指', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DLQX', '代理权限', 64, '64', '代理银转证', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DLQX', '代理权限', 128, '128', '代理证转银', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DLQX', '代理权限', 256, '256', '全权代理', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DOCMODULETYPE', '文档模版类型', 1, 'PUBLIC', '通用', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DOCMODULETYPE', '文档模版类型', 2, 'GZBG', '工作报告', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DOCMODULETYPE', '文档模版类型', 3, 'GZZJ', '工作总结', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DOCMODULETYPE', '文档模版类型', 4, 'NDZJ', '年度总结', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DOCMODULETYPE', '文档模版类型', 5, 'XMJH', '项目计划', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DOCMODULETYPE', '文档模版类型', 6, 'XMZJ', '项目总结', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DOCMODULETYPE', '文档模版类型', 7, 'GRJL', '个人简历', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DOCMODULETYPE', '文档模版类型', 8, 'JJRHT', '经纪人合同', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DQFL', '地区分类', 1, '1', '一类地区', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DQFL', '地区分类', 2, '2', '二类地区', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DQFL', '地区分类', 3, '3', '三类地区', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DQFL', '地区分类', 4, '4', '四类地区', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DQFL', '地区分类', 5, '5', '五类地区', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DTQJ_CZMS', '动态全景_操作模式', 1, '1', '[LiveBOS]单记录', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DTQJ_CZMS', '动态全景_操作模式', 2, '2', '[LiveBOS]多记录', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DTQJ_CZMS', '动态全景_操作模式', 3, '3', '自由操作', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DTQJ_CZMS', '动态全景_操作模式', 4, '4', '[定制]单记录', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DTQJ_CZMS', '动态全景_操作模式', 5, '5', '[定制]多记录', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DTQJ_DKFS', '动态全景_链接打开方式', 1, '1', '对话框', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DTQJ_DKFS', '动态全景_链接打开方式', 2, '2', '[默认]新页面', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DTQJ_DKFS', '动态全景_链接打开方式', 3, '3', '原页面', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DTQJ_DKFS', '动态全景_链接打开方式', 4, '4', '[IFr]新页面', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DTZSFL', '动态知识分类', 1, '1', '行业动态', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DTZSFL', '动态知识分类', 2, '2', '同业营销动态月刊', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DWXZ', '单位性质', 1, '1', '国有企业，上市公司', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DWXZ', '单位性质', 2, '2', '国有企业，非上市公司', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DWXZ', '单位性质', 3, '3', '非国有企业，上市公司', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DWXZ', '单位性质', 4, '4', '非国有企业，非上市公司', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DWXZ', '单位性质', 10, '10', '境外基金', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DWXZ', '单位性质', 11, '11', '境外证券公司', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DWXZ', '单位性质', 12, '12', '境外代理人', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DWXZ', '单位性质', 13, '13', '境外一般机构', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DWXZ', '单位性质', 99, '99', '其它', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DXFL', '短信分类', 1, '1', '投资类', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DXFL', '短信分类', 2, '2', '非投资类', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DXLX', '对象类型', 1, '1', '正式客户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DXLX', '对象类型', 2, '2', '机构关键人', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DXLX', '对象类型', 3, '3', '潜在客户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DXLX', '对象类型', 4, '4', '客户级别', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DXLX', '对象类型', 5, '5', '客户群', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DXLX', '对象类型', 6, '6', '人员', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DYXZ', '提成低佣限制', 0, '0', '否', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DYXZ', '提成低佣限制', 1, '1', '是', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DYXZ', '提成低佣限制', 2, '2', '未知', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DZDJSXZ', '对帐单寄送选择', 1, '1', '不寄送', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DZDJSXZ', '对帐单寄送选择', 2, '2', '按月', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DZDJSXZ', '对帐单寄送选择', 3, '3', '按季', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DZDJSXZ', '对帐单寄送选择', 4, '4', '半年', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DZDJSXZ', '对帐单寄送选择', 5, '5', '一年', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('F1', '兴趣爱好', 1, '1', '美食', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('F1', '兴趣爱好', 2, '2', '唱歌', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('F1', '兴趣爱好', 3, '3', '跳舞', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('F1', '兴趣爱好', 4, '4', '电影', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('F1', '兴趣爱好', 5, '5', '音乐', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('F1', '兴趣爱好', 6, '6', '戏剧', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('F1', '兴趣爱好', 7, '7', '聊天', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('F1', '兴趣爱好', 8, '8', '拍拖', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('F1', '兴趣爱好', 9, '9', '赚钱', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('F1', '兴趣爱好', 10, '10', '因特网', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('F1', '兴趣爱好', 11, '11', '游戏', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('F1', '兴趣爱好', 12, '12', '绘画', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('F1', '兴趣爱好', 13, '13', '书法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('F1', '兴趣爱好', 14, '14', '雕塑', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('F1', '兴趣爱好', 15, '15', '时尚', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('F1', '兴趣爱好', 16, '16', '异性', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('F1', '兴趣爱好', 17, '17', '阅读', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('F1', '兴趣爱好', 18, '18', '塑身', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('F1', '兴趣爱好', 19, '19', '体育运动', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('F1', '兴趣爱好', 20, '20', '旅游', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('F1', '兴趣爱好', 21, '21', '政治', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('F1', '兴趣爱好', 22, '22', '购物', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('F1', '兴趣爱好', 23, '23', '宗教', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('F2', '股本性质', 1, '1', '国有法人股', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('F2', '股本性质', 2, '2', '境内法人股', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('F2', '股本性质', 3, '3', '境外法人股', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('F2', '股本性质', 4, '4', '流通A股', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('F2', '股本性质', 5, '5', '流通B股', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FAFL', '资产配置方案分类', 1, '1', '个人资产配置方案', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FAFL', '资产配置方案分类', 2, '2', '家庭资产配置方案', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FAFL', '资产配置方案分类', 3, '3', '企业资产配置方案', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FHXM', '回访项目', 1, '1', '新增客户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FHXM', '回访项目', 2, '2', '重要客户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FHXM', '回访项目', 3, '3', '异常客户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FHXM', '回访项目', 4, '4', '其他', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FHXM', '回访项目', 5, '5', 'cc接口测试客户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FHXM', '回访项目', 6, '6', '专属营销服务确认单签署客户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FKFXJB', '风控风险级别', 1, 'Code1', '提示', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FKFXJB', '风控风险级别', 2, 'Code2', '注意', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FKFXJB', '风控风险级别', 3, 'Code3', '关注', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FKFXJB', '风控风险级别', 4, 'Code4', '高度关注', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FKLX', '反馈类型', 1, '1', '绩效考核', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FKLX', '反馈类型', 2, '2', '建议', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FKLX', '反馈类型', 3, '3', '反馈', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FPATDKHFL', '金融产品按特定客户分类', 1, '1', '大集合', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FPATDKHFL', '金融产品按特定客户分类', 2, '2', '小集合', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FPATDKHFL', '金融产品按特定客户分类', 3, '3', '一对一专户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FPATDKHFL', '金融产品按特定客户分类', 4, '4', '一对多专户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FPATDKHFL', '金融产品按特定客户分类', 5, '5', '其他', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FPCPJG', '金融产品结构', 1, '1', '结构化产品优先级', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FPCPJG', '金融产品结构', 2, '2', '结构化产品次级', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FPCPJG', '金融产品结构', 3, '3', '结构化产品', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FPCPJG', '金融产品结构', 4, '4', '非结构化产品', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FPCPJG', '金融产品结构', 5, '5', '其他', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FPLXBMM', '分配类型BMM', 1, '1', '分配经纪关系', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FPLXBMM', '分配类型BMM', 2, '2', '调整经纪关系', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FPLXBMM', '分配类型BMM', 3, '3', '取消经纪关系', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FPLXBMM', '分配类型BMM', 4, '4', '经纪关系迁移', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FPLXBMM', '分配类型BMM', 5, '5', '经纪关系批量转服务关系', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FPLXBMM', '分配类型BMM', 6, '6', '分配服务关系', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FPLXBMM', '分配类型BMM', 7, '7', '调整服务关系', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FPLXBMM', '分配类型BMM', 8, '8', '取消服务关系', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FPLXBMM', '分配类型BMM', 9, '9', '服务关系迁移', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FPLXBMM', '分配类型BMM', 10, '10', '服务关系批量转经纪关系', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FPLXBMM', '分配类型BMM', 11, '11', '设置经纪关系分成比例', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FPLXBMM', '分配类型BMM', 12, '12', '设置特殊提成比例', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FPLXBMM', '分配类型BMM', 13, '13', '分配投顾关系', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FPLXBMM', '分配类型BMM', 14, '14', '取消投顾关系', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FPLXBMM', '分配类型BMM', 15, '15', '设置投顾关系分成比例', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_CPZRFS', '产品转让方式', 1, '1', '协议报价模式', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_CPZRFS', '产品转让方式', 2, '2', '报价商双向标价模式', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_CPZT', '金融产品状态', -1, 'Code5', '终止', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_CPZT', '金融产品状态', 0, 'Code1', '预售期', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_CPZT', '金融产品状态', 1, 'Code2', '认购期', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_CPZT', '金融产品状态', 2, 'Code3', '开放期', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_CPZT', '金融产品状态', 3, 'Code4', '封闭期', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_CPZT', '金融产品状态', 4, 'Code4', '结束', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_CPZT_SZ', '产品状态_商智', 1, '1', '募集前状态', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_CPZT_SZ', '产品状态_商智', 2, '2', '募集期', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_CPZT_SZ', '产品状态_商智', 3, '3', '开放期', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_CPZT_SZ', '产品状态_商智', 4, '4', '封闭期', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_CPZT_SZ', '产品状态_商智', 5, '5', '清盘', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_CPZT_SZ', '产品状态_商智', 6, '6', '产品成立', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_CPZT_SZ', '产品状态_商智', 7, '7', '发行失败', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_DJYY', '账户冻结原因', 0, '0', '司法冻结', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_DJYY', '账户冻结原因', 1, '1', '柜台冻结', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_DJYY', '账户冻结原因', 2, '2', '质押冻结', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_DJYY', '账户冻结原因', 3, '3', '质押、司法双重冻结', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_DJYY', '账户冻结原因', 4, '4', '柜台、司法双重冻结', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_GHYY', '过户原因', 1, '1', '继承', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_GHYY', '过户原因', 2, '2', '司法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_GHYY', '过户原因', 3, '3', '赠与', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JGFL', '机构分类', 1, '1', '证券交易所', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JGFL', '机构分类', 2, '2', '银行', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JGFL', '机构分类', 3, '3', '基金公司', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JGFL', '机构分类', 4, '4', '证券公司', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JGFL', '机构分类', 5, '5', '期交所', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JGFL', '机构分类', 6, '6', '信托公司', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JGFL', '机构分类', 7, '7', '咨询公司', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JGFL', '机构分类', 8, '8', '保险公司', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JGFL', '机构分类', 9, '9', '股权交易所', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JGFL', '机构分类', 99, '99', '其他金融机构', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JRCPFL_CF', '金融产品分类_财富', 201, '201', '理财产品', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JRCPFL_CF', '金融产品分类_财富', 202, '202', '保险', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JRCPFL_CF', '金融产品分类_财富', 203, '203', '存款', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JRCPFL_CF', '金融产品分类_财富', 204, '204', '信托', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JRCPFL_CF', '金融产品分类_财富', 205, '205', '股票', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JRCPFL_CF', '金融产品分类_财富', 206, '206', '凭证式国债', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JRCPFL_CF', '金融产品分类_财富', 207, '207', '贷款', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JRCPFL_CF', '金融产品分类_财富', 208, '208', '私募基金', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JRCPFL_CF', '金融产品分类_财富', 209, '209', '公募基金', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JRCPFL_CF', '金融产品分类_财富', 210, '210', '债券', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JYZT', '产品交易状态', -1, '-1', '终止', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JYZT', '产品交易状态', 0, '0', '预售', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JYZT', '产品交易状态', 1, '1', '认购', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JYZT', '产品交易状态', 2, '2', '可申赎', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JYZT', '产品交易状态', 3, '3', '封闭', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JYZT', '产品交易状态', 4, '4', '结束', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JYZT', '产品交易状态', 5, '6', '停止申购', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_JYZT', '产品交易状态', 6, '5', '停止赎回', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_SJBZ', '金融产品上架标志', 1, 'Code1', '未上架', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_SJBZ', '金融产品上架标志', 2, 'Code2', '上架审核中', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_SJBZ', '金融产品上架标志', 3, 'Code3', '已上架', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_SJBZ', '金融产品上架标志', 4, 'Code4', '退出审核中', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_SJBZ', '金融产品上架标志', 5, 'Code5', '已退出', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_TZPZ', '投资品种', 1, '1', '股票、混合型基金、偏股型基金、股票型基金等权益类投资品种', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_TZPZ', '投资品种', 2, '2', '债券、货币市场基金、债券基金等固定收益类投资品种', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_TZPZ', '投资品种', 4, '4', '期货、融资融券', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_TZPZ', '投资品种', 8, '8', '复杂金融产品', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_TZPZ', '投资品种', 16, '16', '其他产品', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_TZQX', '客户投资期限', 1, '1', '0到1年', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_TZQX', '客户投资期限', 2, '2', '1到5年', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_TZQX', '客户投资期限', 4, '4', '5年以上', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_TZZHJYQX', '投资账户交易权限', 1, '1', '认购', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_TZZHJYQX', '投资账户交易权限', 2, '2', '申购', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_TZZHJYQX', '投资账户交易权限', 4, '4', '赎回', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_TZZHJYQX', '投资账户交易权限', 8, '8', '转让', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_WJYWFL', '文件业务分类', 0, '00', '数据索引文件', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_WJYWFL', '文件业务分类', 1, '01', '账户申请', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_WJYWFL', '文件业务分类', 2, '02', '账户确认', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_WJYWFL', '文件业务分类', 3, '03', '交易申请数据与业务', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_WJYWFL', '文件业务分类', 4, '04', '交易确认数据与业务', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_WJYWFL', '文件业务分类', 5, '05', '账户对账', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_WJYWFL', '文件业务分类', 6, '06', '分红', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_WJYWFL', '文件业务分类', 7, '07', '产品动态信息', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_WJYWFL', '文件业务分类', 8, '08', '公告', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_WJYWFL', '文件业务分类', 26, '26', '理财产品份额明细', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_WJYWFL', '文件业务分类', 1000, '1000', '资金入账申请文件', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_WJYWFL', '文件业务分类', 1001, '1001', '资金入账确认文件', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_WJYWFL', '文件业务分类', 1002, '1002', '机构费用明细文件', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_WJYWFL', '文件业务分类', 2000, 'agent01', '电子合同申报', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_WJYWFL', '文件业务分类', 2001, 'agent02', '电子合同回报', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_XSDDZT', '销售订单状态', -1, '-1', '未到款', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_XSDDZT', '销售订单状态', 0, '0', '未确认', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_XSDDZT', '销售订单状态', 1, '1', '确认中', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_XSDDZT', '销售订单状态', 2, '2', '已到款', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_XSDDZT', '销售订单状态', 3, '3', '已退款', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_YYDZT', '预约单状态', -1, '-1', '预约取消', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_YYDZT', '预约单状态', 0, '0', '未生效', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_YYDZT', '预约单状态', 1, '1', '已生效', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_YYDZT', '预约单状态', 2, '2', '已打款', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FP_YYDZT', '预约单状态', 3, '3', '已到款', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FUNDTYPE', '基金类型', 1, '1', '封闭式基金', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FUNDTYPE', '基金类型', 2, '2', '开放式基金', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FUNDTYPE', '基金类型', 3, '3', '一对多基金', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FUNDTYPE', '基金类型', 4, '4', '私募基金', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWCLZT', '服务处理状态', 0, '0', '未受理', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWCLZT', '服务处理状态', 1, '1', '已受理', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWCLZT', '服务处理状态', 2, '2', '不受理', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWCLZT', '服务处理状态', 3, '3', '已解决', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWCLZT', '服务处理状态', 4, '4', '未解决', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWCLZT', '服务处理状态', 5, '5', '已关闭', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWCPQXYY', '取消原因', 1, '1', '产品不够好', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWCPQXYY', '取消原因', 2, '2', '服务不及时', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWDJ', '服务等级', 1, '1', '等级1', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWDJ', '服务等级', 2, '2', '等级2', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWDZ', '服务动作', 0, '0', '风险提示', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWDZ', '服务动作', 1, '1', '关怀', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWDZ', '服务动作', 2, '2', '客户激活', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWDZ', '服务动作', 3, '3', '提醒', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWDZ', '服务动作', 4, '4', '回访', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWFS', '服务方式', 1, '1', '电话', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWFS', '服务方式', 2, '2', '电子邮件', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWFS', '服务方式', 3, '3', '现场', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWFS', '服务方式', 4, '4', '传统邮件', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWFS', '服务方式', 8, '8', '短信', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWFS', '服务方式', 16, '16', 'IM', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWFS', '服务方式', 32, '32', '站内邮件', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWFS', '服务方式', 64, '64', '彩信', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWGXLX', '服务关系类型', 0, '0', '辅助服务关系', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWGXLX', '服务关系类型', 1, '1', '主服务关系', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWGXLX', '服务关系类型', 2, '2', '签约关系', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWGXLX', '服务关系类型', 8, '8', '团队服务关系', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWGXLX', '服务关系类型', 9, '9', '团队签约关系', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWGXLX', '服务关系类型', 91, '91', '开发关系', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWGXLX', '服务关系类型', 92, '92', '产品关系', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWJG', '服务机构', 1, '1', '银行', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWJG', '服务机构', 2, '2', '券商', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWJG', '服务机构', 3, '3', '中介', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWJG', '服务机构', 4, '4', '其它', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWJSDX', '服务接收对象', 1, '1', '客户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWJSDX', '服务接收对象', 2, '2', '经纪人', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWJSDX', '服务接收对象', 3, '3', '客户经理', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWJSDX', '服务接收对象', 4, '4', '联系人', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWLB', '服务类别', 1, '1', '咨询服务', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWLB', '服务类别', 2, '2', '跟踪服务', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWLB', '服务类别', 3, '3', '关系维护', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWLB', '服务类别', 4, '4', '产品推介', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWLB', '服务类别', 5, '5', '市场活动', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWLB', '服务类别', 6, '6', 'MOT', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWLB', '服务类别', 9, '9', '回访调查', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWLB', '服务类别', 99, '99', '其它', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWLX', '服务类型', 1, '1', '亲情服务', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWLX', '服务类型', 2, '2', '账户服务', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWLX', '服务类型', 3, '3', '客户回访', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWLX', '服务类型', 4, '4', '客户投诉', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWLX', '服务类型', 5, '5', '产品服务', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWLX', '服务类型', 6, '6', '融资服务', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWLX', '服务类型', 7, '7', '创新业务', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWQQLY', '服务请求来源', 1, '1', '现场', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWQQLY', '服务请求来源', 2, '2', '电话', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWQQLY', '服务请求来源', 3, '3', '电子邮件', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWQQLY', '服务请求来源', 4, '4', 'WebChat', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWQQLY', '服务请求来源', 5, '5', '网站', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWQQLY', '服务请求来源', 6, '6', '短信', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWQQLY', '服务请求来源', 7, '7', '传真', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWQQLY', '服务请求来源', 8, '8', '呼叫中心', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWQQLY', '服务请求来源', 9, '9', '客户经理工作平台', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWQQLY', '服务请求来源', 10, '10', 'PAD', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWRKD', '服务认可度', 1, '1', '认可', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWRKD', '服务认可度', 2, '2', '不满意', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWRKD', '服务认可度', 3, '3', '基本认可', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWRKD', '服务认可度', 4, '4', '满意', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWRKD', '服务认可度', 5, '5', '非常满意', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWRYLB', '服务人员类别', 1, 'Code1', '客户经理', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWRYLB', '服务人员类别', 2, 'Code2', '投资顾问', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWXM', '服务项目', 1, '1', '邮寄帐单', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWXM', '服务项目', 2, '2', '代理配股', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWXM', '服务项目', 4, '4', '代理转配', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWXM', '服务项目', 8, '8', '代理申购', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWXM', '服务项目', 16, '16', '代理配售', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWXM', '服务项目', 32, '32', '漫游业务', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWXM', '服务项目', 64, '64', '个性提示', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWXM', '服务项目', 128, '128', '外币兑换', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWXM', '服务项目', 256, '256', '通知存款', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWXM', '服务项目', 512, '512', 'ETF套利', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWXM', '服务项目', 1024, '1024', '权证业务', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FWXM', '服务项目', 4096, '4096', '质押回购', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FXCSNL', '风险承受能力', 0, '0', '风险承受能力最低型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FXCSNL', '风险承受能力', 1, '1', '保守型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FXCSNL', '风险承受能力', 2, '2', '谨慎型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FXCSNL', '风险承受能力', 3, '3', '稳健型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FXCSNL', '风险承受能力', 4, '4', '积极型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FXCSNL', '风险承受能力', 5, '5', '激进型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FXFL', '风险分类', 1, '1', '风险承受能力', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FXPH', '风险偏好', 1, '1', '激进', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FXPH', '风险偏好', 2, '2', '保守', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FXPH', '风险偏好', 3, '3', '稳健', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FXQFXDJ', '反洗钱风险等级', 1, '1', '低风险', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FXQFXDJ', '反洗钱风险等级', 2, '2', '中低', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FXQFXDJ', '反洗钱风险等级', 3, '3', '中', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FXQFXDJ', '反洗钱风险等级', 4, '4', '高', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FXQFXDJ', '反洗钱风险等级', 5, '5', '黑名单', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FXZQFL', '风险证券分类', 1, '1', '权证', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FXZQFL', '风险证券分类', 2, '2', '被交易所特停的股票(当天有效)', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FXZQFL', '风险证券分类', 3, '3', '连续三个跌停的股票', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FXZQFL', '风险证券分类', 4, '4', 'ST股票', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FZFL', '方案分类', 1, '1', '个人资产配置方案', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FZFL', '方案分类', 2, '2', '家庭资产配置方案', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FZFL', '方案分类', 3, '3', '企业资产配置方案', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHLSYY', '客户流失原因', 5, '5', '交易系统功能问题', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHLSYY', '客户流失原因', 6, '6', '交易系统效率问题', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHLSYY', '客户流失原因', 7, '7', '资讯信息不全面', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHLSYY', '客户流失原因', 8, '8', '提供的服务内容太少', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHLSYY', '客户流失原因', 9, '9', '缺乏主动服务', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHLSYY', '客户流失原因', 98, '98', '其他原因', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHLSYY', '客户流失原因', 99, '99', '客户不愿说明', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHLX', '考核类型', 1, 'YJKHCJ_JJR', '业绩考核', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHLX', '考核类型', 2, 'GLKHCJ_JJR', '管理考核', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHLX_XQDJ', '需求登记客户类型', 0, '0', '潜在客户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHLX_XQDJ', '需求登记客户类型', 1, '1', '存量客户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHLY', '客户来源', 1, 'Code1', '总部分配', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHLY', '客户来源', 2, 'Code2', '营业部营销活动', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHLY', '客户来源', 3, 'Code3', '老客户转介绍', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHLY', '客户来源', 4, 'Code4', '银行渠道', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHLY', '客户来源', 5, 'Code5', '陌生拜访', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHLYXX', '客户来源信息', 1, '1', '现有客户推荐', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHLYXX', '客户来源信息', 2, '2', '现有客户升级', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHLYXX', '客户来源信息', 3, '3', '其他金融机构', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHPJ', '客户评价', 1, 'Code1', '平时工作忙，无暇打理的客户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHPJ', '客户评价', 2, 'Code2', '对股票知之甚少、无专业性、盲目操作、亏损连连的客户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHPJ', '客户评价', 3, 'Code3', '所在证券公司服务不佳的客', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHPJ', '客户评价', 4, 'Code4', '超级短线优质客户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHPJ', '客户评价', 5, 'Code5', '客户资源丰富客户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHPJ', '客户评价', 6, 'Code6', '喜欢自我钻研的客户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHPJ', '客户评价', 7, 'Code7', '没有主见，依靠性强，可做适度推荐', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHPJDY', '客户评级', 1, '1', '一般重要', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHPJDY', '客户评级', 2, '2', '重要', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHPJDY', '客户评级', 3, '3', '很重要', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHPJDY', '客户评级', 4, '4', '非常重要', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHPJDY', '客户评级', 5, '5', '极其重要', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHPRJG', '考核聘任结果', 1, '1', '暂时离岗,创收标准未达到高级', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHPRJG', '考核聘任结果', 2, '2', '暂时离岗,创收标准达到高级,自定义考核得分不达标', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHPRJG', '考核聘任结果', 3, '3', '升级', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHPRJG', '考核聘任结果', 4, '4', '降级', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHPRJG', '考核聘任结果', 5, '5', '维持不变', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHPRJG', '考核聘任结果', 6, '6', '暂时离岗,经纪人考核不达标', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHQD', '开户渠道', 1, '1', '临柜开户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHQD', '开户渠道', 2, '2', '非现场开户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHQJB', '客户群级别', 0, '0', '系统级', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHQJB', '客户群级别', 1, '1', '公司级', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHQJB', '客户群级别', 2, '2', '营业部级', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHQJB', '客户群级别', 3, '3', '个人级', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHRQ', '开户日期', 1, '1', '开户日期', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHSX', '客户属性', 1, '1', '禁止存款', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHSX', '客户属性', 2, '2', '禁止取款', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHSX', '客户属性', 4, '4', '禁止银证转帐', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHSX', '客户属性', 8, '8', '禁止转托管', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHSX', '客户属性', 16, '16', '禁止撤销指定', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHSX', '客户属性', 32, '32', '禁止销户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHSX', '客户属性', 64, '64', '禁止买入', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHSX', '客户属性', 128, '128', '禁止卖出', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHTYKZT', '客户体验卡状态', 1, '1', '导入', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHTYKZT', '客户体验卡状态', 2, '2', '发放', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHTYKZT', '客户体验卡状态', 3, '3', '领取', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHTYKZT', '客户体验卡状态', 4, '4', '分配', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHTYKZT', '客户体验卡状态', 5, '5', '激活', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHXXFL', '客户信息分类', 1, '1', '基本信息', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHXXFL', '客户信息分类', 2, '2', '家庭状况', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHXXFL', '客户信息分类', 3, '3', '社会特性', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHXXFL', '客户信息分类', 4, '4', '财产和收入', 0, 0, null);
commit;
prompt 2000 records committed...
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHXXFL', '客户信息分类', 5, '5', '投资目标和经验', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHXXFL', '客户信息分类', 6, '6', '风险偏好', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHXXFL', '客户信息分类', 7, '7', '账户状况', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHXXFL', '客户信息分类', 8, '8', '联系信息', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHYJY_TJFS', '客户月交易统计方式', 1, '1', '按客户号统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHYJY_TJFS', '客户月交易统计方式', 2, '2', '按营业部代码统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHYJY_TJFS', '客户月交易统计方式', 3, '3', '按客户级别统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHYJY_TJFS', '客户月交易统计方式', 4, '4', '按交易月份统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHYJY_TJFS', '客户月交易统计方式', 5, '5', '按交易年份统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHYJY_TJFS', '客户月交易统计方式', 6, '6', '按开户日期统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHYJY_TJFS', '客户月交易统计方式', 7, '7', '按开户月份统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHYJY_TJFS', '客户月交易统计方式', 8, '8', '按开户年份统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHYJY_TJFS', '客户月交易统计方式', 9, '9', '按来源券商统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHYJY_TJFS', '客户月交易统计方式', 10, '10', '按客户经理统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHYWFW', '客户业务范围', 1, '1', '经纪业务', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHYWFW', '客户业务范围', 2, '2', '资产管理', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHYWFW', '客户业务范围', 4, '4', '融资融券', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHYWFW', '客户业务范围', 8, '8', '股指期货', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHYWFW', '客户业务范围', 16, '16', '多金业务', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHYWFW', '客户业务范围', 32, '32', '个股期权', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZBLX', '客户指标类型', 1, '1', '基本属性', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZBLX', '客户指标类型', 2, '2', '交易指标', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZBLX', '客户指标类型', 3, '3', '资产指标', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZBLX', '客户指标类型', 4, '4', '偏好指标', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZBLX', '客户指标类型', 99, '99', '其他指标', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZCD', '客户忠诚度', 1, '1', '一般', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZCD', '客户忠诚度', 2, '2', '较好', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZCD', '客户忠诚度', 3, '3', '很好', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZCD', '客户忠诚度', 4, '4', '极好', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZCFD', '客户资产分段', 0, 'KHS_ZC0', '0万', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZCFD', '客户资产分段', 1, 'KHS_ZC1', '0-1万', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZCFD', '客户资产分段', 10, 'KHS_ZC10', '1-10万', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZCFD', '客户资产分段', 30, 'KHS_ZC30', '10-30万', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZCFD', '客户资产分段', 100, 'KHS_ZC100', '30-100万', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZCFD', '客户资产分段', 500, 'KHS_ZC500', '100-500万', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZCFD', '客户资产分段', 1000, 'KHS_ZC1000', '500-1000万', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZCFD', '客户资产分段', 99999999, 'KHS_ZC', '1000-99999999万', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZJ_TJFS', '客户资金_统计方式', 1, '1', '按客户号统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZJ_TJFS', '客户资金_统计方式', 2, '2', '按营业部代码统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZJ_TJFS', '客户资金_统计方式', 9, '9', '按客户级别统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZJ_TJFS', '客户资金_统计方式', 14, '14', '按开户日期统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZJ_TJFS', '客户资金_统计方式', 15, '15', '按开户月份统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZJ_TJFS', '客户资金_统计方式', 16, '16', '按开户年份统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZJ_TJFS', '客户资金_统计方式', 17, '17', '按来源券商统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZJ_TJFS', '客户资金_统计方式', 18, '18', '按客户经理统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZLTJ_PXLX', '排序类型', 1, '1', '开放基金市值_汇总值', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZLTJ_PXLX', '排序类型', 2, '2', '期末权益_汇总值', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZLTJ_PXLX', '排序类型', 3, '3', '上月末总资产_汇总值', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZLTJ_PXLX', '排序类型', 4, '4', '总资产_汇总值', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZLTJ_PXLX', '排序类型', 5, '5', '资金余额_汇总值', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZLTJ_PXLX', '排序类型', 6, '6', '证券市值_汇总值', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZLTJ_PXLX', '排序类型', 7, '7', '期末权益_平均值', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZLTJ_PXLX', '排序类型', 8, '8', '总资产_平均值', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZLTJ_TJLX', '统计类型', 1, '1', '按客户类型统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZLTJ_TJLX', '统计类型', 2, '2', '按客户状态统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZLTJ_TJLX', '统计类型', 3, '3', '按开户方式统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZLTJ_TJLX', '统计类型', 4, '4', '按开户日期统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZLTJ_TJLX', '统计类型', 5, '5', '按客户经理统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZLTJ_TJLX', '统计类型', 6, '6', '按营业部统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZLTJ_TJLX', '统计类型', 7, '7', '按客户级别统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZLTJ_TJLX', '统计类型', 8, '8', '按来源券商统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZT', '客户状态', 0, '0', '正常', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZT', '客户状态', 1, '1', '冻结', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZT', '客户状态', 2, '2', '挂失', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZT', '客户状态', 3, '3', '销户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZT', '客户状态', 4, '4', '预约退户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZT', '客户状态', 5, '5', '已退户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZT', '客户状态', 6, '6', '休眠', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZT', '客户状态', 7, '7', '不合格', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KHZT', '客户状态', 9, '9', '公司不合格', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KH_KHFS', '开户方式', 0, '0', '自然增长', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KH_KHFS', '开户方式', 1, '1', '渠道网点', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KH_KHFS', '开户方式', 2, '2', '外部推介会', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KH_KHFS', '开户方式', 3, '3', '内部推荐', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KH_KHFS', '开户方式', 4, '4', '见证开户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KH_KHFS', '开户方式', 5, '5', '网上开户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KH_KHFS', '开户方式', 6, '6', '手机开户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KH_YWLX', '业务类型', 1, '1', '证券客户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KH_YWLX', '业务类型', 2, '2', '期货客户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KJLX', '控件类型', 1, '文本框', '文本框', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KJLX', '控件类型', 2, '下拉单选', '下拉单选', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KJLX', '控件类型', 3, '日期型', '日期型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KJLX', '控件类型', 4, '下拉多选', '下拉多选', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KKFS', '扣款方式', 1, '1', '柜台扣款', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KKFS', '扣款方式', 2, '2', '手机代扣', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KKFS', '扣款方式', 3, '3', '银行转账', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KKFS', '扣款方式', 4, '4', '邮件汇款', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KKFS', '扣款方式', 5, '5', '现金付款', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KKFS', '扣款方式', 6, '6', '其他', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KPMZXPD', 'KPM执行频度', 1, '1', '每日', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KPMZXPD', 'KPM执行频度', 2, '2', '实时', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KPMZXPD', 'KPM执行频度', 3, '3', '每周', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KPMZXPD', 'KPM执行频度', 4, '4', '每月', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KPMZXPD', 'KPM执行频度', 5, '5', '每年', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KQZT', '考勤状态', 1, 'Code1', '正常签到', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KQZT', '考勤状态', 2, 'Code2', '正常签退', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KQZT', '考勤状态', 3, 'Code3', '早上迟到', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KQZT', '考勤状态', 4, 'Code4', '下午早退', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KQZT', '考勤状态', 5, 'Code5', '旷勤半天', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KQZT', '考勤状态', 6, 'Code6', '请假', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KSKCSCD', '亏损可承受程度', 1, '1', '10%以内', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KSKCSCD', '亏损可承受程度', 2, '2', '10%-30%', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KSKCSCD', '亏损可承受程度', 3, '3', '30%-50%', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KSKCSCD', '亏损可承受程度', 4, '4', '超过50%', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KTYWQX', '开通业务权限', 110, '110', '权证交易', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KTYWQX', '开通业务权限', 111, '111', '创业板', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KTYWQX', '开通业务权限', 112, '112', '融资融券', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KTYWQX', '开通业务权限', 113, '113', '港股通', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KTYWQX', '开通业务权限', 301, '301', '报价回购', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KTYWQX', '开通业务权限', 303, '303', '上海约定式购回', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KTYWQX', '开通业务权限', 304, '304', '深圳约定式购回', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KTYWQX', '开通业务权限', 401, '401', '专业投资者债券', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('KTYWQX', '开通业务权限', 402, '402', '个股期权', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LBXZLX', '类别限制类型', 1, '1', '禁止调整', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LBXZLX', '类别限制类型', 2, '2', '禁止跨部门类别调整', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LBXZLX', '类别限制类型', 4, '4', '禁止挂接开发关系', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LCCLZT', '流程处理状态', -1, '-1', '审核不通过', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LCCLZT', '流程处理状态', 0, '0', '审核中', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LCCLZT', '流程处理状态', 1, '1', '审核完成', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LCDCLB', '理财规划调查类别', 1, '1', '收入', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LCDCLB', '理财规划调查类别', 2, '2', '支出', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LCDCLB', '理财规划调查类别', 3, '3', '资产', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LCDCLB', '理财规划调查类别', 4, '4', '负债', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LCDCLBXF', '理财规划调查类别细分', 1, '1', '薪资收入', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LCDCLBXF', '理财规划调查类别细分', 2, '2', '其他收入', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LCDCLBXF', '理财规划调查类别细分', 3, '3', '现金', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LCDCLBXF', '理财规划调查类别细分', 4, '4', '活期存款', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LCDCLBXF', '理财规划调查类别细分', 5, '5', '定期存款', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LCDCLBXF', '理财规划调查类别细分', 6, '6', '股票', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LCDCLBXF', '理财规划调查类别细分', 7, '7', '基金', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LCDCLBXF', '理财规划调查类别细分', 8, '8', '债券', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LCDCLBXF', '理财规划调查类别细分', 9, '9', '外币账户资金', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LCDCLBXF', '理财规划调查类别细分', 10, '10', '实物资产', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LCDCLBXF', '理财规划调查类别细分', 11, '11', '信用卡负债余额', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LCDCLBXF', '理财规划调查类别细分', 12, '12', '消费负债余额', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LCDCLBXF', '理财规划调查类别细分', 13, '13', '房屋贷款余额', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LCDCLBXF', '理财规划调查类别细分', 14, '14', '汽车贷款余额', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LCDCLBXF', '理财规划调查类别细分', 15, '15', '其他负债', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LCDCLBXF', '理财规划调查类别细分', 16, '16', '基本生活费', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LCDCLBXF', '理财规划调查类别细分', 17, '17', '房贷支出', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LDXYQ', '流动性要求', 1, '1', '极低（大于2年）', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LDXYQ', '流动性要求', 2, '2', '低（1-2年）', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LDXYQ', '流动性要求', 3, '3', '中（6-12个月）', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LDXYQ', '流动性要求', 4, '4', '高（1-6个月）', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LDXYQ', '流动性要求', 5, '5', '极高（1个月以内）', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LGSHYZFS', '临柜审核验证方式', 1, '1', '密码验证', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LGSHYZFS', '临柜审核验证方式', 2, '2', '指纹验证', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LNYSTZJYJR', '两年以上投资经验的金融产品', 1, '1', '银行存款', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LNYSTZJYJR', '两年以上投资经验的金融产品', 2, '2', '债券货币市场基金债券型基金固定收益类产品', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LNYSTZJYJR', '两年以上投资经验的金融产品', 3, '3', '股票混合型基金偏股型基金股票型基金投资品种', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LNYSTZJYJR', '两年以上投资经验的金融产品', 4, '4', '期货、融资融券', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LNYSTZJYJR', '两年以上投资经验的金融产品', 5, '5', '复杂金融产品或其他产品', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LSKHSQYW', '流失客户申请业务', 1, '1', '撤指转托管', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LSKHSQYW', '流失客户申请业务', 3, '3', '销户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LSKHSQYW', '流失客户申请业务', 5, '5', '其他', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LXFS', '联系方式', 2, '2', 'EMAIL', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LXFS', '联系方式', 8, '8', '手机', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LXSJ', '联系时间', 1, '1', '周一到周五上班时间', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LXSJ', '联系时间', 2, '2', '周一到周五下班时间', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LXSJ', '联系时间', 4, '4', '周末或节假日', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LXZQ', '联系周期', 1, '1', '天', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LXZQ', '联系周期', 2, '2', '月', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LYLX', '来源类型', 1, '1', '客户需求', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LYLX', '来源类型', 2, '2', '内部需求', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LYQD', '来源渠道', 1, '1', '现场柜台采集', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LYQD', '来源渠道', 2, '2', 'QQ采集', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LYQD', '来源渠道', 3, '3', '呼叫中心采集', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LYQD', '来源渠道', 4, '4', 'WEB采集', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LYQD_QR', '需求登记来源渠道', 1, '1', '人工服务', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LYQD_QR', '需求登记来源渠道', 2, '2', '临柜方式', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LYQD_QR', '需求登记来源渠道', 3, '3', '网络方式', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('LYQD_QR', '需求登记来源渠道', 4, '4', '其他方式采集', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MB', '模板', 1, '1', '股票-重点公司基本数据表', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MB', '模板', 2, '2', '股票-重点公司投资建议表', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MB', '模板', 3, '3', '新股申购时间表模板', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MB', '模板', 4, '4', '新股基本情况模板', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MB', '模板', 5, '5', '新股中签率预测模板', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MB', '模板', 6, '6', '今日新股发行模板', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MBLX', '模版类型', 1, '1', '提成模版', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MBLX', '模版类型', 2, '2', '绩效模版', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MDRXX', '免打扰选项', 1, '1', '不接受短信', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MDRXX', '免打扰选项', 2, '2', '不接受邮件', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MDRXX', '免打扰选项', 4, '4', '不接受电话', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MDRXX', '免打扰选项', 8, '8', '不接受IM', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MDRXX', '免打扰选项', 16, '16', '不接受微信', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MMFX', '买卖方向', 0, '0', '无', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MMFX', '买卖方向', 1, 'B', '买', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MMFX', '买卖方向', 2, 'S', '卖', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MOT_JRCPFL', 'MOT金融产品分类', 1, '1', '现金管理类金融产品', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MOT_JRCPFL', 'MOT金融产品分类', 2, '2', '净值类金融产品', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MOT_JRCPFL', 'MOT金融产品分类', 3, '3', '固定收益类金融产品', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MTGM', '媒体规模', 1, '1', '100人以上', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MTGM', '媒体规模', 2, '2', '50-100人', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MTGM', '媒体规模', 3, '3', '30-50人', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MTGM', '媒体规模', 4, '4', '30人以下', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MTLX', '媒体类型', 1, '1', '投资报告会', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MTLX', '媒体类型', 2, '2', '股市沙龙', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MTLX', '媒体类型', 3, '3', '投资者教育讲座', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '民族', 1, '1', '汉族', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '民族', 2, '2', '壮族', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '民族', 3, '3', '瑶族', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '民族', 4, '4', '苗族', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '民族', 5, '5', '侗族', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '民族', 6, '6', '藏族', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '民族', 7, '7', '羌族', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '民族', 8, '8', '彝族', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '民族', 9, '9', '白族', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '民族', 10, '10', '水族', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '民族', 11, '11', '傣族', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '民族', 12, '12', '佤族', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '民族', 13, '13', '怒族', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '民族', 14, '14', '畲族', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '民族', 15, '15', '满族', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '民族', 16, '16', '回族', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '民族', 17, '17', '蒙古族', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '民族', 18, '18', '朝鲜族', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '民族', 19, '19', '俄罗斯族', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '民族', 20, '20', '维吾尔族', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '民族', 21, '21', '塔塔尔族', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '民族', 22, '22', '哈萨克族', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '民族', 23, '23', '塔吉克族', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '民族', 24, '24', '乌孜别克族', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '民族', 25, '25', '柯尔克孜族', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '民族', 26, '26', '黎族', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '民族', 27, '27', '京族', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '民族', 28, '28', '高山族', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '民族', 29, '29', '仫佬族', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '民族', 30, '30', '毛南族', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '民族', 31, '31', '土家族', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '民族', 32, '32', '赫哲族', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '民族', 33, '33', '达斡尔族', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '民族', 34, '34', '鄂温克族', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '民族', 35, '35', '鄂伦春族', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '民族', 36, '36', '门巴族', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '民族', 37, '37', '珞巴族', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '民族', 38, '38', '哈尼族', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '民族', 39, '39', '拉祜族', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '民族', 40, '40', '纳西族', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '民族', 41, '41', '德昂族', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '民族', 42, '42', '布朗族', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '民族', 43, '43', '景颇族', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '民族', 44, '44', '普米族', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '民族', 45, '45', '阿昌族', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '民族', 46, '46', '仡佬族', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '民族', 47, '47', '傈僳族', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '民族', 48, '48', '独龙族', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '民族', 49, '49', '布依族', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '民族', 50, '50', '基诺族', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '民族', 51, '51', '土族', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '民族', 52, '52', '东乡族', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '民族', 53, '53', '撒拉族', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '民族', 54, '54', '保安族', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '民族', 55, '55', '裕固族', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('MZ', '民族', 56, '56', '锡伯族', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('NBXXFL', '内部信息分类', 0, '0', '畅所予言', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('NBXXFL', '内部信息分类', 1, '1', '通知', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('NBXXFL', '内部信息分类', 2, '2', '公司公告', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('NBXXFL', '内部信息分类', 3, '3', '公司文件', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('NBXXFL', '内部信息分类', 4, '4', '规章制度', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('NBXXFL', '内部信息分类', 5, '5', '客服天地', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('NBXXFL', '内部信息分类', 6, '6', '营销内刊', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('NBXXFL', '内部信息分类', 7, '7', '部门文件', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('NBXXFL', '内部信息分类', 8, '8', '部门制度', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('NBXXFL', '内部信息分类', 9, '9', '会议纪要', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('NBXXFL', '内部信息分类', 10, '10', '薪酬专题', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('NBXXFL', '内部信息分类', 11, '11', '融资融券', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('NL', '年龄', 1, '1', '18-30岁', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('NL', '年龄', 2, '2', '31-40岁', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('NL', '年龄', 3, '3', '41-50岁', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('NL', '年龄', 4, '4', '51-60岁', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('NL', '年龄', 5, '5', '超过60岁', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('NND', '年龄段', 1, 'Code1', '16-25', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('NND', '年龄段', 2, 'Code2', '26-35', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('NND', '年龄段', 3, 'Code3', '36-55', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('NND', '年龄段', 4, 'Code4', '55以上', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('OTC_DDLX', 'OTC_订单类型', 1, '1', '普通委托', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('OTC_DDLX', 'OTC_订单类型', 2, '2', '做市商', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQZT', '需求状态', 6, '6', '退回', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XSZT', '销售状态', 0, '0', '允许销售', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XSZT', '销售状态', 1, '1', '停止销售', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XSZT', '销售状态', 2, '2', '已失效', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTGNMK', '系统功能模块', 1, '1', '人事管理', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTGNMK', '系统功能模块', 2, '2', '客户关系', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTGNMK', '系统功能模块', 3, '3', '服务管理', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTGNMK', '系统功能模块', 4, '4', '客户管理', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTGNMK', '系统功能模块', 5, '5', '适当性管理', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTGNMK', '系统功能模块', 6, '6', '消息通知', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTGNMK', '系统功能模块', 7, '7', '销售管理', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTGNMK', '系统功能模块', 8, '8', '系统参数', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTGNMK', '系统功能模块', 9, '9', '风控管理', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTGNMK', '系统功能模块', 10, '10', '绩效管理', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTLY', '系统来源', 4, '4', '集中交易', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTLY', '系统来源', 8, '8', '金融产品', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XW', '学位', 1, '1', '学士', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XW', '学位', 2, '2', '硕士', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XW', '学位', 3, '3', '博士', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XWJB', '新闻信息级别', 1, 'Code1', '普通', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XWJB', '新闻信息级别', 2, 'Code2', '机密', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XWJB', '新闻信息级别', 3, 'Code3', '高度机密', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XWLX', '行为类型', 1, '1', '签到', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XWLX', '行为类型', 2, '2', '签退', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XWLX', '行为类型', 3, '3', '填写服务记录', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XWLX', '行为类型', 4, '4', '开户申请', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XWLX', '行为类型', 5, '5', '潜在客户登记', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XWLX', '行为类型', 6, '6', '潜在客户状态跟踪', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XWLX', '行为类型', 99, '99', '现场拜访', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XXFBFW', '消息发布范围', 1, '000', '全体IM成员（员工+投资者）', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XXFBFW', '消息发布范围', 2, '100', '全体员工', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XXFBFW', '消息发布范围', 3, '101', '分公司员工', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XXFBFW', '消息发布范围', 4, '102', '营业部员工', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XXFBFW', '消息发布范围', 5, '199', '特定范围员工', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XXFBFW', '消息发布范围', 6, '200', '全体投资者', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XXFBFW', '消息发布范围', 7, '201', '分公司投资者', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XXFBFW', '消息发布范围', 8, '202', '营业部投资者', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XXFBFW', '消息发布范围', 9, '203', '客户经理对应的投资者', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XXFBFW', '消息发布范围', 10, '203', '投资顾问对应的投资者', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XXFBFW', '消息发布范围', 11, '281', '指定理财产品的投资者', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XXFBFW', '消息发布范围', 12, '282', '指定投资组合的投资者', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XXFBFW', '消息发布范围', 13, '289', '指定股票的投资者', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XXFBFW', '消息发布范围', 14, '299', '特定范围的投资者', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XXFS', '学习方式', 1, '1', '全日制', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XXFS', '学习方式', 2, '2', '自考', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XXFS', '学习方式', 3, '3', '成人高考', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XXFS', '学习方式', 4, '4', '其它', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYBGYY', '协议变更原因', 1, '1', '原产品不满意,换新产品', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYBGYY', '协议变更原因', 2, '2', '原投顾服务态度不好', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYBGYY', '协议变更原因', 3, '3', '原投顾调离岗位', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYJCYY', '协议解除原因', 1, '1', '对产品不满意', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYJCYY', '协议解除原因', 2, '2', '对投顾服务不满意', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYJCYY', '协议解除原因', 3, '3', '收费太贵', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYJCYY', '协议解除原因', 4, '4', '佣金太高', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYJCYY', '协议解除原因', 5, '5', '客户销户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYJCYY', '协议解除原因', 6, '6', '试用转正常', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', '协议类型', 0, '0', '代理新股申购', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', '协议类型', 1, '1', '代理新股配售', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', '协议类型', 2, '2', '代理配股缴款', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', '协议类型', 3, '3', '退市风险协议', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', '协议类型', 4, '4', '风险警示协议', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', '协议类型', 5, '5', '[停止使用]客户报价转让协议', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', '协议类型', 7, '7', '证券业务电子签名约定书', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', '协议类型', 9, '9', '权证交易协议', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', '协议类型', 11, '@', '融资回购协议', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', '协议类型', 12, 'a', '风险警示公司债交易协议', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', '协议类型', 13, 'A', '创业板协议', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', '协议类型', 14, 'b', '暂停上市公司债交易协议', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', '协议类型', 15, 'C', '挂牌公司股票交易协议', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', '协议类型', 16, 'c', '优先股转让适当性协议', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', '协议类型', 17, 'D', '两网退市股票交易协议', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', '协议类型', 18, 'd', '现金产品快速取现协议', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', '协议类型', 19, 'E', '受限投资者交易协议', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', '协议类型', 20, 'e', '质押协议回购融入协议', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', '协议类型', 21, 'f', '质押协议回购融出协议', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', '协议类型', 22, 'F', '资管产品份额交易协议', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', '协议类型', 23, 'G', '股票质押回购融入交易协议', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', '协议类型', 24, 'h', '证券投资基金风险揭示书', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', '协议类型', 25, 'H', '黄金ETF交易协议', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', '协议类型', 26, 'J', '报价回购协议', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', '协议类型', 27, 'K', '综合协议交易', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', '协议类型', 28, 'L', '跨境ETF协议', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', '协议类型', 29, 'm', '场内基金盲拆协议', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', '协议类型', 30, 'M', '债券合格投资者协议', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', '协议类型', 31, 'N', '报价回购代理委托', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', '协议类型', 32, 'O', '优先股协议', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', '协议类型', 33, 'P', '股票质押回购融出交易协议', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', '协议类型', 34, 'Q', '自主行权协议', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', '协议类型', 35, 'R', '港股通风险协议', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', '协议类型', 36, 's', '股转优先股协议', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', '协议类型', 37, 'S', '私募债转让协议', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', '协议类型', 38, 'V', '基金快速过户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', '协议类型', 39, 'W', '预发行交易协议', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', '协议类型', 40, 'X', '小贷通协议', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', '协议类型', 41, 'Y', '约定购回协议', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', '协议类型', 42, 'z', '上证LOF协议', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', '协议类型', 43, '43', '融资融券', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XYLX', '协议类型', 44, '44', '上海个股期权', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_GRJG', '信用_个人/机构', 1, '1', '个人', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_GRJG', '信用_个人/机构', 2, '2', '机构', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_HMDLX', '信用_黑名单类型', 1, '1', '人民银行反洗钱黑名单', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_HMDLX', '信用_黑名单类型', 2, '2', '交易所融资融券黑名单', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_HMDLX', '信用_黑名单类型', 3, '3', '公司股东', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_HMDLX', '信用_黑名单类型', 4, '4', '虚假客户资料', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_HTSX', '信用_合同属性', 1, '1', '禁止融资买入', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_HTSX', '信用_合同属性', 2, '2', '禁止融券卖出', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_HTSX', '信用_合同属性', 4, '4', '禁止授信', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_HTZT', '信用_合同状态', 0, '0', '正常', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_HTZT', '信用_合同状态', 3, '3', '终止', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_JKLB', '信用_监控类别', 0, '0', '不监控', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_JKLB', '信用_监控类别', 1, '1', '监控', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_JKLB', '信用_监控类别', 2, '2', '特护', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_LLLX', '信用_利率类型', 1, '1', '额度计算', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_LLLX', '信用_利率类型', 2, '2', '使用计算', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_SXSQLB', '信用_授信申请类别', 1, '1', '追加授信', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_SXSQLB', '信用_授信申请类别', 2, '2', '申请授信', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_SXSQLB', '信用_授信申请类别', 3, '3', '释放授信', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_SXSQLB', '信用_授信申请类别', 4, '4', '释放全部', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_SXSQLB', '信用_授信申请类别', 5, '5', '终止授信', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_SYLX', '信用_适用类型', 1, '1', '初次申请', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_SYLX', '信用_适用类型', 2, '2', '再次申请', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_XXBLLX', '消息变量类型', 1, '1', '客户属性', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_XXBLLX', '消息变量类型', 2, '2', '客户资产', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_XXBLLX', '消息变量类型', 3, '3', '日期变量', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_XXBLLX', '消息变量类型', 4, '4', '证券代码', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_XXBLLX', '消息变量类型', 5, '5', '消息通知原因', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_XYBZ', '信用_信用标志', 0, '0', '普通账户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_XYBZ', '信用_信用标志', 1, '1', '信用账户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_XYDJ', '信用等级', 1, '1', 'D', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_XYDJ', '信用等级', 2, '2', 'C', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_XYDJ', '信用等级', 3, '3', 'B', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_XYDJ', '信用等级', 4, '4', 'BB', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_XYDJ', '信用等级', 5, '5', 'BBB', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_XYDJ', '信用等级', 6, '6', 'A', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_XYDJ', '信用等级', 7, '7', 'AA', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_XYDJ', '信用等级', 8, '8', 'AAA', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_YWLX', '信用_业务类型', 1, '1', '融资融券', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_YWLX', '信用_业务类型', 2, '2', '约定购回', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_YXCLLB', '信用_影像材料类别', 1, '1', '居住地址证明', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_YXCLLB', '信用_影像材料类别', 2, '2', '工作证明资料', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_YXCLLB', '信用_影像材料类别', 3, '3', '金融资产证明', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_YXCLLB', '信用_影像材料类别', 4, '4', '收入证明', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_ZBFL', '信用_指标分类', 5, '0', '客户基本信息', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_ZBFL', '信用_指标分类', 6, '15', '客户联系方式', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_ZBFL', '信用_指标分类', 12, '16', '客户申报事项', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_ZBFL', '信用_指标分类', 14, '6', '账户基本信息', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_ZBFL', '信用_指标分类', 18, '12', '机构法人信息', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_ZBFL', '信用_指标分类', 19, '11', '机构授权人信息', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_ZBFL', '信用_指标分类', 30, '5', '基本信息评价', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_ZBFL', '信用_指标分类', 35, '1', '财务状况评价', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_ZBFL', '信用_指标分类', 45, '2', '投资经验', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_ZBFL', '信用_指标分类', 47, '2', '风险偏好评估', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_ZBFL', '信用_指标分类', 55, '6', '融资融券属性', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_ZBFL', '信用_指标分类', 93, '93', '资产周转率', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_ZBFL', '信用_指标分类', 94, '94', '客户价值', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_ZBFL', '信用_指标分类', 95, '95', '投资能力', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_ZBFL', '信用_指标分类', 96, '96', '客户资产', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_ZBFL', '信用_指标分类', 97, '97', '客户投资适当性', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_ZBLB', '信用_指标类别', 1, '1', '征信指标', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XY_ZBLB', '信用_指标类别', 2, '2', '评级指标', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XZ', '星座', 1, '1', '白羊座', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XZ', '星座', 2, '2', '金牛座', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XZ', '星座', 3, '3', '双子座', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XZ', '星座', 4, '4', '巨蟹座', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XZ', '星座', 5, '5', '狮子座', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XZ', '星座', 6, '6', '处女座', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XZ', '星座', 7, '7', '天秤座', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XZ', '星座', 8, '8', '天蝎座', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XZ', '星座', 9, '9', '射手座', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XZ', '星座', 10, '10', '摩羯座', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XZ', '星座', 11, '11', '水瓶座', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XZ', '星座', 12, '12', '双鱼座', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XZZW', '行政职位', 1, '1', '普通职员', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XZZW', '行政职位', 2, '2', '部门副经理', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XZZW', '行政职位', 3, '3', '部门经理', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XZZW', '行政职位', 4, '4', '经理助理', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XZZW', '行政职位', 5, '5', '副总经理', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XZZW', '行政职位', 6, '6', '总经理', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XZZW', '行政职位', 7, '7', '副总裁', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XZZW', '行政职位', 8, '8', '总裁', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XZZW', '行政职位', 9, '9', '公司董事', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XZZW', '行政职位', 10, '10', '董事长', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YJLBDYY', '佣金率变动原因', 101, '101', '投顾签约', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YJLBDYY', '佣金率变动原因', 102, '102', '投顾解约', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YJLBDYY', '佣金率变动原因', 103, '103', '协议变更', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YJLBDYY', '佣金率变动原因', 201, '201', '产品定制', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YJLBDYY', '佣金率变动原因', 202, '202', '产品退订', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YKFX', '盈亏方向', 0, '0', '盈利', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YKFX', '盈亏方向', 1, '1', '亏损', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YKJSFS', '盈亏计算方式', 0, 'Code1', '买入均价', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YKJSFS', '盈亏计算方式', 1, 'Code2', '持仓成本', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YKJSFS', '盈亏计算方式', 2, 'Code3', '保本价', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YLQD', '引流渠道', 1, '1', '官网', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YLQD', '引流渠道', 2, '2', '同花顺', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YLQD', '引流渠道', 3, '3', '百度', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YLQD', '引流渠道', 4, '4', '腾讯', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YLQD', '引流渠道', 5, '5', '掌中投', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YLQD', '引流渠道', 6, '6', '天下牛人汇-金融界', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YLQD', '引流渠道', 7, '7', '天下牛人汇-大智慧', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YLQD', '引流渠道', 8, '8', '天下牛人汇-建行', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YLQD', '引流渠道', 9, '9', '天下牛人汇-营业部', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YLQD', '引流渠道', 10, '10', '顺德农商行', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YLQD', '引流渠道', 12, '12', '华尔街见闻', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YLQD', '引流渠道', 13, '13', 'CCTV证券资讯频道', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YLQD', '引流渠道', 14, '14', '中国联通', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YNNGMJRCPS', '一年内购买金融产品数量', 1, '1', '5个以下', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YNNGMJRCPS', '一年内购买金融产品数量', 2, '2', '6至10个', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YNNGMJRCPS', '一年内购买金融产品数量', 3, '3', '11至15个', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YNNGMJRCPS', '一年内购买金融产品数量', 4, '4', '16个以上', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YQSYL', '预期收益率', 1, '1', '0-5%(含)', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YQSYL', '预期收益率', 2, '2', '5-8%(含)', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YQSYL', '预期收益率', 3, '3', '8%以上', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YQTZJE', '预期投资金额', 1, '1', '不超过50万元人民币', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YQTZJE', '预期投资金额', 2, '2', '50万-300万元（不含）人民币', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YQTZJE', '预期投资金额', 3, '3', '300万-1000万元（不含）人民币', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YQTZJE', '预期投资金额', 4, '4', '1000万元人民币以上', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YQTZQX', '预期投资期限', 1, '1', '短期--0到1年', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YQTZQX', '预期投资期限', 2, '2', '中期--1到5年', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YQTZQX', '预期投资期限', 3, '3', '长期--5年以上', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YQTZSY', '预期投资收益', 1, '1', '10%-20%', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YQTZSY', '预期投资收益', 2, '2', '20%-40%', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YQTZSY', '预期投资收益', 3, '3', '40%-60%', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YQTZSY', '预期投资收益', 4, '4', '60%以上', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YRCPFL', '引入产品分类', 5, '5', '信托产品', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWJD', '业务阶段', -1, '-1', '流失', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWJD', '业务阶段', 1, '1', '预期', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWJD', '业务阶段', 2, '2', '协商', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWJD', '业务阶段', 3, '3', '审批中', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWJD', '业务阶段', 4, '4', '已签单', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWLX_GS', '公司业务类型', 1, '1', '投资', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWLX_GS', '公司业务类型', 2, '2', '融资', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWLX_GS', '公司业务类型', 3, '3', '其它', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWLY', '业务来源', 0, '0', '其它', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWLY', '业务来源', 1, '1', '内部提供', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWLY', '业务来源', 2, '2', '客户需求', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWLY', '业务来源', 3, '3', '职员引介', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWLY', '业务来源', 4, '4', '广告', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWLY', '业务来源', 5, '5', '合作伙伴', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWLY', '业务来源', 6, '6', '外部引介', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWLY', '业务来源', 7, '7', '公共关系', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWLY', '业务来源', 8, '8', '贸易展览会', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWTCLX', '业务提成类型', 1, '1', '普通交易佣金提成', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWTCLX', '业务提成类型', 2, '2', '两融交易佣金提成', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWTCLX', '业务提成类型', 3, '3', '私募产品佣金提成', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWTCLX', '业务提成类型', 4, '4', '量化对冲业务佣金提成', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWTCLX', '业务提成类型', 5, '5', 'IB业务佣金提成', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWTCLX', '业务提成类型', 6, '6', '投顾签约服务手续费提成', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWTCLX', '业务提成类型', 7, '7', '服务产品收入提成', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWTCLX', '业务提成类型', 8, '8', '其他佣金类提成', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWXL', '业务序列', 1, '1', '营销', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWXL', '业务序列', 2, '2', '服务', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWXL', '业务序列', 4, '4', '后台', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWXQ', '业务需求', 1, '1', '有需求', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWXQ', '业务需求', 2, '2', '暂无需求', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YWXQ', '业务需求', 3, '3', '考虑中', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YX', '[PUB]允许', 0, 'F', 'F-不允许', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YX', '[PUB]允许', 1, 'Y', 'Y-允许', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YXHDLX', '营销活动类型', 1, 'Code1', '产品发布', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YXHDLX', '营销活动类型', 2, 'Code2', '新开网点', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YXHDLX', '营销活动类型', 3, 'Code3', '营业部周庆', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YXHDLX', '营销活动类型', 4, 'Code4', '公司周庆', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YXLX', '影像类型', 1, '1', '个人照片', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YXLX', '影像类型', 2, '2', '个人证件_正面', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YXLX', '影像类型', 3, '3', '毕业证书', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YXLX', '影像类型', 6, '6', '签约合同书', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YXLX', '影像类型', 8, '8', '个人证件_背面', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YXLX', '影像类型', 9, '9', '学位证书', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YXLX', '影像类型', 20, '20', '委托授权书', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YXLX', '影像类型', 21, '21', '转赠客户授权书', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YXLX', '影像类型', 22, '22', '客户挂接确认单正面', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YXLX', '影像类型', 23, '23', '客户解挂确认单', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YXLX', '影像类型', 24, '24', '客户挂接确认单背面', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YXLX', '影像类型', 60, '60', '签约现场', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YXLX', '影像类型', 61, '61', '制度签名', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YXLX', '影像类型', 62, '62', '手抄禁令', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YXLX', '影像类型', 501, '501', '证券经纪业务营销资格证书', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YXLX', '影像类型', 502, '502', '基金推介销售资格证书', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YXLX', '影像类型', 504, '504', '期货营销证书', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YXLX', '影像类型', 508, '508', '证券经纪人证书', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YXLX', '影像类型', 516, '516', '证券投资咨询(其它)证书', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YXLX', '影像类型', 532, '532', '一般证券业务证书', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YXLX', '影像类型', 564, '564', '基金投资管理证书', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YXLX', '影像类型', 5128, '5128', '证券投资咨询业务(分析师)证书', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YXLX', '影像类型', 5256, '5256', '证券投资咨询业务(投资顾问)证书', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YYBFL', '营业部分类', 1, '1', '重点营业部', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YYBFL', '营业部分类', 2, '2', '营业部', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YYBLB', '营业部类别', 1, '1', 'A类营业部', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YYBLB', '营业部类别', 2, '2', 'B类营业部', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YYBLB', '营业部类别', 3, '3', 'C类营业部', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YZWTLB', '银证转帐委托类别', 2, '1', '银行转证券', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YZWTLB', '银证转帐委托类别', 4, '2', '证券转银行', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YZWTLB', '银证转帐委托类别', 8, '22', '签到', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YZWTLB', '银证转帐委托类别', 16, '23', '签退', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YZWTLB', '银证转帐委托类别', 32, '4', '登记对应关系', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YZWTLB', '银证转帐委托类别', 64, '5', '撤销对应关系', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YZWTLB', '银证转帐委托类别', 128, '3', '查询余额', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YZWTLB', '银证转帐委托类别', 256, '-9', '交易核实', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YZWTLB', '银证转帐委托类别', 512, '20', '汇总对帐', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YZWTLB', '银证转帐委托类别', 1024, '21', '明细对帐', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YZWTLB', '银证转帐委托类别', 2048, '-17', '冲正银行转证券', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YZWTLB', '银证转帐委托类别', 4096, '-18', '冲正证券转银行', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('YZWTLB', '银证转帐委托类别', 8192, '-1', '撤销银行转证券', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBDW', '指标单位', 1, '1', '无', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBDW', '指标单位', 2, '2', '元', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBDW', '指标单位', 3, '3', '万元', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBDW', '指标单位', 4, '4', '份', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBDW', '指标单位', 5, '5', '%', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBDW', '指标单位', 6, '6', '股', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBDW', '指标单位', 7, '7', '次', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBDW', '指标单位', 8, '8', '分', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', '指标核对类别', 1, '1', '普通账户净佣金', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', '指标核对类别', 2, '2', '信用账户净佣金', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', '指标核对类别', 3, '3', '个股期权净佣金', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', '指标核对类别', 4, '4', '保证金利差', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', '指标核对类别', 5, '5', '融资融券利息', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', '指标核对类别', 6, '6', 'IB业务', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', '指标核对类别', 7, '7', '其他协同业务', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', '指标核对类别', 8, '8', '聚金利', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', '指标核对类别', 9, '9', '大集合产品收入', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', '指标核对类别', 10, '10', '投资咨询产品', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', '指标核对类别', 11, '11', '公募_手续费', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', '指标核对类别', 12, '12', '公募_销售服务费', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', '指标核对类别', 13, '13', '公募_尾随佣金', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', '指标核对类别', 14, '14', '公募_分仓收入', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', '指标核对类别', 15, '15', '收益凭证收入', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', '指标核对类别', 16, '16', '私募_认申购', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', '指标核对类别', 17, '17', '私募_销售服务费', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', '指标核对类别', 18, '18', '私募_管理费', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', '指标核对类别', 19, '19', '私募_超额业绩', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', '指标核对类别', 20, '20', '私募_代销净佣金', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', '指标核对类别', 21, '21', '私募_PB收入', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', '指标核对类别', 22, '22', '私募_利差收入', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJTZHY', '资金投资行业', 4, '4', '能源', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJTZHY', '资金投资行业', 5, '5', '旅游餐饮', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJTZHY', '资金投资行业', 6, '6', '科教文卫', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJTZHY', '资金投资行业', 7, '7', '金融', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJTZHY', '资金投资行业', 8, '8', '交通运输', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJTZHY', '资金投资行业', 9, '9', '基础设施', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJTZHY', '资金投资行业', 10, '10', '工商企业', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJTZHY', '资金投资行业', 11, '11', '工矿企业', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJTZHY', '资金投资行业', 12, '12', '房地产', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJXY', '宗教信仰', 1, '1', '佛教', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJXY', '宗教信仰', 2, '2', '基督教', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJXY', '宗教信仰', 3, '3', '伊斯兰教', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJXY', '宗教信仰', 4, '4', '其他', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJXY', '宗教信仰', 5, '5', '无宗教信仰', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZKFS', '折扣方式', 1, '1', '打折', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZKFS', '折扣方式', 2, '2', '优惠价', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQDW', '周期单位', 1, '1', '月', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQDW', '周期单位', 2, '2', '季', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQDW', '周期单位', 3, '3', '年', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQDW', '周期单位', 4, '4', '次', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQDW', '周期单位', 5, '5', '一次性', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQFXCSNL', '债券风险承受能力', 1, '1', '保守型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQFXCSNL', '债券风险承受能力', 2, '2', '稳健型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQFXCSNL', '债券风险承受能力', 3, '3', '积极型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQFXCSNL', '债券风险承受能力', 4, '4', '激进型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQFXCSNL', '债券风险承受能力', 5, '5', '平衡型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQJYZT', '证券交易状态', 0, '0', '正常', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQJYZT', '证券交易状态', 1, '1', '停牌', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQJYZT', '证券交易状态', 2, '2', '发行', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQJYZT', '证券交易状态', 3, '3', '首日上市', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQLB', '证券类别', 1, '1', '股票', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQLB', '证券类别', 2, '2', '国债', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQLB', '证券类别', 3, '3', '企业债券', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQLB', '证券类别', 4, '4', '国债回购', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQLB', '证券类别', 5, '5', '普通基金', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQLB', '证券类别', 6, '6', '投资基金', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQLB', '证券类别', 7, '7', '企债回购', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQLB', '证券类别', 8, '8', '转换债券', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQLB', '证券类别', 9, '9', '开放基金', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQLB', '证券类别', 10, '10', '买断回购', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQLB', '证券类别', 11, '11', '股票港币', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQLB', '证券类别', 12, '12', '股票美元', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQLB', '证券类别', 13, '13', '权证', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQLB', '证券类别', 14, '14', '公司债券', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQLB', '证券类别', 15, '15', 'ETF基金', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQLB', '证券类别', 16, '16', '创业股票', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQLB', '证券类别', 17, '17', '特殊股票', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQSCLX', '证券市场', 1, '1', '沪A', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQSCLX', '证券市场', 2, '2', '深A', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQSCLX', '证券市场', 3, '3', '特别转让', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQSCLX', '证券市场', 4, '4', '沪B', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQSCLX', '证券市场', 5, '5', '资金港币', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQSCLX', '证券市场', 6, '6', '深B', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQSCLX', '证券市场', 7, '7', '开放式基金(场外)', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQSCLX', '证券市场', 8, '8', '资金美元', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQSCLX', '证券市场', 9, '9', '资金人民币', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQTZBC', '证券投资比重', 1, '1', '70%以上', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQTZBC', '证券投资比重', 2, '2', '50%-70%', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQTZBC', '证券投资比重', 3, '3', '30%－50%', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQTZBC', '证券投资比重', 4, '4', '10%－30%', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQTZBC', '证券投资比重', 5, '5', '10%以下', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQZL', '证券种类', 0, '0', '全部', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQZL', '证券种类', 1, '1', 'A股', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQZL', '证券种类', 2, '2', 'B股', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQZL', '证券种类', 3, '3', '中小板', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQZL', '证券种类', 4, '4', '创业板', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQZL', '证券种类', 5, '5', '债券', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQZL', '证券种类', 6, '6', '权证', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQZL', '证券种类', 7, '7', '场内基金', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZQZL', '证券种类', 8, '8', '港股', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZSPC', '知识评测', 0, '0', '不及格', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZSPC', '知识评测', 1, '1', '及格', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZW', '职务', 1, '1', '首席理财培训师', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZW', '职务', 2, '2', '理财师', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZW', '职务', 3, '3', '首席培训师', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZW', '职务', 4, '4', '培训师', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZW', '职务', 5, '5', '营销总监', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZW', '职务', 6, '6', '总监助理', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZW', '职务', 7, '7', '总经理助理', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZW', '职务', 8, '8', '部门经理', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZW', '职务', 9, '9', '副总监', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZW', '职务', 10, '10', '内务部经理', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZW', '职务', 11, '11', '区城副经理', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZW', '职务', 12, '12', '客户经理', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZXBGLX', '中信报告类型', 1, '1', '账户报告', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZXBGLX', '中信报告类型', 2, '2', '理财规划报告', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZXBGLX', '中信报告类型', 3, '3', '投资规划报告', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZXZT', '执行状态', -1, '-1', '失败', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZXZT', '执行状态', 0, '0', '执行中', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZXZT', '执行状态', 1, '1', '成功', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYCD', '重要程度', 1, '1', '很重要', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYCD', '重要程度', 2, '2', '重点关注', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYCD', '重要程度', 3, '3', '一般', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYDM', '职业代码', 1, '1', '文教科卫专业人员', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYDM', '职业代码', 2, '2', '党政机关干部', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYDM', '职业代码', 3, '3', '企事业单位干部', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYDM', '职业代码', 4, '4', '行政企事业单位工人', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYDM', '职业代码', 5, '5', '农民', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYDM', '职业代码', 6, '6', '个体', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYDM', '职业代码', 7, '7', '无业', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYDM', '职业代码', 8, '8', '军人', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYDM', '职业代码', 9, '9', '学生', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYDM', '职业代码', 10, '10', '证券从业人员', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYDM', '职业代码', 11, '11', '离退休', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYDM', '职业代码', 99, '99', '其他', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYDM_KYC', '职业代码_KYC', 1, '1', '艺术／演艺／媒体', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYDM_KYC', '职业代码_KYC', 2, '2', '银行／证券／保险', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYDM_KYC', '职业代码_KYC', 3, '3', '制造业', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYDM_KYC', '职业代码_KYC', 4, '4', '教育', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYDM_KYC', '职业代码_KYC', 5, '5', '政府／军队／警察', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYDM_KYC', '职业代码_KYC', 6, '6', '资讯／科技', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYDM_KYC', '职业代码_KYC', 7, '7', '法律', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYDM_KYC', '职业代码_KYC', 8, '8', '医疗', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYDM_KYC', '职业代码_KYC', 9, '9', '其他', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYDM_KYC', '职业代码_KYC', 10, '10', '不动产', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYDM_KYC', '职业代码_KYC', 11, '11', '物流', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYFD', '瞻养负担', 1, '1', '1-2人', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYFD', '瞻养负担', 2, '2', '3-4人', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYFD', '瞻养负担', 3, '3', '5人以上', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYJG', '专业结构', 1, '1', '会计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYJG', '专业结构', 2, '2', '法律', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYJG', '专业结构', 3, '3', '计算机', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYJG', '专业结构', 4, '4', '财经', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYJG', '专业结构', 5, '5', '其他', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYSRLY', '主要收入来源', 1, '1', '工资、劳务报酬', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYSRLY', '主要收入来源', 2, '2', '生产经营所得', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYSRLY', '主要收入来源', 3, '3', '利息、股息、转让证券等金融性资产收入', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYSRLY', '主要收入来源', 4, '4', '出租、出售房地产等非金融性资产收入', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYSRLY', '主要收入来源', 5, '5', '无固定收入', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYYXLX', '展业影像类型', 30, '30', '成绩证-证券市场基础知识', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYYXLX', '展业影像类型', 31, '31', '成绩证-证券发行与承销', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYYXLX', '展业影像类型', 32, '32', '成绩证-证券交易', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYYXLX', '展业影像类型', 33, '33', '成绩证-证券投资分析', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYYXLX', '展业影像类型', 34, '34', '成绩证-证券投资基金', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYYXLX', '展业影像类型', 35, '35', '成绩证-经纪人专项', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYYXLX', '展业影像类型', 36, '36', '成绩证-证券市场基础编码', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYYXLX', '展业影像类型', 37, '37', '成绩证-证券经纪业务营销编码', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYYXLX', '展业影像类型', 38, '38', '成绩证-期货基础知识', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYYXLX', '展业影像类型', 39, '39', '成绩证-期货法律法规', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYYXLX', '展业影像类型', 40, '40', '成绩证-证券投资基金销售基础知识', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYYXLX', '展业影像类型', 501, '501', '证券经纪业务营销资格证书', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYYXLX', '展业影像类型', 502, '502', '基金推介销售资格证书', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYYXLX', '展业影像类型', 504, '504', '期货营销证书', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYYXLX', '展业影像类型', 508, '508', '证券经纪人证书', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYYXLX', '展业影像类型', 516, '516', '证券投资咨询(其它)证书', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYYXLX', '展业影像类型', 532, '532', '一般证券业务证书', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYYXLX', '展业影像类型', 564, '564', '基金投资管理证书', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYYXLX', '展业影像类型', 5128, '5128', '证券投资咨询业务(分析师)证书', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYYXLX', '展业影像类型', 5256, '5256', '证券投资咨询业务(投资顾问)证书', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZYYXLX', '展业影像类型', 5512, '5512', '保险', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZZMM', '政治面貌', 1, '1', '群众', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZZMM', '政治面貌', 2, '2', '共青团员', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZZMM', '政治面貌', 3, '3', '中共党员', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZZMM', '政治面貌', 4, '4', '民主党派', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZZMM', '政治面貌', 5, '5', '其它', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZZTX', '组织体系', 1, '1', '营销类', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZZTX', '组织体系', 2, '2', '服务类', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZZTXSHBQ', '掌中投线上化标签', 1, '1', '已线上化_交易客户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZZTXSHBQ', '掌中投线上化标签', 2, '2', '已线上化_注册客户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZZTXSHBQ', '掌中投线上化标签', 3, '3', '未线上化_重点目标', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZZTXSHBQ', '掌中投线上化标签', 4, '4', '未线上化_难点目标', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZZTXSHBQ', '掌中投线上化标签', 5, '5', '未线上化_其他客户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZZZD', '自助终端', 0, '0', '取消', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZZZD', '自助终端', 1, '1', '开通', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('infolevel', '信息等级', 1, '1', '一星级', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('infolevel', '信息等级', 2, '2', '二星级', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('infolevel', '信息等级', 3, '3', '三星级', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('infolevel', '信息等级', 4, '4', '四星级', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('infolevel', '信息等级', 5, '5', '五星级', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('infovalue', '评级结论', 0, '0', '未评级', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('infovalue', '评级结论', 1, '1', '推荐', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('infovalue', '评级结论', 2, '2', '谨慎推荐', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('infovalue', '评级结论', 3, '3', '中性', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('infovalue', '评级结论', 4, '4', '回避', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('qrkhlx', '客户种类', 1, '1', '个人', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('qrkhlx', '客户种类', 2, '2', '机构', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('sfzcd', '身份证位数', 15, '15', '15', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('sfzcd', '身份证位数', 18, '18', '18', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('tczfs', '操作方式', 1, '1', '初始化当月营业部数据', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('tczfs', '操作方式', 2, '2', '初始化当月中未初始化数据', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('参数类型', 'CSLX', 1, '1', '最小值', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('参数类型', 'CSLX', 2, '2', '最大值', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('参数类型', 'CSLX', 3, '3', '取值范围', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('服务类型', 'FWLX', 1, '1', '亲情服务', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('服务类型', 'FWLX', 2, '2', '账户服务', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('服务类型', 'FWLX', 3, '3', '客户回访', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('服务类型', 'FWLX', 4, '4', '客户投诉', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('服务类型', 'FWLX', 5, '5', '产品服务', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('服务类型', 'FWLX', 6, '6', '融资服务', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('服务类型', 'FWLX', 7, '7', '创新业务', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('投资组合模型', 'TZZHMX', 1, '1', 'Markowitz模型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('投资组合模型', 'TZZHMX', 2, '2', '矩阵方差模型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GXSFCZ', '排除已有关系', 1, '1', '已有关系', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GXSFCZ', '排除已有关系', 2, '2', '排除已有关系', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GXSFCZ', '排除已有关系', 2, '2', '排除已有关系', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('GXSFCZ', '排除已有关系', 1, '1', '已有关系', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CLXMJQCJ', '承揽项目接洽层级', 1, '1', '实际控制人', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CLXMJQCJ', '承揽项目接洽层级', 2, '2', '高管', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CLXMJQCJ', '承揽项目接洽层级', 3, '3', '财务总监', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CLXMJQCJ', '承揽项目接洽层级', 4, '4', '客户项目团队', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CLXMJQCJ', '承揽项目接洽层级', 5, '5', '其他', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGCRMLCSPZT', '机构CRM流程审批状态', -1, '-1', '驳回', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGCRMLCSPZT', '机构CRM流程审批状态', 0, '0', '审批中', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGCRMLCSPZT', '机构CRM流程审批状态', 2, '2', '审批通过', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGCRMLCSPZT', '机构CRM流程审批状态', 3, '3', '审批未通过', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGCRMLCSPZT', '机构CRM流程审批状态', 4, '4', '草稿', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGCRMXMZT', '机构CRM项目进展', -1, '-1', '暂缓/终止', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGCRMXMZT', '机构CRM项目进展', 0, '0', '推进中', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGCRMXMZT', '机构CRM项目进展', 1, '1', '完成', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGCRMXMZT1', '机构CRM项目状态', 0, '0', '草稿', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGCRMXMZT1', '机构CRM项目状态', 1, '1', '审批中', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGCRMXMZT1', '机构CRM项目状态', 2, '2', '审批不通过', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGCRMXMZT1', '机构CRM项目状态', 3, '3', '审批通过', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('JGCRMXMZT1', '机构CRM项目状态', 4, '4', '驳回', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SFYSS', '是否已上市', 0, '0', '未上市', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SFYSS', '是否已上市', 1, '1', '已上市', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SFYZQTFMKZYWHZ', '是否已在其他方面开展业务合作', 0, '0', '未在其他方面开展业务合作', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SFYZQTFMKZYWHZ', '是否已在其他方面开展业务合作', 1, '1', '已在其他方面开展业务合作', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XMLCB', '项目里程碑', 1, '1', '签署保密协议', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XMLCB', '项目里程碑', 2, '2', '招标', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XMLCB', '项目里程碑', 3, '3', '中标', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XMLCB', '项目里程碑', 4, '4', '签订财务顾问协议', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XMLCB', '项目里程碑', 5, '5', '立项', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XMLCB', '项目里程碑', 6, '6', '初审', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XMLCB', '项目里程碑', 7, '7', '内核', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XMLCB', '项目里程碑', 8, '8', '上报监管机构', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTXMLX', '协同业务项目类型', 1, '1', '股权类', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTXMLX', '协同业务项目类型', 2, '2', '债权类', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTXMLX', '协同业务项目类型', 3, '3', '资本市场类', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTXMLX', '协同业务项目类型', 4, '4', 'ABS', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTXMLX', '协同业务项目类型', 5, '5', '产业/并购基金', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTXMLX', '协同业务项目类型', 6, '6', '并购', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTXMLX', '协同业务项目类型', 7, '7', '其他', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DJLX', '冻结类型', 1, '1', '司法冻结', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DJLX', '冻结类型', 2, '2', '商业银行冻结', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('DJLX', '冻结类型', 3, '3', '其他', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FZ', '负债', 1, '1', '融资负债', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FZ', '负债', 2, '2', '融券负债', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('FZ', '负债', 3, '3', '利息负债', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', '系统指标说明类别', 1, '1', '时间维度', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', '系统指标说明类别', 2, '2', '特殊分支', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', '系统指标说明类别', 3, '3', '客户分层', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', '系统指标说明类别', 11, '11', '客户基础', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', '系统指标说明类别', 12, '12', '客户资产', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', '系统指标说明类别', 13, '13', '客户交易', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', '系统指标说明类别', 14, '14', '客户持仓', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', '系统指标说明类别', 15, '15', '客户服务', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', '系统指标说明类别', 16, '16', '客户线上化', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', '系统指标说明类别', 19, '19', '客户其它', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', '系统指标说明类别', 21, '21', '员工基础', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', '系统指标说明类别', 22, '22', '员工关系', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', '系统指标说明类别', 23, '23', '员工培训', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', '系统指标说明类别', 29, '29', '员工其它', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', '系统指标说明类别', 31, '31', '服务消息', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', '系统指标说明类别', 32, '32', '服务记录', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', '系统指标说明类别', 39, '39', '服务其它', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', '系统指标说明类别', 41, '41', '金融产品基础', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', '系统指标说明类别', 42, '42', '金融产品管理', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', '系统指标说明类别', 43, '43', '金融产品适当性', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', '系统指标说明类别', 49, '49', '金融产品其它', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', '系统指标说明类别', 51, '51', '服务产品基础', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', '系统指标说明类别', 52, '52', '服务产品管理', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', '系统指标说明类别', 53, '53', '服务产品适当性', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', '系统指标说明类别', 54, '54', '服务产品资讯', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', '系统指标说明类别', 59, '59', '服务产品其它', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', '系统指标说明类别', 71, '71', '工作流程', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', '系统指标说明类别', 72, '72', '工作MOT', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', '系统指标说明类别', 73, '73', '工作任务', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', '系统指标说明类别', 79, '79', '工作其它', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', '系统指标说明类别', 81, '81', '绩效基础', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', '系统指标说明类别', 82, '82', '绩效参数', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', '系统指标说明类别', 83, '83', '绩效数据', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', '系统指标说明类别', 89, '89', '绩效其它', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', '系统指标说明类别', 91, '91', '系统参数', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', '系统指标说明类别', 92, '92', '系统管理', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XTZBSMLB', '系统指标说明类别', 99, '99', '系统其它', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHLX_XTZBSM', '账户类型_系统指标说明', 0, '0', '合并账户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHLX_XTZBSM', '账户类型_系统指标说明', 1, '1', '普通账户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHLX_XTZBSM', '账户类型_系统指标说明', 2, '2', '信用账户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHLX_XTZBSM', '账户类型_系统指标说明', 3, '3', '金融产品账户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHLX_XTZBSM', '账户类型_系统指标说明', 4, '4', '个股期权账户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLXJJQY', '证件类型（基金迁移）', 0, '0', '中国居民身份证', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLXJJQY', '证件类型（基金迁移）', 2, '2', '外国护照', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLXJJQY', '证件类型（基金迁移）', 3, '3', '台湾同胞来往大陆通行证', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLXJJQY', '证件类型（基金迁移）', 4, '4', '港，澳地区居民来往内地通行证', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLXJJQY', '证件类型（基金迁移）', 5, '5', '其他', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CZZT', '操作状态', 1, '1', '首次新增', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('CZZT', '操作状态', 2, '2', '修改', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', '指标核对类别', 23, '23', '私募_非代销净佣金', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', '指标核对类别', 24, '24', '项目_预定购回', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', '指标核对类别', 25, '25', '项目_股票质押', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', '指标核对类别', 26, '26', '项目_固收业务', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', '指标核对类别', 27, '27', '项目_柜台业务', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', '指标核对类别', 28, '28', '项目_投行业务', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', '指标核对类别', 29, '29', '项目_托管产品私募PB', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', '指标核对类别', 30, '30', '项目_资管定向业务', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', '指标核对类别', 31, '31', '项目_机构化融资', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', '指标核对类别', 32, '32', '项目_场外期权', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', '指标核对类别', 33, '33', '项目_定制类收益凭证', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', '指标核对类别', 34, '34', '项目_资产证券化', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', '指标核对类别', 35, '35', '私募_非代销利差收入', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', '指标核对类别', 36, '36', '项目_股票借贷', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', '指标核对类别', 91, '91', '资管_认申购费', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', '指标核对类别', 92, '92', '资管_管理费', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', '指标核对类别', 93, '93', '资管_佣金', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBHDLB', '指标核对类别', 94, '94', '资管_超额业绩', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBLB', '指标类别', 1, '1', '基本信息', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBLB', '指标类别', 2, '2', '成本指标', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBLB', '指标类别', 3, '3', '价值指标', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBLB', '指标类别', 4, '4', '投资效果指标', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBLB', '指标类别', 5, '5', '行为指标', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBLX', '指标类型', 1, 'Code1', '一般指标', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBLX', '指标类型', 2, 'Code2', '产品销售', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBSX', '指标属性', 1, '1', '绩效', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBSX', '指标属性', 2, '2', '薪酬计算', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBSX', '指标属性', 4, '4', '级别计算', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBSX', '指标属性', 8, '8', '提成指标', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZBSX', '指标属性', 16, '16', '积分', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZCFL', '资产类型', 1, '1', '不动产', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZCFL', '资产类型', 2, '2', '汽车', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZCFL', '资产类型', 3, '3', '金融资产', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZCFL', '资产类型', 4, '4', '商品资产', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZCFL', '资产类型', 5, '5', '家族资产', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZCLB', '资产类别', 1, '1', '现金类', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZCLB', '资产类别', 2, '2', '权益类', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZCLB', '资产类别', 3, '3', '固定收益类', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZCLB', '资产类别', 4, '4', '其它', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZCPZBGLX', '资产配置报告类型', 1, '1', '账户报告', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZCPZBGLX', '资产配置报告类型', 2, '2', '理财规划报告', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZCPZBGLX', '资产配置报告类型', 3, '3', '投资规划报告', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZCPZZBFZ', '资产配置指标分组', 1, '1', '资产因素', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZCPZZBFZ', '资产配置指标分组', 2, '2', '年龄因素', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZCPZZBFZ', '资产配置指标分组', 3, '3', '市场因素', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZCPZZBFZ', '资产配置指标分组', 4, '4', '风险特征', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZCPZZBFZ', '资产配置指标分组', 5, '5', '资产类别比例', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZDSXLB', '重大事项类别', 1, '1', '诉讼类', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZDSXLB', '重大事项类别', 2, '2', '监管类', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZDSXLB', '重大事项类别', 3, '3', '意外灾害类', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZDSXLB', '重大事项类别', 4, '4', '其他类', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZFFS', '支付方式', 0, '0', '免费', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZFFS', '支付方式', 1, '1', '绝对佣金率', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZFFS', '支付方式', 2, '2', '现金', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZFFS', '支付方式', 3, '3', '积分', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZFFS', '支付方式', 4, '4', '佣金率增量', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZFFS', '支付方式', 5, '5', '银行转账', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZFFS', '支付方式', 6, '6', '现金+提佣', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_BJTJ', '综合查询_比较条件', 1, '=', '等于', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_BJTJ', '综合查询_比较条件', 2, '>', '大于', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_BJTJ', '综合查询_比较条件', 3, '<', '小于', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_BJTJ', '综合查询_比较条件', 4, '>=', '大于等于', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_BJTJ', '综合查询_比较条件', 5, '<=', '小于等于', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_CZF', '综合查询_操作符', 1, '+', '加', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_CZF', '综合查询_操作符', 2, '-', '减', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_CZF', '综合查询_操作符', 3, '*', '乘', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_CZF', '综合查询_操作符', 4, '/', '除', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_CZF', '综合查询_操作符', 5, ')', '右括号', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_CZF', '综合查询_操作符', 6, '(', '左括号', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_KHLX', '综合查询_客户类型', 1, '1', '个人', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_KHLX', '综合查询_客户类型', 2, '2', '机构', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_PXFS', '综合查询_排序方式', 0, '0', '不排序', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_PXFS', '综合查询_排序方式', 1, '1', '升序', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_PXFS', '综合查询_排序方式', 2, '2', '降序', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_SJZQ', '综合查询_时间周期', 1, '1', '本日', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_SJZQ', '综合查询_时间周期', 2, '2', '本月', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_SJZQ', '综合查询_时间周期', 3, '3', '半年', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_SJZQ', '综合查询_时间周期', 4, '4', '本年', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_SJZQ', '综合查询_时间周期', 5, '5', '近一月', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_SJZQ', '综合查询_时间周期', 6, '6', '近三月', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_SJZQ', '综合查询_时间周期', 7, '7', '近一年', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_SXFS', '综合查询_筛选方式', 1, '1', '单选', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_SXFS', '综合查询_筛选方式', 2, '2', '复选', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_SXFS', '综合查询_筛选方式', 3, '3', '区间', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_SXFS', '综合查询_筛选方式', 4, '4', '比较', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_SXFS', '综合查询_筛选方式', 5, '5', '存在', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_SXFS', '综合查询_筛选方式', 6, '6', '其它', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_ZBFL', '综合查询_指标分类', 1, '1', '客户条件', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_ZBFL', '综合查询_指标分类', 2, '2', '员工条件', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_ZBFL', '综合查询_指标分类', 3, '3', '客户指标', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_ZBFL', '综合查询_指标分类', 4, '4', '资产条件', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_ZBFL', '综合查询_指标分类', 5, '5', '交易条件', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_ZBFL', '综合查询_指标分类', 6, '6', '持仓条件', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_ZBFL', '综合查询_指标分类', 7, '7', '分组条件', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_ZBFL', '综合查询_指标分类', 8, '8', '汇总条件', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_ZBFL', '综合查询_指标分类', 9, '9', '排序条件', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_ZBGS', '综合查询_指标归属', 1, '1', '基础属性', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_ZBGS', '综合查询_指标归属', 2, '2', '资产属性', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_ZBGS', '综合查询_指标归属', 3, '3', '交易属性', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_ZBGS', '综合查询_指标归属', 4, '4', '持股属性', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_ZBGS', '综合查询_指标归属', 5, '5', '集中交易', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_ZBGS', '综合查询_指标归属', 6, '6', '融资融券', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_ZBGS', '综合查询_指标归属', 7, '7', '金融产品', 0, 0, null);
commit;
prompt 3000 records committed...
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_ZBGS', '综合查询_指标归属', 8, '8', '个股期权', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_ZBGS', '综合查询_指标归属', 9, '9', '计算属性', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_ZBGS', '综合查询_指标归属', 99, '99', '其他属性', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_ZDLX', '综合查询_字段类型', 1, '1', '数值', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHCX_ZDLX', '综合查询_字段类型', 2, '2', '字符', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHLX', '账户类型', 1, '1', '期权账户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHLX', '账户类型', 2, '2', '普通账户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHLX', '账户类型', 3, '3', '信用账户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHLX', '账户类型', 4, '4', 'OTC账户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHLX_DX', '账户类型', 1, '1', '普通账户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHLX_DX', '账户类型', 2, '2', '信用账户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHLX_DX', '账户类型', 3, '3', '期权账户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHLX_DX', '账户类型', 4, '4', 'OTC账户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHSX_ZJ', '资金帐户属性', 1, '1', '主帐户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHSX_ZJ', '资金帐户属性', 2, '2', '禁止存款', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHSX_ZJ', '资金帐户属性', 4, '4', '禁止取款', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHSX_ZJ', '资金帐户属性', 8, '8', '禁止银证转帐', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHSX_ZJ', '资金帐户属性', 128, '128', '开通所有基金户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHZCLX', '账户资产类型', 1, '1', '总资产', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHZCLX', '账户资产类型', 2, '2', '股基资产', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHZCLX', '账户资产类型', 3, '3', '信用资产', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHZCLX', '账户资产类型', 4, '4', 'otc资产', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHZCLX', '账户资产类型', 5, '5', '个股期权资产', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHZT', '帐户状态', 0, '0', '正常', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHZT', '帐户状态', 1, '1', '冻结', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHZT', '帐户状态', 2, '2', '挂失', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZHZT', '帐户状态', 3, '3', '销户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJJDFX', '资金借贷方向', 1, '1', '借方', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJJDFX', '资金借贷方向', 2, '2', '贷方', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLB', '证件类别', 0, '0', '身份证', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLB', '证件类别', 1, '1', '护照', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLB', '证件类别', 2, '2', '军官证', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLB', '证件类别', 4, '4', '通行证', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLB', '证件类别', 5, '5', '户口本', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLB', '证件类别', 8, '8', '组织机构代码证', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLB', '证件类别', 15, '15', '台湾通行证及其他有效旅行证', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLB', '证件类别', 18, '18', '外国人永久居留证', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLB', '证件类别', 19, '19', '法人执照/注册登记证', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLB', '证件类别', 20, '20', '警官证', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLB', '证件类别', 21, '21', '海外客户编号', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLB', '证件类别', 22, '22', '香港居民通行证', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLB', '证件类别', 23, '23', '澳门居民通行证', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLB', '证件类别', 24, '24', '台湾居民通行证', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLB', '证件类别', 25, '25', '临时身份证', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLB', '证件类别', 26, '26', '回乡证', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLB', '证件类别', 27, '27', '其他证件', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLB', '证件类别', 99, '99', '其他', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLXFS', '最佳联系方式', 1, '1', '移动电话', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLXFS', '最佳联系方式', 2, '2', '工作电话', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLXFS', '最佳联系方式', 4, '4', '家庭电话', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLXFS', '最佳联系方式', 8, '8', '电子邮件', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLXFS', '最佳联系方式', 16, '16', '传真', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLXFS', '最佳联系方式', 32, '32', '其它', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLXPL', '最佳联系频率', 1, '1', '每周', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLXPL', '最佳联系频率', 2, '2', '双周', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLXPL', '最佳联系频率', 3, '3', '每月', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLXPL', '最佳联系频率', 4, '4', '每季', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJLXPL', '最佳联系频率', 5, '5', '有更新时', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJTZHY', '资金投资行业', 0, '0', '其他', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJTZHY', '资金投资行业', 1, '1', '股票基金债券', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJTZHY', '资金投资行业', 2, '2', '商贸流通', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('ZJTZHY', '资金投资行业', 3, '3', '农林牧渔', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('OTC_JSFS', 'OTC_交收方式', 1, '1', '货银对付', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('OTC_JSFS', 'OTC_交收方式', 2, '2', '见券付款', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('OTC_JSFS', 'OTC_交收方式', 4, '4', '见款付券', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('OTC_JSFS', 'OTC_交收方式', 8, '8', '纯券过户', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('OTC_JYXZ', 'OTC_交易限制', 1, '1', '必须整笔转让', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('OTC_JYXZ', 'OTC_交易限制', 16, '16', '禁止新进股东', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('OTC_JYXZ', 'OTC_交易限制', 32, '32', '按终极股东控制股东上限', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('OTC_MMXZ', 'OTC_买卖限制', 16, '16', '禁止个人买入', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('OTC_MMXZ', 'OTC_买卖限制', 32, '32', '禁止机构买入', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('OTC_XJMS', 'OTC_限价模式', 0, '0', '普通股权限价+-15%', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('OTC_XJMS', 'OTC_限价模式', 1, 'D', '定价', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('OTC_XJMS', 'OTC_限价模式', 2, 'N', '不限', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('OTC_ZDSX', 'OTC_账户指定属性', 1, '1', '未指定', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('OTC_ZDSX', 'OTC_账户指定属性', 2, '2', '当日指定', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('OTC_ZDSX', 'OTC_账户指定属性', 4, '4', '隔日指定', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PCFS', '评测方式', 1, '1', '手工评测', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PCFS', '评测方式', 2, '2', '自动评测', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PCFS', '评测方式', 3, '3', '第三方评测', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PCLX', '评测类型', 1, '1', '风险承受能力首次评测', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PCLX', '评测类型', 2, '2', '风险承受能力重新评测', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PCLX', '评测类型', 3, '3', '基金风险承受能力评测', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PCLX', '评测类型', 4, '4', '融资融券风险承受能力评测', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PCLX', '评测类型', 5, '5', '创业板风险承受能力评测', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PCLX', '评测类型', 6, '6', '机构客户首次风险评测', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PCLX', '评测类型', 7, '7', '机构客户重新风险评测', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PCXMFL', '评测项目分类', 1, '1', '投资风险偏好', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PCXMFL', '评测项目分类', 2, '2', '客观资产实力', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PCXMFL', '评测项目分类', 3, '3', '客户投资能力', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PCZL', '评测种类', 1, '1', '风险评测', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PCZL', '评测种类', 2, '2', '风险偏好', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PCZL', '评测种类', 3, '3', '知识评测', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PGFS', '评估方式', 1, '1', '考勤', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PGFS', '评估方式', 2, '2', '考试', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_BQLX', '[PIF]标签类型', 1, '1', '运维标签', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_BQLX', '[PIF]标签类型', 5, '5', '统计分类', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_BQLX', '[PIF]标签类型', 6, '6', '展示标签', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_BQLX', '[PIF]标签类型', 7, '7', '权限标签', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPCSFS', '[PIF]产品创设方式', 0, '00', '审批', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPCSFS', '[PIF]产品创设方式', 1, '01', '事前备案', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPCSFS', '[PIF]产品创设方式', 2, '02', '事后备案', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPCSFS', '[PIF]产品创设方式', 3, '03', '无需备案或审批', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPDLF', '[PIF]按产品大类分', 1, '1', 'OTC', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPDLF', '[PIF]按产品大类分', 2, '2', '资管产品', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPDLF', '[PIF]按产品大类分', 3, '3', '基金', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPFJLX', '[PIF]产品附加类型', 1, '1', 'ETF', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPFJLX', '[PIF]产品附加类型', 2, '2', 'LOF', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPFJLX', '[PIF]产品附加类型', 3, '3', 'QDII', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPFXCSLX', '[PIF]产品发行场所类型', 0, '00', '本公司', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPFXCSLX', '[PIF]产品发行场所类型', 1, '01', '报价系统', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPFXCSLX', '[PIF]产品发行场所类型', 2, '02', '其他证券公司', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPFXCSLX', '[PIF]产品发行场所类型', 3, '03', '其他金融机构', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPFXCSLX', '[PIF]产品发行场所类型', 4, '04', '中央及中央金融监管部门批设的交易场所', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPFXCSLX', '[PIF]产品发行场所类型', 5, '05', '地方政府批设的交易场所', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPFXCSLX', '[PIF]产品发行场所类型', 99, '99', '其他场所', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPFXDJ', '[PIF]产品风险等级', 1, '1', '低', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPFXDJ', '[PIF]产品风险等级', 2, '2', '中低', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPFXDJ', '[PIF]产品风险等级', 3, '3', '中', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPFXDJ', '[PIF]产品风险等级', 4, '4', '中高', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPFXDJ', '[PIF]产品风险等级', 5, '5', '高', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPGMLX', '[PIF]产品规模类型', 0, '00', '固定规模', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPGMLX', '[PIF]产品规模类型', 1, '01', '设定规模上限', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPGMLX', '[PIF]产品规模类型', 2, '02', '设定规模下限', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPGMLX', '[PIF]产品规模类型', 3, '03', '未设定规模上限及下限', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPJDBZ', '[PIF]产品阶段标识', 601, '601', '提前终止', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPJDBZ', '[PIF]产品阶段标识', 602, '602', '正常终止', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPJDBZ', '[PIF]产品阶段标识', 603, '603', '产品不成立', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPJDBZ', '[PIF]产品阶段标识', 604, '604', '产品下架', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPSX', '[PIF]产品属性', 1, '1', '1-不需要电子预约书', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPSX', '[PIF]产品属性', 2, '2', '2-需要揭示收益明细', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPXL', '[PIF]产品系列', 0, '00', '00-理财类产品', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPXL', '[PIF]产品系列', 1, '1', '1-一海通财', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPXL', '[PIF]产品系列', 2, '2', '2-月月财', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPXL', '[PIF]产品系列', 3, '3', '3-月月赢', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPXL', '[PIF]产品系列', 4, '4', '4-报价回购', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPXL', '[PIF]产品系列', 5, '5', '5-报价回购质权', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPZRCSLX', '[PIF]产品转让场所类型', 0, '00', '本公司柜台市场', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPZRCSLX', '[PIF]产品转让场所类型', 1, '01', '报价系统', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPZRCSLX', '[PIF]产品转让场所类型', 2, '02', '其他证券公司柜台市场', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPZRCSLX', '[PIF]产品转让场所类型', 3, '03', '中央及中央金融监管部门批设的交易场所', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPZRCSLX', '[PIF]产品转让场所类型', 4, '04', '地方政府批设的交易场所', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPZRCSLX', '[PIF]产品转让场所类型', 99, '99', '其他场所', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPZTBZ', '[PIF]产品状态标识', 1, '1', '登记未完成', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPZTBZ', '[PIF]产品状态标识', 2, '2', '产品已登记', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPZTBZ', '[PIF]产品状态标识', 3, '3', '未提交审批', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPZTBZ', '[PIF]产品状态标识', 4, '4', '入库审批中', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPZTBZ', '[PIF]产品状态标识', 5, '5', '入库审批完成', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPZTBZ', '[PIF]产品状态标识', 6, '6', '产品已入库', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPZTBZ', '[PIF]产品状态标识', 7, '7', '上架审批中', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPZTBZ', '[PIF]产品状态标识', 8, '8', '产品已上架', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPZT_OTC', '[PIF]OTC产品状态', 1, '1', '1-募集', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPZT_OTC', '[PIF]OTC产品状态', 2, '2', '2-正常交易', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPZT_OTC', '[PIF]OTC产品状态', 3, '3', '3-清盘', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_CPZT_OTC', '[PIF]OTC产品状态', 4, '4', '4-停牌', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_C_SF', '[PIF]是否', 0, 'N', 'N-否', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_C_SF', '[PIF]是否', 1, 'Y', 'Y-是', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_DFBS', '[PIF]代发标识', 1, '01', '代部门发行', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_DFBS', '[PIF]代发标识', 2, '02', '代子公司发行', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_DFBS', '[PIF]代发标识', 3, '03', '代第三方公司', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_DTBZ', '[PIF]定投标志', 1, '1', '1-允许定投', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_DXBZ', '[PIF]代销标志', 0, '0', '0-默认方式(可代销)', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_DXBZ', '[PIF]代销标志', 1, '1', '1-不可代销', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_DZHT', '[PIF]电子合同', 0, '0', '0-无需合同', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_DZHT', '[PIF]电子合同', 1, '1', '1-电子合同', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_DZHT', '[PIF]电子合同', 2, '2', '2-纸质合同', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_DZHTBS', '[PIF]电子合同报送', 0, '0', '0-默认方式(报送)', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_FEBZ', '[PIF]金额/份额标志', 1, 'M', 'M-金额', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_FEBZ', '[PIF]金额/份额标志', 2, 'S', 'S-份额', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_FPYZ', '[PIF]分配原则', 1, '1', '先进先出', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_FPYZ', '[PIF]分配原则', 2, '2', '后进先出', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_GGBDLB', '[PIF]挂钩标的类别', 0, '00', '沪深交易所挂牌交易证券及其指数', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_GGBDLB', '[PIF]挂钩标的类别', 1, '01', '新三板挂牌交易证券及其指数', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_GGBDLB', '[PIF]挂钩标的类别', 2, '02', '报价系统挂牌产品及其指数', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_GGBDLB', '[PIF]挂钩标的类别', 3, '03', '地方性交易场所挂牌交易产品及其指数', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_GGBDLB', '[PIF]挂钩标的类别', 4, '04', '利率及其指数', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_GGBDLB', '[PIF]挂钩标的类别', 5, '05', '汇率及其指数', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_GGBDLB', '[PIF]挂钩标的类别', 6, '06', '贵金属及其指数', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_GGBDLB', '[PIF]挂钩标的类别', 7, '07', '大宗商品及其指数', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_GGBDLB', '[PIF]挂钩标的类别', 99, '99', '其他', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_GGBDLX', '[PIF]挂钩标的类型', 1, '1', '权益类', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_GGBDLX', '[PIF]挂钩标的类型', 2, '2', '利率类', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_GGBDLX', '[PIF]挂钩标的类型', 3, '3', '汇率类', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_GGBDLX', '[PIF]挂钩标的类型', 4, '4', '大宗商品类', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_GGBDMC', '[PIF]挂钩标的名称', 1, '1', '人民银行基准利率3mth', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_GGBDMC', '[PIF]挂钩标的名称', 2, '2', '沪深300指数', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_HBMD', '[PIF]黑白名单', 0, '0', '0-不启用', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_HBMD', '[PIF]黑白名单', 1, '1', '1-启用黑名单', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_HBMD', '[PIF]黑白名单', 2, '2', '2-启用白名单', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_HBZL', '[PIF]货币种类', 1, '01', '01-人民币', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_HBZL', '[PIF]货币种类', 2, '02', '02-美金', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_HBZL', '[PIF]货币种类', 3, '03', '03-港币', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_HTQSPC', '[PIF]合同签署评测', 0, '0', '0-不需评测', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_HTQSPC', '[PIF]合同签署评测', 1, '1', '1-需要评测', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JGKHCWYQLX', '[PIF]机构客户财务要求类型', 0, '00', '最低注册资本', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JGKHCWYQLX', '[PIF]机构客户财务要求类型', 1, '01', '最低净资产', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JJLB', '[PIF]基金类别', 0, '0', '0-成长', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JJLB', '[PIF]基金类别', 1, '1', '1-稳健', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JJLB', '[PIF]基金类别', 2, '2', '2-增值', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JJLB', '[PIF]基金类别', 3, '3', '3-保本', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JJSSTA', '[PIF]基金所属TA', 98, '98', '深市98TA', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JJSSTA', '[PIF]基金所属TA', 99, '99', '沪市99TA', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JJZHZT', '[PIF]基金转换状态', 0, '0', '0-可转换', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JJZHZT', '[PIF]基金转换状态', 1, '1', '1-只可转入', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JJZHZT', '[PIF]基金转换状态', 2, '2', '2-只可转出', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JJZHZT', '[PIF]基金转换状态', 3, '2', '3-不可转换', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JRCPZT', '[PIF]金融产品阶段', -1, 'Code5', '终止', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JRCPZT', '[PIF]金融产品阶段', 0, 'Code1', '预售期', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JRCPZT', '[PIF]金融产品阶段', 1, 'Code2', '认购期', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JRCPZT', '[PIF]金融产品阶段', 2, 'Code3', '开放期', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JRCPZT', '[PIF]金融产品阶段', 3, 'Code4', '封闭期', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JRCPZT', '[PIF]金融产品阶段', 4, 'Code4', '结束', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JSFS', '[PIF]交收方式', 1, '1', '全额交收', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JSFS', '[PIF]交收方式', 2, '2', '净额交收', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JSGZMB', '[PIF]结算规则模板', 0, '0', '0-标准结算模板', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JSGZMB', '[PIF]结算规则模板', 1, '1', '1-收益凭证', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JXFS', '[PIF]计息方式', 0, '0', '0-默认方式', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JXFS', '[PIF]计息方式', 1, '1', '1-9007设置T+1单基金？', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JXFS', '[PIF]计息方式', 2, '2', '2-9007设置T+0单基金？', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JYQX', '[PIF]交易权限', 1, '1', '认购', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JYQX', '[PIF]交易权限', 2, '2', '申购', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JYQX', '[PIF]交易权限', 3, '3', '赎回', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JYQX', '[PIF]交易权限', 101, '101', '预约认购', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JYQX', '[PIF]交易权限', 201, '201', '预约申购', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JYQX', '[PIF]交易权限', 301, '301', '预约赎回', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JYQX', '[PIF]交易权限', 401, '401', '报价买入', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JYQX', '[PIF]交易权限', 402, '402', '报价卖出', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JYQX', '[PIF]交易权限', 403, '403', '意向买入', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JYQX', '[PIF]交易权限', 404, '404', '意向卖出', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JYQX', '[PIF]交易权限', 405, '405', '定价买入', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JYQX', '[PIF]交易权限', 406, '406', '定价卖出', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JYQX', '[PIF]交易权限', 407, '407', '成交买入', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JYQX', '[PIF]交易权限', 408, '408', '成交卖出', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JYS', '[PIF]交易所', 1, '01', '上海证券交易所', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JYS', '[PIF]交易所', 2, '02', '深圳证券交易所', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JYS', '[PIF]交易所', 3, '03', '全国银行间同业拆借中心', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JYS', '[PIF]交易所', 4, '04', '中国金融期货交易所', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JYS', '[PIF]交易所', 5, '05', '商品期货交易所', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JYS', '[PIF]交易所', 6, '06', '新三板市场', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JYS', '[PIF]交易所', 7, '07', '上海黄金交易所', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JYS', '[PIF]交易所', 8, '08', '场外基金', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JYS', '[PIF]交易所', 9, '09', '场外其他', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JYS', '[PIF]交易所', 10, '10', '海通场外', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_JZWT', '[PIF]禁止委托', 0, '0', '0-默认方式(不禁止)', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_KFFS', '[PIF]扣费方式', 1, '1', '内扣', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_KFFS', '[PIF]扣费方式', 2, '2', '外扣', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_LCCPLX', '[PIF]理财产品类型', 0, '0', '0-普通基金', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_LCCPLX', '[PIF]理财产品类型', 1, '1', '1-现金理财', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_LCCPZLX', '[PIF]理财产品子类型', 0, '0', '0-现金理财', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_LLJSTS', '[PIF]利率计算天数', 0, '0', '按年计息', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_LLJSTS', '[PIF]利率计算天数', 1, '1', '按日Actual/360', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_LLJSTS', '[PIF]利率计算天数', 2, '2', '按日Actual/365', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_LLJSTS', '[PIF]利率计算天数', 3, '3', '按月30/360', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_MJFWF', '[PIF]按募集范围分', 1, '1', '集合资产管理计划', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_MJFWF', '[PIF]按募集范围分', 2, '2', '特定资产管理计划', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_MMJYMS', '[PIF]买卖交易模式', 1, 'Y', 'Y-做市商交易', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_MMJYMS', '[PIF]买卖交易模式', 2, 'N', 'N-协议交易', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_MMJYMS', '[PIF]买卖交易模式', 3, 'A', 'A-做市商和协议交易', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_MMJYMS', '[PIF]买卖交易模式', 4, 'S', 'S-份额认购', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_MMJYMS', '[PIF]买卖交易模式', 5, 'M', 'M-金额认购', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_OTCFXDJ', '[PIF]OTC产品风险等级', 1, '001', '001-低风险', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_OTCFXDJ', '[PIF]OTC产品风险等级', 2, '002', '002-中低风险', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_OTCFXDJ', '[PIF]OTC产品风险等级', 3, '003', '003-中风险', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_OTCFXDJ', '[PIF]OTC产品风险等级', 4, '004', '004-中高风险', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_OTCFXDJ', '[PIF]OTC产品风险等级', 5, '005', '005-高风险', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_PYW', '[PIF]偏移位', -1, '-1', '前', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_PYW', '[PIF]偏移位', 0, '0', '不偏移', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_PYW', '[PIF]偏移位', 1, '1', '后', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_QSRL', '[PIF]清算日历', 1, '01', '上海证券交易所日历', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_QSRL', '[PIF]清算日历', 3, '03', '银行间日历', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_QSZQ', '[PIF]清算周期', 0, 'T', 'T', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_QSZQ', '[PIF]清算周期', 1, 'T+1', 'T+1', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_QSZQ', '[PIF]清算周期', 2, 'T+2', 'T+2', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_QSZQ', '[PIF]清算周期', 3, 'T+3', 'T+3', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_QSZQ', '[PIF]清算周期', 4, 'T+4', 'T+4', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_QSZQ', '[PIF]清算周期', 5, 'T+5', 'T+5', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_QSZQ', '[PIF]清算周期', 6, 'T+6', 'T+6', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_QSZQ', '[PIF]清算周期', 7, 'T+7', 'T+7', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_QSZQ', '[PIF]清算周期', 8, 'T+8', 'T+8', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_QSZQ', '[PIF]清算周期', 9, 'T+9', 'T+9', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_QSZQ', '[PIF]清算周期', 10, 'T+10', 'T+10', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RGFS', '[PIF]认购方式', 1, '1', '现金认购', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RGFS', '[PIF]认购方式', 2, '2', '一揽子股票认购', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RGMS', '[PIF]认购模式', 1, 'S', 'S-份额认购', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RGMS', '[PIF]认购模式', 2, 'M', 'M-金额认购', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]日期', 1, '01', '01', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]日期', 2, '02', '02', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]日期', 3, '03', '03', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]日期', 4, '04', '04', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]日期', 5, '05', '05', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]日期', 6, '06', '06', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]日期', 7, '07', '07', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]日期', 8, '07', '08', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]日期', 9, '09', '09', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]日期', 10, '10', '10', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]日期', 11, '11', '11', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]日期', 12, '12', '12', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]日期', 13, '13', '13', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]日期', 14, '14', '14', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]日期', 15, '15', '15', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]日期', 16, '16', '16', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]日期', 17, '17', '17', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]日期', 18, '18', '18', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]日期', 19, '19', '19', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]日期', 20, '20', '20', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]日期', 21, '21', '21', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]日期', 22, '22', '22', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]日期', 23, '23', '23', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]日期', 24, '24', '24', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]日期', 25, '25', '25', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]日期', 26, '26', '26', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]日期', 27, '27', '27', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]日期', 28, '28', '28', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]日期', 29, '29', '29', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]日期', 30, '30', '30', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQ', '[PIF]日期', 31, '31', '31', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQDW', '[PIF]日期单位', 1, 'D', '日', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQDW', '[PIF]日期单位', 2, 'M', '月', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQDW', '[PIF]日期单位', 3, 'Y', '年', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQDW', '[PIF]日期单位', 4, 'Q', '季', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_RQDW', '[PIF]日期单位', 5, 'H', '半年', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SF', '[PIF]算法', 1, '1', '分期付息算法（无应收利息）', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SF', '[PIF]算法', 2, '2', '分期付息算法（含应收利息）', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SF', '[PIF]算法', 4, '4', '到期无息还本', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SF', '[PIF]算法', 5, '5', '到期取息还本', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SF', '[PIF]算法', 6, '6', '到期计息还本', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SF', '[PIF]算法', 7, '7', '未定期限算法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SFFS', '[PIF]收费方式', 1, '1', '前端收费', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SFFS', '[PIF]收费方式', 2, '2', '后端收费', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SFTGZR', '[PIF]是否提供转让', 1, '00', '是', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SFTGZR', '[PIF]是否提供转让', 2, '01', '否', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SHBAYJ', '[PIF]是否有审批或备案确认意见', 0, '00', '是', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SHBAYJ', '[PIF]是否有审批或备案确认意见', 1, '01', '否', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SPHBAJG', '[PIF]审批或备案机构', 0, '00', '证监会及其派出机构', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SPHBAJG', '[PIF]审批或备案机构', 1, '01', '上海交易所', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SPHBAJG', '[PIF]审批或备案机构', 2, '02', '深圳交易所', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SPHBAJG', '[PIF]审批或备案机构', 3, '03', '全国中小企业股份转让系统公司', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SPHBAJG', '[PIF]审批或备案机构', 4, '04', '证券业协会及监测中心', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SPHBAJG', '[PIF]审批或备案机构', 5, '05', '基金业协会', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SPHBAJG', '[PIF]审批或备案机构', 6, '06', '期货业协会', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SPHBAJG', '[PIF]审批或备案机构', 21, '21', '银监会及其系统内单位', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SPHBAJG', '[PIF]审批或备案机构', 22, '22', '保监会及其系统内单位', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SPHBAJG', '[PIF]审批或备案机构', 23, '23', '人民银行及其系统内单位', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SPHBAJG', '[PIF]审批或备案机构', 24, '24', '地方政府', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SPHBAJG', '[PIF]审批或备案机构', 25, '25', '区域性交易场所', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SPHBAJG', '[PIF]审批或备案机构', 99, '99', '其他', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SYLX', '[PIF]收益类型', 1, '1', '非保本浮动收益', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SYLX', '[PIF]收益类型', 2, '2', '保本浮动收益', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SYLX', '[PIF]收益类型', 3, '3', '保本固定收益', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SYLX', '[PIF]收益类型', 4, '4', '限定性集合资产管理计划', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SYLX', '[PIF]收益类型', 5, '5', '限额特定资产管理计划', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SYLX', '[PIF]收益类型', 6, '6', '集合资产管理计划', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SYLX', '[PIF]收益类型', 7, '7', '专项资产管理计划', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SYLX', '[PIF]收益类型', 8, '8', '特定多客户资产管理计划', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SYLX', '[PIF]收益类型', 9, '9', '本金保障型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SYLX', '[PIF]收益类型', 10, '10', '非本金保障型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SYLXF', '[PIF]按收益类型分', 1, '1', '固定收益', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SYLXF', '[PIF]按收益类型分', 2, '2', '浮动收益', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SYYDFS', '[PIF]收益约定方式', 0, '00', '固定收益', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SYYDFS', '[PIF]收益约定方式', 1, '01', '挂钩收益', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SYYDFS', '[PIF]收益约定方式', 2, '02', '固定收益加挂钩收益', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_SYYDFS', '[PIF]收益约定方式', 3, '03', '其他方式', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_TZFWF', '[PIF]按投资范围分', 1, '1', '货币型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_TZFWF', '[PIF]按投资范围分', 2, '2', '债券型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_TZFWF', '[PIF]按投资范围分', 3, '3', '量化型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_TZFWF', '[PIF]按投资范围分', 4, '4', '混合型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_TZFWF', '[PIF]按投资范围分', 5, '5', 'FOF型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_TZFWF', '[PIF]按投资范围分', 6, '6', '股票型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_TZFWF', '[PIF]按投资范围分', 7, '7', '指数型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_TZFWF', '[PIF]按投资范围分', 8, '8', 'QDII型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_TZFWF', '[PIF]按投资范围分', 9, '9', '其他型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_TZLX', '[PIF]投资类型', 1, '1', '权益类', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_TZLX', '[PIF]投资类型', 2, '2', '固定收益类', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_TZLX', '[PIF]投资类型', 3, '3', '现金管理类', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_TZLX', '[PIF]投资类型', 4, '4', '结构化', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_TZLX', '[PIF]投资类型', 5, '5', '衍生品', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_TZZLX', '[PIF]投资者类型', 1, '1', '保守型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_TZZLX', '[PIF]投资者类型', 2, '2', '稳健型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_TZZLX', '[PIF]投资者类型', 3, '3', '进取型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_WTFS', '[PIF]委托方式', 0, '0', '0-自助委托', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_WTFS', '[PIF]委托方式', 1, '1', '1-电话委托', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_WTFS', '[PIF]委托方式', 2, '2', '2-驻留委托', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_WTFS', '[PIF]委托方式', 3, '3', '3-远程委托', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_WTFS', '[PIF]委托方式', 4, '4', '4-柜台委托', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_WTFS', '[PIF]委托方式', 5, '5', '5-网上委托', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_WTFS', '[PIF]委托方式', 6, '6', '6-分支委托', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_WTFS', '[PIF]委托方式', 7, '7', '7-漫游委托', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_WTFS', '[PIF]委托方式', 8, '8', '8-ETF套利委托', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_WTFS', '[PIF]委托方式', 9, '9', '9-手机委托', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_WTFS', '[PIF]委托方式', 10, 'a', 'a-银行ATM', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_WTFS', '[PIF]委托方式', 11, 'b', 'b-银行柜台', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_WTFS', '[PIF]委托方式', 12, 'd', 'd-快融宝', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_WTFS', '[PIF]委托方式', 13, 'c', 'c-海外委托', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_WTFS', '[PIF]委托方式', 14, 'f', 'f-FIX委托', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_WTFS', '[PIF]委托方式', 15, 'x', 'x-现场网交', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_WTFS', '[PIF]委托方式', 16, 'h', 'h-恒生网交', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_WTFS', '[PIF]委托方式', 17, 'm', 'm-银行委托', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_WTFS', '[PIF]委托方式', 18, 'n', 'n-宏汇委托', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_WTFS', '[PIF]委托方式', 19, 'w', 'w-网上无证', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_YWCDBZ', '[PIF]业务撤单标志', 0, '0', '0-默认方式(允许)', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_YWTBZ', '[PIF]预委托标志', 0, '0', '0-禁止预委托', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_ZCJGJS', '[PIF]资产价格计算', 0, '0', '0-按净值', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_ZCJGJS', '[PIF]资产价格计算', 1, '1', '1-按最新价', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_ZCLX', '[PIF]资产类型', 0, '00', '有价证券（含票据）', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_ZCLX', '[PIF]资产类型', 1, '01', '土地、建筑物', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_ZCLX', '[PIF]资产类型', 2, '02', '运输工具', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_ZCLX', '[PIF]资产类型', 3, '03', '收益权', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_ZCLX', '[PIF]资产类型', 99, '99', '其他资产', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_ZRFS', '[PIF]转让方式', 1, '1', '协议方式', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_ZRFS', '[PIF]转让方式', 2, '2', '报价方式', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_ZRFS', '[PIF]转让方式', 3, '3', '做市方式', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_ZRFS', '[PIF]转让方式', 4, '4', '拍卖方式', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_ZXFS', '[PIF]增信方式', 0, '00', '关联方信用担保', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_ZXFS', '[PIF]增信方式', 1, '01', '非关联方信用担保', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_ZXFS', '[PIF]增信方式', 2, '02', '自有资产抵押、质押', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_ZXFS', '[PIF]增信方式', 3, '03', '关联方资产抵押、质押', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_ZXFS', '[PIF]增信方式', 4, '04', '非关联方资产抵押、质押', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_ZXFS', '[PIF]增信方式', 5, '05', '组合增信', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PIF_ZXFS', '[PIF]增信方式', 6, '06', '无', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PJYZGJYE', '活跃月份最高交易额', 1, '1', '10万元以内', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PJYZGJYE', '活跃月份最高交易额', 2, '2', '10万元-30万元', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PJYZGJYE', '活跃月份最高交易额', 3, '3', '30万元-100万元', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PJYZGJYE', '活跃月份最高交易额', 4, '4', '100万元以上', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PJYZGJYE', '活跃月份最高交易额', 5, '5', '从未投资过金融产品', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PPD', '匹配度', 1, '1', '完全匹配', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PPD', '匹配度', 2, '2', '中度匹配', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PPD', '匹配度', 3, '3', '完全不匹配', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PSQD', '配送渠道', 0, '0', '未设置渠道', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PSQD', '配送渠道', 1, '1', '电话', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PSQD', '配送渠道', 2, '2', '电子邮件', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PSQD', '配送渠道', 4, '4', '微信', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PSQD', '配送渠道', 8, '8', '短信(95532)', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PSQD', '配送渠道', 16, '16', 'IM', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PSQD', '配送渠道', 32, '32', '站内邮件', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PSQD', '配送渠道', 64, '64', '彩信', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PSQD', '配送渠道', 128, '128', '拜访面谈', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PSQD', '配送渠道', 256, '256', '掌中投', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PSQD', '配送渠道', 512, '512', '短信(1065)', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('PSQD', '配送渠道', 1024, '1024', '移动CRM', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QDCC', '渠道层次', 1, '1', '总行', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QDCC', '渠道层次', 2, '2', '分行', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QDLX', '渠道类型', 1, 'Code1', '银行', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QDLX', '渠道类型', 2, 'Code2', '住宅小区', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QFFW', '群发范围', 1, '1', '级别配送', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QFFW', '群发范围', 2, '2', '公司级客户群配送', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QFFW', '群发范围', 3, '4', '营业部级客户群配送', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QFFW', '群发范围', 4, '8', '个人客户群配送', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHCC_TJFS', '期货持仓_统计方式', 1, '1', '按客户号统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHCC_TJFS', '期货持仓_统计方式', 2, '2', '按营业部代码统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHCC_TJFS', '期货持仓_统计方式', 3, '3', '按交易所统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHCC_TJFS', '期货持仓_统计方式', 4, '4', '按买卖标志统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHCC_TJFS', '期货持仓_统计方式', 5, '5', '按投保标志统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHCC_TJFS', '期货持仓_统计方式', 10, '10', '按客户类型统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHCC_TJFS', '期货持仓_统计方式', 11, '11', '按客户级别统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHCC_TJFS', '期货持仓_统计方式', 15, '15', '按开户日期统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHCC_TJFS', '期货持仓_统计方式', 16, '16', '按开户月份统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHCC_TJFS', '期货持仓_统计方式', 17, '17', '按开户年份统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHCC_TJFS', '期货持仓_统计方式', 18, '18', '按来源券商统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHCC_TJFS', '期货持仓_统计方式', 19, '19', '按客户经理统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHGS', '期货公司', 5, '5', '中证期货', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHGS', '期货公司', 6, '6', '新际期货', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHJY_TJFS', '期货交易_统计方式', 1, '1', '按客户号统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHJY_TJFS', '期货交易_统计方式', 2, '2', '按营业部代码统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHJY_TJFS', '期货交易_统计方式', 3, '3', '按交易所统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHJY_TJFS', '期货交易_统计方式', 4, '4', '按买卖标志统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHJY_TJFS', '期货交易_统计方式', 5, '5', '按投保标志统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHJY_TJFS', '期货交易_统计方式', 6, '6', '按开平标志统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHJY_TJFS', '期货交易_统计方式', 7, '7', '按品种统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHJY_TJFS', '期货交易_统计方式', 10, '10', '按客户类型统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHJY_TJFS', '期货交易_统计方式', 11, '11', '按客户级别统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHJY_TJFS', '期货交易_统计方式', 12, '12', '按交易日期统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHJY_TJFS', '期货交易_统计方式', 13, '13', '按交易月份统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHJY_TJFS', '期货交易_统计方式', 14, '14', '按交易年份统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHJY_TJFS', '期货交易_统计方式', 15, '15', '按开户日期统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHJY_TJFS', '期货交易_统计方式', 16, '16', '按开户月份统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHJY_TJFS', '期货交易_统计方式', 17, '17', '按开户年份统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHJY_TJFS', '期货交易_统计方式', 18, '18', '按来源券商统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHJY_TJFS', '期货交易_统计方式', 19, '19', '按客户经理统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHZJ_TJFS', '期货资金_统计方式', 1, '1', '按客户号统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHZJ_TJFS', '期货资金_统计方式', 2, '2', '按营业部代码统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHZJ_TJFS', '期货资金_统计方式', 10, '10', '按客户类型统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHZJ_TJFS', '期货资金_统计方式', 11, '11', '按客户级别统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHZJ_TJFS', '期货资金_统计方式', 15, '15', '按开户日期统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHZJ_TJFS', '期货资金_统计方式', 16, '16', '按开户月份统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHZJ_TJFS', '期货资金_统计方式', 17, '17', '按开户年份统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHZJ_TJFS', '期货资金_统计方式', 18, '18', '按来源券商统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QHZJ_TJFS', '期货资金_统计方式', 19, '19', '按客户经理统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QJLB', '请假类别', 1, 'Code1', '病假', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QJLB', '请假类别', 2, 'Code2', '事假', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QJLB', '请假类别', 3, 'Code3', '休假', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_FXCD', '风险程度', 0, '0', '低', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_FXCD', '风险程度', 1, '1', '高', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_JJCD', '需求紧急程度', 1, '1', '一般', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_JJCD', '需求紧急程度', 2, '2', '紧急', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_JJCD', '需求紧急程度', 3, '3', '特急', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_KHLX', '需求_客户类型', 0, '0', '潜在客户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_KHLX', '需求_客户类型', 1, '1', '存量客户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_LDX', '流动性', 1, '1', '高流动性', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_LDX', '流动性', 2, '2', '有一定流动性', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_LYLX', '需求来源类型', 1, '1', '客户需求', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_LYLX', '需求来源类型', 2, '2', '内部需求', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_LYQD', '需求登记来源渠道', 1, '1', '人工服务', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_LYQD', '需求登记来源渠道', 2, '2', '临柜方式', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_LYQD', '需求登记来源渠道', 3, '3', '网络方式', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_LYQD', '需求登记来源渠道', 4, '4', '其他方式采集', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_NBXQ', '内部需求', 1, '1', '客户交易行为分析', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_NBXQ', '内部需求', 2, '2', '终端操作行为分析', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_NBXQ', '内部需求', 3, '3', '市场调研分析', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_NBXQ', '内部需求', 4, '4', '个人经验', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_SJLX', '数据类型', 1, 'NUMBER', 'NUMBER', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_SJLX', '数据类型', 2, 'VARCHAR2', 'VARCHAR2', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_TZMD', '投资目的', 1, '1', '投资资产或财富积累', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_TZMD', '投资目的', 2, '2', '为特定目的的存款', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_TZMD', '投资目的', 3, '3', '无特定目的', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_TZQX', '投资期限', 1, '1', '长期（5年以上）', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_TZQX', '投资期限', 2, '2', '中期（1-5年）', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_TZQX', '投资期限', 3, '3', '短期（1年以下）', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_WZ', '网站', 1, '1', '资讯', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_WZ', '网站', 2, '2', '其他', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_XQZT', '需求状态', 1, '1', '待受理', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_XQZT', '需求状态', 2, '2', '驳回', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_XQZT', '需求状态', 3, '3', '审核通过', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_XQZT', '需求状态', 4, '4', '受理中', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_XQZT', '需求状态', 5, '5', '响应中', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_XQZT', '需求状态', 6, '6', '处理完成', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_XQZT', '需求状态', 7, '7', '退回', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_XQZT', '需求状态', 8, '8', '关闭', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_XT', '系统', 1, '1', '网上营业厅', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_XT', '系统', 2, '2', '手机证券', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_XT', '系统', 3, '3', '交易软件', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_XT', '系统', 4, '4', '电话委托', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_YXJ', '优先级', 0, '0', '一般', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_YXJ', '优先级', 1, '1', '优先', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QYLX', '签约类型', 0, '0', '体验签约', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QYLX', '签约类型', 1, '1', '正式签约', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QYMS', '签约模式', 1, '1', '签约投顾', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QYMS', '签约模式', 2, '2', '签约团队', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QYMS', '签约模式', 3, '3', '签约产品', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QYXZ', '企业性质', 0, '0', '国营', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QYXZ', '企业性质', 1, '1', '集体', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QYXZ', '企业性质', 2, '2', '民营', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QYXZ', '企业性质', 3, '3', '外商合资', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QYXZ', '企业性质', 4, '4', '外商独资', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QYXZ', '企业性质', 5, '5', '其他', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QYXZ', '企业性质', 6, '6', '普通合伙企业', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QYXZ', '企业性质', 7, '7', '特殊普通合伙企业', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QYXZ', '企业性质', 8, '8', '有限合伙企业', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QYXZ', '企业性质', 9, '9', '非法人非合伙制创业投资企业', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QZKHHTYY', '潜在客户回退原因', 1, 'Code1', '非本营业部管辖客户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QZKHHTYY', '潜在客户回退原因', 2, 'Code2', '联系电话是空号', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QZLSKHYY', '潜在流失客户原因', 1, '1', '账号资金小于1000', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QZLSKHYY', '潜在流失客户原因', 2, '2', '其他', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RISKLEVEL', '资讯风险等级', 0, '0', '未设置', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RISKLEVEL', '资讯风险等级', 1, '1', '最低', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RISKLEVEL', '资讯风险等级', 2, '2', '较低', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RISKLEVEL', '资讯风险等级', 3, '3', '中等', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RISKLEVEL', '资讯风险等级', 4, '4', '较高', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RISKLEVEL', '资讯风险等级', 5, '5', '最高', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RISK_CODE', '风险级别', 0, '0', '未评级', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RISK_CODE', '风险级别', 1, '1', '高', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RISK_CODE', '风险级别', 2, '2', '中高', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RISK_CODE', '风险级别', 3, '3', '中', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RISK_CODE', '风险级别', 4, '4', '中低', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RISK_CODE', '风险级别', 5, '5', '低', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RSQCYSJ', '入司前从业时间', 1, '1', '8年以上', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RSQCYSJ', '入司前从业时间', 2, '2', '6-8年（含8年）', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RSQCYSJ', '入司前从业时间', 3, '3', '4-6年（含6年）', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RSQCYSJ', '入司前从业时间', 4, '4', '2-4年（含4年）', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RSQCYSJ', '入司前从业时间', 5, '5', '2年以下（含2年）', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RWFZLX', '任务分组类型', 1, '1', '实时', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RWFZLX', '任务分组类型', 2, '2', '夜间', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RWFZLX', '任务分组类型', 3, '3', '收盘', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RWJB', '任务级别', 0, '0', '总公司', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RWJB', '任务级别', 1, '1', '分公司', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RWJB', '任务级别', 2, '2', '营业部', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RWJB', '任务级别', 3, '3', '团队', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RWJB', '任务级别', 4, '4', '个人', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RWLB', '任务类别', 1, '1', '基础类', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RWLB', '任务类别', 2, '2', '营销类', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RWLB', '任务类别', 3, '3', '服务类', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RWLX', '任务类型', 1, 'Code1', '基金销售量', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RWLX', '任务类型', 2, 'Code2', '有效开户量', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RWLX', '任务类型', 3, 'Code3', '潜在客户转化数', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RWLX', '任务类型', 4, 'Code4', '新增客户资产', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RWLX', '任务类型', 9, 'Code9', '基金保有量', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RWYQ', '任务要求', 0, '0', '必做', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RWYQ', '任务要求', 1, '1', '选做', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RWYQ', '任务要求', 2, '2', '自动', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RWZT', '任务状态', -1, '-1', '已取消', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RWZT', '任务状态', 0, '0', '未开始', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RWZT', '任务状态', 1, '1', '已完成', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RWZT', '任务状态', 2, '2', '进行中', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYDLQX', '经纪人代理权限', 1, '1', '向客户介绍证券公司和证券市场的基本情况', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYDLQX', '经纪人代理权限', 2, '2', '向客户介绍证券投资的基本知识及开户、交易、资金存取等业务流程', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYDLQX', '经纪人代理权限', 3, '3', '向客户介绍与证券交易有关的法律、行政法规、证监会规定、自律规则和证券公司的有关规定', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYDLQX', '经纪人代理权限', 4, '4', '向客户传递由证券公司统一提供的研究报告及与证券投资有关的信息', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYDLQX', '经纪人代理权限', 5, '5', '向客户传递由证券公司统一提供的证券类金融产品宣传推介材料及有关信息', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYDLQX', '经纪人代理权限', 6, '6', '法律、行政法规和证监会规定证券经纪人可以从事的其他活动', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYDLQX', '经纪人代理权限', 2, '2', '向客户介绍证券投资的基本知识及开户、交易、资金存取等业务流程', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYDLQX', '经纪人代理权限', 3, '3', '向客户介绍与证券交易有关的法律、行政法规、证监会规定、自律规则和证券公司的有关规定', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYDLQX', '经纪人代理权限', 4, '4', '向客户传递由证券公司统一提供的研究报告及与证券投资有关的信息', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYDLQX', '经纪人代理权限', 5, '5', '向客户传递由证券公司统一提供的证券类金融产品宣传推介材料及有关信息', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYDLQX', '经纪人代理权限', 6, '6', '法律、行政法规和证监会规定证券经纪人可以从事的其他活动', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYDLQX', '经纪人代理权限', 1, '1', '向客户介绍证券公司和证券市场的基本情况', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYHGBZ', '人员合规标志', 0, 'Code1', '合规', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYHGBZ', '人员合规标志', 1, 'Code2', '不合规', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYJBXX', '人员基本信息', 1, 'ZJBH', '证件编号', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYJBXX', '人员基本信息', 2, 'SJ', '联系手机', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYJBXX', '人员基本信息', 3, 'DH', '联系电话', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYJBXX', '人员基本信息', 4, 'EMAIL', '电子邮箱', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYJBXX', '人员基本信息', 5, 'LXDZ', '联系地址', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYJBXX', '人员基本信息', 6, 'JTDZ', '家庭住址', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYJBXX', '人员基本信息', 7, 'YZBM', '邮编', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYJBXX', '人员基本信息', 8, 'HTLX', '签署合同', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYJBXX', '人员基本信息', 9, 'DLQX', '代理权限', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYJBXX', '人员基本信息', 10, 'HDFW', '活动范围', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYJBXX', '人员基本信息', 11, 'BYYX', '毕业院校', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYJBXX', '人员基本信息', 12, 'XL', '学历', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYJBXX', '人员基本信息', 13, 'XW', '学位', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYJBXX', '人员基本信息', 14, 'XZ', '学习方式', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYJBXX', '人员基本信息', 15, 'XXZY', '所学专业', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYJBXX', '人员基本信息', 16, 'CSRQ', '出生日期', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYJBXX', '人员基本信息', 17, 'ZZMM', '政治面貌', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYJBXX', '人员基本信息', 18, 'PROVINCE', '省份', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYJBXX', '人员基本信息', 19, 'CITY', '城市', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYJBXX', '人员基本信息', 20, 'SEC', '所属辖区', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYJBXX', '人员基本信息', 21, 'ZP', '照片', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYKHFL', '人员考核分类', 1, '1', '正式员工', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYKHFL', '人员考核分类', 2, '2', '前台人员', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYKHFL', '人员考核分类', 4, '4', '后台人员', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYKHFL', '人员考核分类', 8, '8', '经纪人', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYLB', '人员类别', 1, '1', '服务类', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYLB', '人员类别', 2, '2', '营销类', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYLB', '人员类别', 4, '4', '其它', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYLBLX', '人员类别类型', 1, '1', '专职', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYLBLX', '人员类别类型', 2, '2', '外部代理', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYLBLX', '人员类别类型', 3, '3', '内部员工', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYLBLX', '人员类别类型', 4, '4', '虚拟', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYWYXX', '人员唯一信息', 1, 'ZJBH', '证件编号', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYWYXX', '人员唯一信息', 2, 'RYXM', '姓名', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYWYXX', '人员唯一信息', 3, 'ORGID', '营业部', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYXM', '人员姓名', 1, '1', '人员人员姓名', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 1, '1', '个人照片', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 2, '2', '个人证件_正面', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 3, '3', '毕业证书', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 6, '6', '签约合同书', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 8, '8', '个人证件_背面', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 9, '9', '学位证书', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 20, '20', '委托授权书', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 21, '21', '转赠客户授权书', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 22, '22', '客户挂接确认单正面', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 23, '23', '客户解挂确认单', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 24, '24', '客户挂接确认单背面', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 30, '30', '成绩证-证券市场基础知识', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 31, '31', '成绩证-证券发行与承销', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('QR_LDX', '流动性', 3, '3', '低流动性', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 32, '32', '成绩证-证券交易', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 33, '33', '成绩证-证券投资分析', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 34, '34', '成绩证-证券投资基金', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 36, '36', '成绩证-证券市场基础（专项）', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 37, '37', '成绩证-证券经纪业务营销', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 38, '38', '成绩证-期货法律法规', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 39, '39', '成绩证-期货市场基础知识', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 40, '40', '成绩证-期货投资分析', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 41, '41', '成绩证-证券投资基金基础知识', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 42, '42', '成绩证-基金法律法规、职业道德与业务规范', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 43, '43', '成绩证-证券市场基本法律法规', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 44, '44', '成绩证-金融市场基础知识', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 45, '45', '成绩证-基金专项考试', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 46, '46', '成绩证-私募股权投资基金（含创业投资基金）基础知识', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 47, '47', '成绩证-证券知识综合考试', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 48, '48', '成绩证-投资银行业务考试', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 49, '49', '成绩证-发布证券研究报告业务', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 50, '50', '成绩证-证券投资顾问业务', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 51, '51', '成绩证-注册国际投资分析师（CIIA）', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 52, '52', '成绩证-基本证券及期货规例', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 53, '53', '成绩证-会计师（中级及以上职称）', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 54, '54', '成绩证-保险代理人资格', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 55, '55', '成绩证-会计从业资格', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 60, '60', '签约现场', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 61, '61', '制度签名', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 62, '62', '手抄禁令', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 79, '79', '成绩证-银行间本币市场交易员考试', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 80, '80', '成绩证-债券托管结算业务资格', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 81, '81', '成绩证-登记托管及现券金额清算业务资格', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 82, '82', '成绩证-代理证券质押登记业务资格考试', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 83, '83', '成绩证-会计从业资格考试', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 84, '84', '成绩证-国际注册内部审计师（CIA）', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 85, '85', '成绩证-注册会计师（CPA）', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 86, '86', '成绩证-国际注册信息系统审计师（CISA）', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 87, '87', '成绩证-注册会计师（CPA）考试', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 88, '88', '成绩证-国家司法考试', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 89, '89', '成绩证-特许金融分析师（CFA）考试', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 90, '90', '成绩证-证券公司合规管理人员胜任能力测试', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 91, '91', '成绩证-证券公司高级管理人员资质测试', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 501, '501', '证券经纪业务营销资格证书', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 502, '502', '基金推介销售资格证书', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 504, '504', '期货营销证书', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 508, '508', '证券经纪人证书', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 516, '516', '证券投资咨询(其它)证书', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 532, '532', '一般证券业务证书', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 564, '564', '基金投资管理证书', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 5128, '5128', '证券投资咨询业务(分析师)证书', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 5256, '5256', '证券投资咨询业务(投资顾问)证书', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 5512, '5512', 'AFP（金融理财规划师）', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 51024, '51024', 'CFP（理财规划师）', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 52048, '52048', 'CFA（特许金融分析师）', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 54096, '54096', 'CIIA（注册国际投资分析师）', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 58192, '58192', '期货投资咨询资格', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 516384, '516384', '保险销售资格', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYYXLX', '影像类型', 532768, '532768', '保荐人', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYZBXZ', '人员在编性质', 1, '1', '正式职工', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYZBXZ', '人员在编性质', 2, '2', '临时用工', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYZBXZ', '人员在编性质', 3, '3', '经纪人', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYZBXZ', '人员在编性质', 4, '4', 'CICC', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYZGZT', '人员在岗状态', -1, '-1', '删除', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYZGZT', '人员在岗状态', 0, '0', '正常', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYZGZT', '人员在岗状态', 1, '1', '离职', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYZGZT', '人员在岗状态', 3, '3', '试用', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYZGZT', '人员在岗状态', 4, '4', '退休', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYZGZT', '人员在岗状态', 5, '5', '其它', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYZGZT', '人员在岗状态', 6, '6', '待审核', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYZGZT', '人员在岗状态', 7, '7', '审核不通过', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYZGZT', '人员在岗状态', 8, '8', '禁用', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYZGZT', '人员在岗状态', 10, '10', '暂停使用', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYZT', '人员状态', 1, 'Code1', '在职', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYZT', '人员状态', 2, 'Code2', '离职', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYZT', '人员状态', 3, 'Code3', '退休', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RYZT', '人员状态', 4, 'Code4', '休假', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RZLX', '日志类型', 1, '''ZBTJ''', '指标统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RZLX', '日志类型', 2, '''SJTJ''', '数据统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RZLX', '日志类型', 3, '''JKDY''', '接口调用', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RZRQFXCSNL', '融资融券风险承受能力', 1, '1', '保守型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RZRQFXCSNL', '融资融券风险承受能力', 2, '2', '稳健型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RZRQFXCSNL', '融资融券风险承受能力', 3, '3', '积极型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RZRQFXCSNL', '融资融券风险承受能力', 4, '4', '激进型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('RZRQFXCSNL', '融资融券风险承受能力', 5, '5', '平衡型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SCBK', '市场板块', 1, '1', '深圳Ａ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SCBK', '市场板块', 2, '2', '深圳Ｂ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SCBK', '市场板块', 3, '3', '三板Ｓ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SCBK', '市场板块', 4, '4', '深港通', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SCBK', '市场板块', 5, '5', '上海Ａ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SCBK', '市场板块', 6, '6', '上海Ｂ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SCBK', '市场板块', 7, '7', '沪港通', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SCBK', '市场板块', 8, '8', '股转Ａ', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SDXZB', '适当性指标', 1, 'KH_ZZC', '客户_总资产', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SDXZB', '适当性指标', 2, 'KH_BNHSRJZC', '客户_半年沪市日均资产', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SF', '[PUB]是否', 0, '0', '否', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SF', '[PUB]是否', 1, '1', '是', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SFKT', '是否开通', 1, '1', '开通', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SFKT', '是否开通', 2, '2', '未开通', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SFMS', '收费模式', 1, '1', '提佣模式', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SFMS', '收费模式', 2, '2', '会员费模式', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SFTB', '是否同步', 0, '0', '否', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SFTB', '是否同步', 1, '1', '是', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SFYX', '是否有效', 1, '1', '有效', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SFYX', '是否有效', 2, '2', '无效', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SHBZ', '审核标志', 1, 'Code1', '待审核', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SHBZ', '审核标志', 2, 'Code2', '审核中', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SHBZ', '审核标志', 3, 'Code3', '已审核', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SHBZ', '审核标志', 4, 'Code4', '审核不通过', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SHBZ', '审核标志', 5, 'Code5', '被驳回', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SHBZ', '审核标志', 6, 'Code6', '已发布', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SHBZ', '审核标志', 7, 'Code7', '已完成', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SHBZ', '审核标志', 8, 'Code8', '拒绝', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SHGX', '社会关系', 1, '1', '配偶', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SHGX', '社会关系', 2, '2', '父亲', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SHGX', '社会关系', 3, '3', '母亲', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SHGX', '社会关系', 4, '4', '子女', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SHGX', '社会关系', 5, '5', '兄妹', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SHGX', '社会关系', 6, '6', '同事', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SHGX', '社会关系', 7, '7', '亲戚', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SHGX', '社会关系', 8, '8', '其它', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SHZT', '审核状态', -1, '-1', '没通过', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SHZT', '审核状态', 0, '0', '未审核', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SHZT', '审核状态', 1, '1', '审核中', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SHZT', '审核状态', 2, '2', '审核完成', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SJDJ', '事件等级', 0, '0', '非常重要', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SJDJ', '事件等级', 1, '1', '重要', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SJDJ', '事件等级', 2, '2', '普通', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SJFSYY', '事件发生原因', 1, '1', '不知道违规', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SJFSYY', '事件发生原因', 2, '2', '客户要求', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SJFSYY', '事件发生原因', 3, '3', '心存侥幸心理', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SJFSYY', '事件发生原因', 4, '4', '疏忽大意', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SJFSYY', '事件发生原因', 5, '5', '其他', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SJLX', '试卷类型', 1, '1', '类型1', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SJLX', '试卷类型', 2, '2', '类型2', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SJLX', '试卷类型', 4, '4', '类型3', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SJLX', '试卷类型', 8, '8', '类型4', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SJLX_QR', '数据类型', 1, 'NUMBER', 'NUMBER', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SJLX_QR', '数据类型', 2, 'VARCHAR2', 'VARCHAR2', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SMCPLX', '私募产品类型', 1, '1', '管理型私募', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SMCPLX', '私募产品类型', 2, '2', '结构化私募', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SMCPLX', '私募产品类型', 3, '3', '银行理财', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SMCPLX', '私募产品类型', 4, '4', '套利产品', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SMCPLX', '私募产品类型', 5, '5', 'PE类产品', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SMCPLX', '私募产品类型', 6, '6', '其它', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SMYY', '睡眠原因', 1, '1', '资金小于1000', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SMYY', '睡眠原因', 2, '2', '其他', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SOP_FXJB', '个股期权投资者级别', 1, '00A', '一级投资者', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SOP_FXJB', '个股期权投资者级别', 2, '0AA', '二级投资者', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SOP_FXJB', '个股期权投资者级别', 3, 'AAA', '三级投资者', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SOP_JYLX', '个股期权交易类型', 1, '1', '买入开仓', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SOP_JYLX', '个股期权交易类型', 2, '2', '卖出开仓', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SOP_JYLX', '个股期权交易类型', 3, '3', '卖出平仓', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SOP_JYLX', '个股期权交易类型', 4, '4', '买入平仓', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SOP_JYLX', '个股期权交易类型', 5, '5', '备兑开仓', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SOP_JYLX', '个股期权交易类型', 6, '6', '备兑平仓', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SOP_JYLX', '个股期权交易类型', 99, '99', '其他', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SOP_MMFX', '买卖方向', 1, '1', '买', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SOP_MMFX', '买卖方向', 2, '2', '卖', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SOP_QQLX', '个股期权期权类型', 1, 'C', '认购', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SOP_QQLX', '个股期权期权类型', 2, 'P', '认沽', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SRSP', '收入水平', 1, '3000', '3000以下', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SRSP', '收入水平', 2, '3000-5000', '3000-5000', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SRSP', '收入水平', 3, '5000-10000', '5000-10000', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SRSP', '收入水平', 4, '10000-15000', '10000-15000', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SRSP', '收入水平', 5, '15000', '15000以上', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SRTXLX', '生日提醒类型', 1, '1', '要过生日', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SRTXLX', '生日提醒类型', 2, '2', '刚过生日', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SRXMLB', '收入项目类别', 1, '1', '约定购回', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SRXMLB', '收入项目类别', 2, '2', '股票质押回购', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SRXMLB', '收入项目类别', 5, '5', '托管产品私募PB收入', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SRXMLB', '收入项目类别', 6, '6', '资管定向业务分成收入', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SRXMLB', '收入项目类别', 7, '7', '固收业务分成收入', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SRXMLB', '收入项目类别', 8, '8', '柜台业务分成收入', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SRXMLB', '收入项目类别', 9, '9', '投行业务分成收入', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SRXMLB', '收入项目类别', 10, '10', '结构化融资', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SRXMLB', '收入项目类别', 11, '11', '场外期权', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SRXMLB', '收入项目类别', 12, '12', '收益凭证_定制类', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SRXMLB', '收入项目类别', 13, '13', '资产证券化', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SRXMLB', '收入项目类别', 14, '14', '股票借贷', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SXTJFZ', '筛选条件分组', 1, '1', '客户属性', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SXTJFZ', '筛选条件分组', 2, '2', '资产属性', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SXTJFZ', '筛选条件分组', 3, '3', '股票持仓属性', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SXTJFZ', '筛选条件分组', 4, '4', '股票交易属性', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SXTJFZ', '筛选条件分组', 5, '5', '服务属性', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SXTJFZ', '筛选条件分组', 6, '6', '金融产品属性', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SXTJFZ', '筛选条件分组', 7, '7', '信用属性', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SXTJFZ', '筛选条件分组', 8, '8', '掌中投线上化属性', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SXTJFZ', '筛选条件分组', 9, '9', '关系类型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SYZT', '审阅状态', 0, '0', '未审阅', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SYZT', '审阅状态', 1, '1', '审阅中', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('SYZT', '审阅状态', 2, '2', '已审阅', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TCCSLX', '提成参数类型', 1, 'BXZDLC_KH', '不限制最低留成客户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TCCSLX', '提成参数类型', 2, 'BXZDLC_RY', '不限制最低留成人员', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TCCSLX', '提成参数类型', 3, 'BZNDJRY', '不逐年递减人员', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TCCSLX', '提成参数类型', 4, 'BZNDJKH', '不逐年递减客户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TCCSLX', '提成参数类型', 5, 'KTCKH05', '05年前可提成客户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TCCSLX', '提成参数类型', 6, 'KTCRY05', '05年前可提成人员', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TCCSLX', '提成参数类型', 7, 'TSTGRY', '特殊投资顾问人员', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TCCSLX', '提成参数类型', 8, 'KHQHGSBL', '特殊客户期货公司比例', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TCCSLX', '提成参数类型', 9, 'QYYXBTC', '千1以下不提成客户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TCCSLX', '提成参数类型', 10, 'BGBTC', 'B股不提成客户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TCGZ', '提成规则', 1, '1', '金融产品提成比例', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TCGZ', '提成规则', 2, '2', '2.5倍工资限制', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TCGZ', '提成规则', 3, '3', '不受从业资格证限制', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TCGZ', '提成规则', 4, '4', '重点金融产品奖励', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TCGZ', '提成规则', 5, '5', '信托产品提成规则', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TCGZ', '提成规则', 6, '6', '特殊基金提成规则', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TCGZ', '提成规则', 7, '7', '金融产品分仓提成(新)', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TCGZ', '提成规则', 8, '8', '信托产品提成规则(新)', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TCGZ', '提成规则', 9, '9', '价外提成规则', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TCGZ', '提成规则', 10, '10', '金融产品分仓费率（新）', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TCGZ', '提成规则', 11, '11', '信托产品费率规则（新）', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TCGZ', '提成规则', 12, '12', '保险产品费率规则（新）', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TCGZ', '提成规则', 13, '13', '保险产品提成规则（新）', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TCLX', '提成类型', 1, 'YTCSR_PTZH', '股权基提成', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TCLX', '提成类型', 4, 'YTCSR_XYZH', '信用账户提成', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TCLX', '提成类型', 5, 'YTCSR_GGQQ', '个股期权提成', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TDCYKHCS', '团队成员考核参数', 1, '1', '成本权重', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TDCYKHCS', '团队成员考核参数', 2, '2', '收益权重', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TDKHCS', '团队考核参数', 1, '1', '育成权重', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TDKHFS', '团队考核方式', 1, '1', '团队考核', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TDKHFS', '团队考核方式', 2, '2', '个人考核', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TDLB', '团队类别', 0, '0', '无队长', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TDLB', '团队类别', 1, '1', '育成', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TDLB', '团队类别', 2, '2', '特别', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TGFWXM', '投顾服务项目', 11, '研究报告', '研究报告', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TGFWXM', '投顾服务项目', 12, '账户指导', '账户指导', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TGFWXM', '投顾服务项目', 13, '投资组合建议', '投资组合建议', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TGFWXM', '投顾服务项目', 14, '风险评估', '风险评估和仓位建议', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TGFWXM', '投顾服务项目', 15, '趋势判断', '趋势判断', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TGFWXM', '投顾服务项目', 16, '热点板块追踪', '热点板块追踪', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TGFWXM', '投顾服务项目', 17, '调研信息', '调研信息', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TGFWXM', '投顾服务项目', 18, '政策解读', '政策解读', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TGFWXM', '投顾服务项目', 19, '股指期货分析', '股指期货分析', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TGFWXM', '投顾服务项目', 20, '融资融券指导', '融资融券指导', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TGFWXM', '投顾服务项目', 21, '深度沟通', '深度沟通', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TGFWXM', '投顾服务项目', 22, '标准化产品', '标准化产品', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TGFWXM', '投顾服务项目', 91, '其他', '其他', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TGQYLX', '投顾签约类型', 0, '有固定期限', '有固定期限', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TGQYLX', '投顾签约类型', 1, '无固定期限', '无固定期限', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TGQYLX', '投顾签约类型', 2, '内退协议', '内退协议', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TGQYLX', '投顾签约类型', 3, '顾问协议', '顾问协议', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TGQYLX', '投顾签约类型', 4, '佣金', '佣金', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TGQYLX', '投顾签约类型', 5, '现金', '现金', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJFS', '统计方式', 1, 'Code 1', '按客户号统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJFS', '统计方式', 2, 'Code 2', '按营业部代码统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJFS', '统计方式', 3, 'Code 3', '按交易所统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJFS', '统计方式', 4, 'Code 4', '按买卖标志统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJFS', '统计方式', 5, 'Code 5', '按投保标志统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJFS', '统计方式', 6, 'Code 6', '按开平标志统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJFS', '统计方式', 7, 'Code 7', '按品种统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJFS', '统计方式', 8, 'Code 8', '按交割期统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJFS', '统计方式', 9, 'Code 9', '按客户经理统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJFS', '统计方式', 10, 'Code 10', '按客户类型统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJFS', '统计方式', 11, 'Code 11', '按客户级别统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJFS', '统计方式', 12, 'Code 12', '按交易日期统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJFS', '统计方式', 13, 'Code 13', '按交易月份统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJFS', '统计方式', 14, 'Code 14', '按交易年份统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJFS', '统计方式', 15, 'Code 15', '按开户日期统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJFS', '统计方式', 16, 'Code 16', '按开户月份统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJFS', '统计方式', 17, 'Code 17', '按开户年份统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJFS', '统计方式', 18, 'Code 18', '按来源券商统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJFS', '统计方式', 19, 'Code 19', '按资产类别统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJFS', '统计方式', 20, 'Code20', '按客户经理统计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJSD', '统计时段', 1, '1', '上日', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJSD', '统计时段', 2, '2', '本月', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJSD', '统计时段', 3, '3', '上月', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJSD', '统计时段', 5, '5', '本年', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJSD', '统计时段', 6, '6', '上周', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJSD', '统计时段', 7, '7', '本周', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJSD', '统计时段', 8, '8', '上季', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJSD', '统计时段', 9, '9', '最近1年', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJSD', '统计时段', 10, '10', '上年', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJSD2', '统计周期-年月', 1, '1', '本月', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJSD2', '统计周期-年月', 2, '2', '本年', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJYFX_KHZQ', '经营分析_考核周期', 2, '2', '月', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJYFX_KHZQ', '经营分析_考核周期', 3, '3', '年', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJYFX_SYCJ', '经营分析_适用层级', 0, '0', '总部', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJYFX_SYCJ', '经营分析_适用层级', 1, '1', '分公司', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJYFX_SYCJ', '经营分析_适用层级', 2, '2', '营业部', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJZQ_JYN', '统计周期_近月年', 1, '1', '近一月', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJZQ_JYN', '统计周期_近月年', 2, '2', '近三月', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJZQ_JYN', '统计周期_近月年', 3, '3', '近一年', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJZQ_RYJN', '统计周期_日月季年', 0, '0', '累计', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJZQ_RYJN', '统计周期_日月季年', 1, '1', '上日', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJZQ_RYJN', '统计周期_日月季年', 2, '2', '本月', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJZQ_RYJN', '统计周期_日月季年', 3, '3', '本季', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJZQ_RYJN', '统计周期_日月季年', 4, '4', '本年', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJZQ_YJN', '统计周期_月季年', 1, '1', '本月', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJZQ_YJN', '统计周期_月季年', 2, '2', '本季', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJZQ_YJN', '统计周期_月季年', 3, '3', '本年', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJZQ_YJNSN', '统计周期_月季年上年', 1, '1', '本月', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJZQ_YJNSN', '统计周期_月季年上年', 2, '2', '本季', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJZQ_YJNSN', '统计周期_月季年上年', 3, '3', '本年', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJZQ_YJNSN', '统计周期_月季年上年', 4, '4', '上年', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJZQ_ZYN', '统计周期_周月年', 1, '1', '上周', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJZQ_ZYN', '统计周期_周月年', 2, '2', '本周', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJZQ_ZYN', '统计周期_周月年', 3, '3', '上月', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJZQ_ZYN', '统计周期_周月年', 4, '4', '本月', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJZQ_ZYN', '统计周期_周月年', 5, '5', '最近一年', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJZQ_ZYN', '统计周期_周月年', 6, '6', '上年', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJZQ_ZYN', '统计周期_周月年', 7, '7', '本年', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJZS', '推荐指数', 1, '1', '一颗星', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJZS', '推荐指数', 2, '2', '二颗星', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJZS', '推荐指数', 3, '3', '三颗星', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJZS', '推荐指数', 4, '4', '四颗星', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TJZS', '推荐指数', 5, '5', '五颗星', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TMLB', '题目类别', 1, '1', '满意度', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TMLB', '题目类别', 2, '2', '市场调查', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TSLB', '投诉类别', 1, '1', '证券帐户类业务', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TSLB', '投诉类别', 2, '2', '交易资费', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TSLB', '投诉类别', 3, '3', '网上交易', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TSLB', '投诉类别', 4, '4', '开放式基金业务', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TSLB', '投诉类别', 5, '5', '第三方存管业务', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TSLB', '投诉类别', 6, '6', '证券帐户类业务', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TSLB', '投诉类别', 7, '7', '交易资费', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TSLB', '投诉类别', 8, '8', '网上交易', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TSLB', '投诉类别', 9, '9', '开放式基金业务', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TSLB', '投诉类别', 10, '10', '第三方存管业务', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TSLB', '投诉类别', 12, '12', '服务态度问题', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TSLB', '投诉类别', 13, '13', '其它', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TXLXDL', '提醒类型大类', 1, '1', '客户关怀', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TXLXDL', '提醒类型大类', 2, '2', '账户操作', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TXLXDL', '提醒类型大类', 3, '3', '客户资产', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TXLXDL', '提醒类型大类', 4, '4', '持仓提醒', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TXLXDL', '提醒类型大类', 5, '5', '客户服务', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TXLXDL', '提醒类型大类', 6, '6', '账户服务', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TYKDJ', '体验卡等级', 1, '1', '普通', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TYKDJ', '体验卡等级', 2, '2', '银卡', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TYKDJ', '体验卡等级', 3, '3', '金卡', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZCL_LHDC', '量化对冲业务投资策略', 1, '1', 'ETF套利', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZCL_LHDC', '量化对冲业务投资策略', 2, '2', '期现套利', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZCL_LHDC', '量化对冲业务投资策略', 3, '3', '阿尔法策略', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZCL_LHDC', '量化对冲业务投资策略', 4, '4', '量化高频', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZCL_LHDC', '量化对冲业务投资策略', 5, '5', '对冲', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZCL_LHDC', '量化对冲业务投资策略', 6, '6', '其他', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZFS', '通知方式', 1, '1', '短信通知', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZFS', '通知方式', 2, '2', '邮件通知', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZFS', '通知方式', 3, '3', '电话通知', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZFS', '通知方式', 4, '4', '填写服务记录', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZFS', '通知方式', 5, '5', '不通知', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZHBZYYY', '投资回报主要用于', 1, '1', '改善生活', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZHBZYYY', '投资回报主要用于', 2, '2', '个体生产经营或证券投资以外的投资行为', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZHBZYYY', '投资回报主要用于', 3, '3', '履行扶养、抚养或赡养义务', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZHBZYYY', '投资回报主要用于', 4, '4', '本人养老或医疗', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZHBZYYY', '投资回报主要用于', 5, '5', '偿付债务', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZHBZYYY', '投资回报主要用于', 6, '6', '其他信息', 0, 0, null);
commit;
prompt 4000 records committed...
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZJY', '投资经验', 1, '1', '有限：除银行活期和定期存款外，我基本没有其他投资经验', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZJY', '投资经验', 2, '2', '一般：除银行活期账户和定期存款外，购买过基金、保险等理财产品，还需要指导', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZJY', '投资经验', 3, '3', '丰富：参与过股票、基金等产品交易，倾向于自己做出投资决策', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZJY', '投资经验', 4, '4', '非常丰富：参与过权证、期货或创业板等高风险产品的交易', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZNX', '投资年限', 1, '1', '无限制', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZNX', '投资年限', 2, '2', '三年以上', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZNX', '投资年限', 3, '3', '一年至三年', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZNX', '投资年限', 4, '4', '三个月至一年', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZNX', '投资年限', 5, '5', '三个月以内', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZPZ', '投资品种', 1, '1', '债券货币市场基金债券基金等固定收益类投资', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZPZ', '投资品种', 2, '2', '股票混合型基金偏股型基金股票型基金等投资', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZPZ', '投资品种', 4, '4', '期货、融资融券', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZPZ', '投资品种', 8, '8', '复杂或高风险金融产品', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZPZ', '投资品种', 16, '16', '其他产品', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZSYMB', '投资收益目标', 1, '1', '资产保值，我不愿意承担任何投资风险', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZSYMB', '投资收益目标', 2, '2', '尽可能保证本金安全，不在乎收益率比较低', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZSYMB', '投资收益目标', 3, '3', '产生较多的收益，可以承担一定的投资风险', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZSYMB', '投资收益目标', 4, '4', '实现资产大幅增长，愿意承担很大的投资风险', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZZDBGLX', '投资指导报告类型', 1, '1', '财务规划报告', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZZDBGLX', '投资指导报告类型', 2, '2', '资产配置报告', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZZFL', '投资者分类', 0, '0', '普通投资者', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZZFL', '投资者分类', 1, '1', '专业投资者', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZZFL', '投资者分类', 9, '9', '无', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZZHMX', '投资组合模型', 1, '1', 'Markowitz模型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZZHMX', '投资组合模型', 2, '2', '矩阵方差模型', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZZLY', '投资者来源', 0, '0', '普通投资者', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZZLY', '投资者来源', 1, '1', '经降级的普通投资者', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZZLY', '投资者来源', 2, '2', '专业投资者I类', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZZLY', '投资者来源', 3, '3', '专业投资者II类', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZZLY', '投资者来源', 4, '4', '专业投资者III类', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZZS', '投资知识', 1, '1', '金融经济财会与金融产品投资工作超过两年', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZZS', '投资知识', 2, '2', '金融经济或财会相关学士以上学位', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZZS', '投资知识', 3, '3', '注册会计师证书或注册金融分析师证书', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TZZS', '投资知识', 4, '4', '我不符合以上任何一项描述', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WDLX', '网点类型', 1, 'Code1', '总行', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WDLX', '网点类型', 2, 'Code2', '分行', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WDLX', '网点类型', 3, 'Code3', '一级支行', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WDLX', '网点类型', 4, 'Code4', '二级支行', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WJYWFL', '问卷业务分类', 1, '1', '经纪人培训考试', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WJYWFL', '问卷业务分类', 2, '2', '服务活动调查', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WTFS', '委托方式', 1, '1', '电话', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WTFS', '委托方式', 2, '2', '磁卡', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WTFS', '委托方式', 4, '4', '热键', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WTFS', '委托方式', 8, '8', '柜台', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WTFS', '委托方式', 16, '16', '远程', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WTFS', '委托方式', 32, '32', '互联网', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WTFS', '委托方式', 64, '64', '手机', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WTFS', '委托方式', 128, '128', '存折炒股', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WTFS', '委托方式', 256, '256', '内线电话', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WTFS', '委托方式', 512, '512', '其他场内', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WTFS', '委托方式', 1024, '1024', '其他场外', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WTFS', '委托方式', 2048, '2048', '现场委托', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WTFS', '委托方式', 8192, '8192', '其他委托', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WTLB', '委托类别', 1, '1', '买入', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WTLB', '委托类别', 2, '2', '卖出', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WTLB', '委托类别', 3, '3', '配股', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WTLB', '委托类别', 6, '6', '红利', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WTLB', '委托类别', 16, '16', '送股', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WTSBJG', '委托申报结果', 0, '0', '未申报', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WTSBJG', '委托申报结果', 1, '1', '正在申报', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WTSBJG', '委托申报结果', 2, '2', '已申报未成交', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WTSBJG', '委托申报结果', 3, '3', '非法委托', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WTSBJG', '委托申报结果', 4, '4', '申请资金授权中', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WTSBJG', '委托申报结果', 5, '5', '部分成交', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WTSBJG', '委托申报结果', 6, '6', '全部成交', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WTSBJG', '委托申报结果', 7, '7', '部成部撤', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WTSBJG', '委托申报结果', 8, '8', '全部撤单', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('WTSBJG', '委托申报结果', 9, '9', '撤单未成', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XB', '性别', 0, '0', '不祥', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XB', '性别', 1, '1', '男', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XB', '性别', 2, '2', '女', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XCJSBZ', '薪酬计算步骤', 1, '1', '数据同步', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XCJSBZ', '薪酬计算步骤', 2, '2', '指标计算', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XCJSBZ', '薪酬计算步骤', 3, '3', '提成计算', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XCJSBZ', '薪酬计算步骤', 4, '4', '薪酬计算', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XCLB', '薪酬类别', 1, '1', '基本工资', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XCLB', '薪酬类别', 2, '2', '提成', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XCLB', '薪酬类别', 3, '3', '奖金', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XCLB', '薪酬类别', 4, '4', '津贴', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XCLB', '薪酬类别', 5, '5', '福利', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XCLB', '薪酬类别', 6, '6', '税金', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XCLB', '薪酬类别', 7, '7', '扣款', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XCLB', '薪酬类别', 8, '8', '薪酬系数', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XCYWLCZT', '薪酬业务流程状态', 1, '1', '排队', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XCYWLCZT', '薪酬业务流程状态', 2, '2', '试算', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XCYWLCZT', '薪酬业务流程状态', 3, '3', '核对', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XCYWLCZT', '薪酬业务流程状态', 4, '4', '结算', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XCYWLCZT', '薪酬业务流程状态', 5, '5', '完成', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XCYWXL', '薪酬业务序列', 1, '1', '营销', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XCYWXL', '薪酬业务序列', 2, '2', '服务', 0, 1, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XGFK_FXJB', '风险级别', 1, '1', '提示', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XGFK_FXJB', '风险级别', 2, '2', '警告', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XGZT', '修改状态', 1, '1', '待审核', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XGZT', '修改状态', 2, '2', '审核通过', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XLDM', '学历代码', 0, '0', '未知', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XLDM', '学历代码', 1, '1', '博士研究生', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XLDM', '学历代码', 2, '2', '硕士研究生', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XLDM', '学历代码', 3, '3', '本科', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XLDM', '学历代码', 4, '4', '大专', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XLDM', '学历代码', 5, '5', '中专', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XLDM', '学历代码', 6, '6', '高中', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XLDM', '学历代码', 7, '7', '初中及其以下', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XLDM', '学历代码', 8, '8', '其他', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XMLX', '项目类型', 1, '1', '资讯类', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XMLX', '项目类型', 2, '2', '活动类', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XMLX', '项目类型', 3, '3', '工具类', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XMLX', '项目类型', 4, '4', '其他类', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XMLX', '项目类型', 5, '5', '模拟账户', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XMLX', '项目类型', 6, '6', '投资组合', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XMLX', '项目类型', 7, '7', '股票池', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XMLX', '项目类型', 8, '8', '彩信', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XMLX', '项目类型', 9, '9', '服务栏目', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQAH', '兴趣爱好', 1, '1', '美食', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQAH', '兴趣爱好', 2, '2', '唱歌', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQAH', '兴趣爱好', 3, '3', '跳舞', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQAH', '兴趣爱好', 4, '4', '电影', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQAH', '兴趣爱好', 5, '5', '音乐', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQAH', '兴趣爱好', 6, '6', '戏剧', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQAH', '兴趣爱好', 7, '7', '聊天', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQAH', '兴趣爱好', 8, '8', '拍拖', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQAH', '兴趣爱好', 9, '9', '赚钱', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQAH', '兴趣爱好', 10, '10', '因特网', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQAH', '兴趣爱好', 11, '11', '游戏', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQAH', '兴趣爱好', 12, '12', '绘画', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQAH', '兴趣爱好', 13, '13', '书法', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQAH', '兴趣爱好', 14, '14', '雕塑', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQAH', '兴趣爱好', 15, '15', '时尚', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQAH', '兴趣爱好', 16, '16', '异性', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQAH', '兴趣爱好', 17, '17', '阅读', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQAH', '兴趣爱好', 18, '18', '塑身', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQAH', '兴趣爱好', 19, '19', '体育运动', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQAH', '兴趣爱好', 20, '20', '旅游', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQAH', '兴趣爱好', 21, '21', '政治', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQAH', '兴趣爱好', 22, '22', '购物', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQAH', '兴趣爱好', 23, '23', '宗教', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQAH', '兴趣爱好', 24, '24', '棋牌', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQAH', '兴趣爱好', 25, '25', '其他', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQZT', '需求状态', 0, '0', '未提交', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQZT', '需求状态', 1, '1', '待受理', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQZT', '需求状态', 2, '2', '审核不通过', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQZT', '需求状态', 3, '3', '审核通过', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('TSLB', '投诉类别', 11, '11', '交易环境问题', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQZT', '需求状态', 4, '4', '受理', 0, 0, null);
insert into TXTDM (FLDM, FLMC, IBM, CBM, NOTE, FLAG, TYPE, CATEGORY)
values ('XQZT', '需求状态', 5, '5', '响应', 0, 0, null);
commit;
prompt 4144 records loaded
prompt Enabling triggers for TXTDM...
alter table TXTDM enable all triggers;
set feedback on
set define on
prompt Done.
