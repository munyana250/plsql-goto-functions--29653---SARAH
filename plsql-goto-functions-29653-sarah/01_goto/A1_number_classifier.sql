-- Author: MUNYANA Sarah (29653)
-- A1: Number classifier using GOTO
SET SERVEROUTPUT ON
DECLARE
  v_num NUMBER := 7;   -- try 7, -3 and 0
BEGIN
  IF v_num > 0 THEN
    GOTO positive;
  ELSIF v_num < 0 THEN
    GOTO negative;
  ELSE
    GOTO zero_val;
  END IF;

  <<positive>>
  DBMS_OUTPUT.PUT_LINE(v_num || ' is positive');
  GOTO done;

  <<negative>>
  DBMS_OUTPUT.PUT_LINE(v_num || ' is negative');
  GOTO done;

  <<zero_val>>
  DBMS_OUTPUT.PUT_LINE('The number is zero');

  <<done>>
  NULL;
END;
/
