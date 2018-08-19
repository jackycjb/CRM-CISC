CREATE OR REPLACE PROCEDURE CRMII.PRO_CZRZDJ(O_RESULT OUT NUMBER,
                                       O_NOTE   OUT VARCHAR2,
                                       I_CZY    IN NUMBER, --����Ա
                                       I_CZDX   IN VARCHAR2, --��������
                                       I_CZFF   IN VARCHAR2, --��������
                                       I_CZJL   IN NUMBER := 0, --������¼
                                       I_CZSM   IN VARCHAR2 := NULL, --����˵��
                                       I_IP     IN VARCHAR2 := NULL, --����վ��
                                       I_CZKM   IN VARCHAR2 := NULL, --������Ŀ
                                       I_PTLX   IN VARCHAR2 := NULL --ƽ̨����
                                       ) AS
  /*
  20111231  ������    ����ƽ̨���ͼ�¼
  20091230  л����    V_CZSM��������3000
  20071229  л����    ���Ӳ�����Ŀ����
  20071128  л����    ����I_CZDX,I_CZFF,I_CZJL����Ϊ��
  20071123  л����    ����I_IP����,����YYBֵ
  20071105  л����    ��Ҫ����O_RESULTֵ
  20071010  л����    �Ǽ��û�������־
  */
  V_CZSM VARCHAR2(3000) := I_CZSM;
  V_YYB  NUMBER(8);
BEGIN
  O_RESULT := -1;
  IF (I_CZY IS NULL) THEN
    O_RESULT := -1;
    O_NOTE   := '��������';
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
  O_NOTE   := '�ɹ�';
END;