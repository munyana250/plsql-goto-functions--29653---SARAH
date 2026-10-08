-- Author: MUNYANA Sarah (29653)
-- B1: Returns annual salary (monthly * 12). NULL for invalid input.
CREATE OR REPLACE FUNCTION fn_annual_salary(p_monthly NUMBER) RETURN NUMBER IS
BEGIN
  IF p_monthly IS NULL OR p_monthly < 0 THEN
    RETURN NULL;
  END IF;
  RETURN p_monthly * 12;
END fn_annual_salary;
/
