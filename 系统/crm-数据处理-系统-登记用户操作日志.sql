CREATE OR REPLACE PROCEDURE CRMII.PRO_CZRZDJ(O_RESULT OUT NUMBER,
                                       O_NOTE   OUT VARCHAR2,
                                       I_CZY    IN NUMBER, --操作员
                                       I_CZDX   IN VARCHAR2, --操作对象
                                       I_CZFF   IN VARCHAR2, --操作方法
                                       I_CZJL   IN NUMBER := 0, --操作记录
                                       I_CZSM   IN VARCHAR2 := NULL, --操作说明
                                       I_IP     IN VARCHAR2 := NULL, --操作站点
                                       I_CZKM   IN VARCHAR2 := NULL, --操作科目
                                       I_PTLX   IN VARCHAR2 := NULL --平台类型
                                       ) AS
  /*
  20111231  李谌屹    增加平台类型记录
  20091230  谢淑仁    V_CZSM长度扩大到3000
  20071229  谢淑仁    增加操作科目参数
  20071128  谢淑仁    允许I_CZDX,I_CZFF,I_CZJL参数为空
  20071123  谢淑仁    增加I_IP参数,设置YYB值
  20071105  谢淑仁    需要返回O_RESULT值
  20071010  谢淑仁    登记用户操作日志
  */
  V_CZSM VARCHAR2(3000) := I_CZSM;
  V_YYB  NUMBER(8);
BEGIN
  O_RESULT := -1;
  IF (I_CZY IS NULL) THEN
    O_RESULT := -1;
    O_NOTE   := '参数错误';
    RETURN;
  END IF;
  SELECT ORGID INTO V_YYB FROM TUSER WHERE ID = I_CZY;
  IF (V_CZSM IS NULL) THEN
    SELECT DESCRIBE INTO V_CZSM FROM TTABLE WHERE TABLENAME = I_CZDX;
    SELECT V_CZSM || '.' || MAX(DESCRIBE)
      INTO V_CZSM
      FROM TCUSTUMOPERATE
     WHERE OPTNAME = I_CZFF;
  END IF;
  INSERT INTO TYHCZRZ
    (ID, RQ, FSSJ, YYB, CZY, CZDY, CZFF, CZJL, CZKM, CZSM, CZZD, PTLX)
  VALUES
    (SEQ_YHCZRZ.NEXTVAL,
     TO_CHAR(SYSDATE, 'YYYYMMDD'),
     TO_CHAR(SYSDATE, 'HH24:MI:SS'),
     V_YYB,
     I_CZY,
     I_CZDX,
     I_CZFF,
     I_CZJL,
     I_CZKM,
     V_CZSM,
     I_IP,
     I_PTLX);
  O_RESULT := 1;
  O_NOTE   := '成功';
END;