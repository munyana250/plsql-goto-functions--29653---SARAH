-- Author: MUNYANA Sarah (29653)
-- Tests for B1-B4, including edge cases
SET SERVEROUTPUT ON
BEGIN
  DBMS_OUTPUT.PUT_LINE('Annual salary (250000): ' || fn_annual_salary(250000));
  DBMS_OUTPUT.PUT_LINE('Annual salary (NULL)  : ' || NVL(TO_CHAR(fn_annual_salary(NULL)), 'NULL'));
  DBMS_OUTPUT.PUT_LINE('Years of service      : ' || fn_years_of_service(DATE '2015-03-01'));
  DBMS_OUTPUT.PUT_LINE('Tax (50000)           : ' || fn_calculate_tax(50000));
  DBMS_OUTPUT.PUT_LINE('Tax (90000)           : ' || fn_calculate_tax(90000));
  DBMS_OUTPUT.PUT_LINE('Tax (250000)          : ' || fn_calculate_tax(250000));
  DBMS_OUTPUT.PUT_LINE('Dept 20               : ' || fn_dept_name(20));
  DBMS_OUTPUT.PUT_LINE('Dept 99 (missing)     : ' || fn_dept_name(99));

  -- Exception test: negative salary raises ORA-20001
  BEGIN
    DBMS_OUTPUT.PUT_LINE(fn_calculate_tax(-5));
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Caught expected error: ' || SQLERRM);
  END;
END;
/
