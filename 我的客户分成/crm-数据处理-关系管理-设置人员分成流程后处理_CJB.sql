CREATE OR REPLACE PROCEDURE CRMII.PRO_LCCL_RYFCCL(O_RESULT OUT NUMBER,
                                            O_NOTE   OUT VARCHAR2,
                                            I_LCID   IN NUMBER
                                            ) AS
    /*-----------------------------------------------------------------------
    ��Ŀ���ƣ�   ��Ͷ
    ��������:    PRO_LCCL_CFKHRD
    ���ܼ�����   ������Ա�ֳ����̺���
    �޸ļ�¼;
    ------------------------------------------------------------------------
    ������            ����ʱ��                        ����
    SPJ              2017/05/12     1.0.0.0           ����
    */
 V_ID NUMBER;
 v_khh      NUMBER;
BEGIN
    SELECT T.KHGX INTO V_ID FROM LCRYFCBD T WHERE T.ID=I_LCID;
    SELECT khh INTO v_khh FROM tkhgx WHERE id=v_id;
     --�������״̬
    UPDATE LCRYFCBD T SET SHZT=2 WHERE T.ID=I_LCID;
    --ɾ��ԭ����IC�ֳ�
    DELETE FROM TKHGX_ICFC T WHERE T.TKHGX_ID=V_ID;
    -- �����µ�IC�ֳ�
    INSERT INTO TKHGX_ICFC(ID,FCBL,RYXX,TKHGX_ID,ZT,Jszh)
    SELECT FUNC_NEXTID('TKHGX_ICFC'),G.FCBL,G.RYXX,V_ID,G.ZT,
           (SELECT max(id) FROM tryjszh zh WHERE zh.ryxx=g.ryxx AND zh.zhsx=1 AND zh.zhzt=0)
     FROM LCRYFCBD_ICFC G WHERE G.LCRYFCBD_ID=I_LCID;
    
    --����IC��ϵ
    pro_icgx_ficgx(o_result,o_note,v_khh);
    COMMIT;
    O_RESULT:=1;
    O_NOTE:='�����ɹ���';
EXCEPTION
    WHEN OTHERS THEN
        O_NOTE   := SQLERRM;
        O_RESULT := -1;
END PRO_LCCL_RYFCCL;