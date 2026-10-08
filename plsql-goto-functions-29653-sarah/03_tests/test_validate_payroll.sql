-- Author: MUNYANA Sarah (29653)
-- Tests for C1: fn_validate_payroll (employee 5 does not exist)
SET SERVEROUTPUT ON
BEGIN
  FOR i IN 1..5 LOOP
    DBMS_OUTPUT.PUT_LINE('Employee ' || i || ': ' || fn_validate_payroll(i));
  END LOOP;
END;
/
