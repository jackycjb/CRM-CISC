CREATE OR REPLACE PROCEDURE CRMII.PRO_WRITELOG(I_TYPE    NUMBER,
                                         I_NAME    VARCHAR2,
                                         I_CMD     VARCHAR2,
                                         I_ERRTYPE NUMBER,
                                         I_ERRMSG  VARCHAR2,
                                         I_ROWS    NUMBER := 0,
                                         I_TIMES   NUMBER := 0) IS
    /*
    20130201  л���� ��CRMII�������ȥ��TDATAJOB
    20101103  л����   ������i_errmsg�зֽ����ʱ����
    20100518  л����   ���i_rows��i_times����δ��ֵ�����i_errmsg�зֽ����¼������ʱ
                        ��v_procȫƥ����ȷ��jobid
    20100118  л����   �Ľ�ʶ��JOBID�����
    20090513  л����   ��־��¼����rowcount��times�ֶ�
    20080611  л����   func_nextid����pro_nextid
    20070206  л����     ϵͳ��־��¼
    */
    V_JOBID NUMBER(8);
    V_ID    NUMBER(12);
    V_PROC  VARCHAR2(100) := UPPER(SUBSTR(I_CMD, 1, INSTR(I_CMD, '(') - 1));
    V_ROWS  NUMBER(12) := I_ROWS;
    V_TIMES NUMBER(12, 3) := I_TIMES;
BEGIN
    /*
    begin
        --select ID into v_jobid from tDATAJOB where NAME=i_name;
        --select max(ID) into v_jobid from tDATAJOB where instr(upper(proc),v_proc)>0;
        select max(ID) into v_jobid from tDATAJOB where upper(proc)=v_proc;
        update tDATAJOB set ZJZXSJ=sysdate,ZXZT=2 where ID=v_jobid;
    Exception when others then
          v_jobid:=null;
    end;
    */
    BEGIN
        IF (I_ROWS = 0 AND INSTR(I_ERRMSG, '��¼:') > 0) THEN
            V_ROWS := SUBSTR(I_ERRMSG,
                             INSTR(I_ERRMSG, '��¼:') + 3,
                             INSTR(I_ERRMSG, ']') - INSTR(I_ERRMSG, '��¼:') - 3);
        END IF;
    EXCEPTION
        WHEN OTHERS THEN
            V_ROWS := I_ROWS;
    END;
    BEGIN
        IF (I_TIMES = 0.0 AND INSTR(I_ERRMSG, '��ʱ') > 0) THEN
            V_TIMES := SUBSTR(I_ERRMSG,
                              INSTR(I_ERRMSG, '��ʱ') + 2,
                              INSTR(I_ERRMSG, '��') - INSTR(I_ERRMSG, '��ʱ') - 2);
        END IF;
    EXCEPTION
        WHEN OTHERS THEN
            V_TIMES := I_TIMES;
    END;
    PRO_NEXTID(V_ID, 'tLOGMSG');
    INSERT INTO TLOGMSG
        (ID, TYPE, RQ, TIME, NAME, CMD, ERRTYPE, ERRMSG, JOB, ROWCOUNT, TIMES)
    VALUES
        (V_ID,
         I_TYPE,
         TO_CHAR(SYSDATE, 'yyyymmdd'),
         TO_CHAR(SYSDATE, 'HH24:MI:SS'),
         I_NAME,
         I_CMD,
         I_ERRTYPE,
         I_ERRMSG,
         V_JOBID,
         V_ROWS,
         V_TIMES);
    COMMIT;
END PRO_WRITELOG;