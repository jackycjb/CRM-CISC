CREATE OR REPLACE PROCEDURE CRMII.FUNC_GETSSTJ_KH(I_USERID IN NUMBER)
  RETURN VARCHAR2 IS
  RESULT VARCHAR2(1000);
  /*
     功能：首页搜索客户条件
     林国裕  2016-07-05  新增
    20161026 guoxiating 加特殊客户过滤
    20170622 wujun       根据我的客户和营业部客户菜单来控制客户
  */
  V_WHERE VARCHAR2(1000);
  V_YYB   NUMBER(11);
  V_COUNT NUMBER(11);
BEGIN
  --admin 不控制
  IF I_USERID = 0 THEN
    V_WHERE := ' NOT EXISTS (SELECT 1 FROM  TZYKHGL WHERE KHH = TKHXX.ID)';
    RESULT  := V_WHERE;
    RETURN(RESULT);
  END IF;
  SELECT ORGID INTO V_YYB FROM TUSER WHERE ID = I_USERID;
  --1、 营业部人员
  SELECT COUNT(1)
    INTO V_COUNT
    FROM DUAL
   WHERE EXISTS (SELECT 1
            FROM LBFUNPERMISSION T
           WHERE T.AUDITFLAG = 1
             AND T.FUNNAME = 'KHFW.KHGL.FZJGKH.func2'
             AND ((T.TYPE = 0 AND T.MEMBERID = I_USERID) OR
                 (T.TYPE = 1 AND EXISTS
                  (SELECT 1
                      FROM LBMEMBER MB
                     WHERE MB.AUDITFLAG = 1
                       AND MB.ROLEID = T.MEMBERID
                       AND MB.USERID = I_USERID))));
  IF V_COUNT >= 1 THEN
    V_WHERE := 'YYB IN (SELECT ID
                          FROM CRMII.LBORGANIZATION
                         START WITH ID = ' || V_YYB || '
                        CONNECT BY PRIOR ID = FID)';
    RESULT  := V_WHERE ||
               ' AND NOT EXISTS (SELECT 1 FROM  TZYKHGL WHERE KHH = TKHXX.ID)';
    RETURN(RESULT);
  END IF;
  --2、普通展业人员只能看本人
  SELECT COUNT(1)
    INTO V_COUNT
    FROM DUAL
   WHERE EXISTS (SELECT 1
            FROM LBFUNPERMISSION T
           WHERE T.AUDITFLAG = 1
             AND T.FUNNAME = 'KHFW.KHGL.WDKH.func2'
             AND ((T.TYPE = 0 AND T.MEMBERID = I_USERID) OR
                 (T.TYPE = 1 AND EXISTS
                  (SELECT 1
                      FROM LBMEMBER MB
                     WHERE MB.AUDITFLAG = 1
                       AND MB.ROLEID = T.MEMBERID
                       AND MB.USERID = I_USERID))));
  IF V_COUNT >= 1 THEN
    V_WHERE := ' EXISTS(SELECT 1 FROM TKHGX A,TRYXX B WHERE A.KHH = TKHXX.ID AND ZT=0 AND A.RYXX=B.ID AND B.DYYH = ' ||
               I_USERID || ' ) ';
    RESULT  := V_WHERE ||
               ' AND NOT EXISTS (SELECT 1 FROM  TZYKHGL WHERE KHH = TKHXX.ID)';
    RETURN(RESULT);
  END IF;
EXCEPTION
  WHEN OTHERS THEN
    RETURN '';
END FUNC_GETSSTJ_KH;