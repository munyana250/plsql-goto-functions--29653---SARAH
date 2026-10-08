-- Author: MUNYANA Sarah (29653)
-- A4: Number classifier from A1 rewritten WITHOUT GOTO (structured IF/ELSIF)
SET SERVEROUTPUT ON
DECLARE
  v_num NUMBER := 7;
BEGIN
  IF v_num > 0 THEN
    DBMS_OUTPUT.PUT_LINE(v_num || ' is positive');
  ELSIF v_num < 0 THEN
    DBMS_OUTPUT.PUT_LINE(v_num || ' is negative');
  ELSE
    DBMS_OUTPUT.PUT_LINE('The number is zero');
  END IF;
END;
/
