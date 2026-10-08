-- Author: MUNYANA Sarah (29653)
-- B4: Returns department name for a department id, or 'Unknown' if not found.
CREATE OR REPLACE FUNCTION fn_dept_name(p_dept_id NUMBER) RETURN VARCHAR2 IS
  v_name departments.dept_name%TYPE;
BEGIN
  SELECT dept_name INTO v_name
  FROM departments
  WHERE dept_id = p_dept_id;
  RETURN v_name;
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    RETURN 'Unknown';
END fn_dept_name;
/
