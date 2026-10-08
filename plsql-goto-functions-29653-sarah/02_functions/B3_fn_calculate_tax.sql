-- Author: MUNYANA Sarah (29653)
-- B3: Progressive tax calculator.
-- NOTE: The assignment gives no tax bands, so these example brackets are assumed:
--   0 - 60,000        : 0%
--   60,001 - 100,000  : 20% of the part above 60,000
--   above 100,000     : 8,000 + 30% of the part above 100,000
CREATE OR REPLACE FUNCTION fn_calculate_tax(p_salary NUMBER) RETURN NUMBER IS
  v_tax NUMBER;
BEGIN
  IF p_salary IS NULL OR p_salary < 0 THEN
    RAISE_APPLICATION_ERROR(-20001, 'Invalid salary');
  END IF;

  IF p_salary <= 60000 THEN
    v_tax := 0;
  ELSIF p_salary <= 100000 THEN
    v_tax := (p_salary - 60000) * 0.20;
  ELSE
    v_tax := 8000 + (p_salary - 100000) * 0.30;
  END IF;

  RETURN v_tax;
END fn_calculate_tax;
/
