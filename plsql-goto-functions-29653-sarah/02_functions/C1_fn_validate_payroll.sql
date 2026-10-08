-- Author: MUNYANA Sarah (29653)
-- C1: Payroll validator. Combines fn_dept_name with salary and hire-date checks.
-- Requires B4 (fn_dept_name) to be created first.
CREATE OR REPLACE FUNCTION fn_validate_payroll(p_emp_id NUMBER) RETURN VARCHAR2 IS
  v_salary employees.salary%TYPE;
  v_hire   employees.hire_date%TYPE;
  v_dept   employees.dept_id%TYPE;
BEGIN
  SELECT salary, hire_date, dept_id
  INTO   v_salary, v_hire, v_dept
  FROM   employees
  WHERE  emp_id = p_emp_id;

  IF v_salary IS NULL OR v_salary <= 0 THEN
    RETURN 'INVALID: salary missing or not positive';
  ELSIF v_hire IS NULL OR v_hire > SYSDATE THEN
    RETURN 'INVALID: hire date missing or in the future';
  ELSIF fn_dept_name(v_dept) = 'Unknown' THEN
    RETURN 'INVALID: no valid department';
  END IF;

  RETURN 'VALID';
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    RETURN 'INVALID: employee not found';
END fn_validate_payroll;
/
