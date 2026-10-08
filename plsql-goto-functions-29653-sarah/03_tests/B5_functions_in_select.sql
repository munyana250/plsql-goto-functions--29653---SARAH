-- Author: MUNYANA Sarah (29653)
-- B5: Using the functions inside a SELECT statement
SELECT emp_id,
       emp_name,
       salary,
       fn_annual_salary(salary)       AS annual_salary,
       fn_years_of_service(hire_date) AS years_service,
       fn_calculate_tax(salary)       AS tax,
       fn_dept_name(dept_id)          AS department
FROM   employees
ORDER  BY emp_id;
