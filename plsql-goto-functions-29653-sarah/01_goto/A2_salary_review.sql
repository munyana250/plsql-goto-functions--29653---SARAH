-- Author: MUNYANA Sarah (29653)
-- A2: Salary review using GOTO
SET SERVEROUTPUT ON
DECLARE
  v_salary employees.salary%TYPE;
BEGIN
  SELECT salary INTO v_salary FROM employees WHERE emp_id = 1;

  IF v_salary < 300000 THEN
    GOTO low_salary;
  ELSIF v_salary < 800000 THEN
    GOTO mid_salary;
  ELSE
    GOTO high_salary;
  END IF;

  <<low_salary>>
  DBMS_OUTPUT.PUT_LINE('Salary ' || v_salary || ': eligible for raise review');
  GOTO finish;

  <<mid_salary>>
  DBMS_OUTPUT.PUT_LINE('Salary ' || v_salary || ': standard band');
  GOTO finish;

  <<high_salary>>
  DBMS_OUTPUT.PUT_LINE('Salary ' || v_salary || ': senior band');

  <<finish>>
  NULL;
END;
/
