-- Author: MUNYANA Sarah (29653)
-- Course: INSY 8311 - Database Development with PL/SQL
-- Purpose: Create and populate tables used by the GOTO and function exercises

CREATE TABLE departments (
  dept_id   NUMBER PRIMARY KEY,
  dept_name VARCHAR2(50)
);

CREATE TABLE employees (
  emp_id     NUMBER PRIMARY KEY,
  emp_name   VARCHAR2(50),
  salary     NUMBER(10,2),
  hire_date  DATE,
  dept_id    NUMBER REFERENCES departments(dept_id)
);

INSERT INTO departments VALUES (10, 'Finance');
INSERT INTO departments VALUES (20, 'IT');
INSERT INTO departments VALUES (30, 'HR');

INSERT INTO employees VALUES (1, 'Alice',   250000,  DATE '2015-03-01', 10);
INSERT INTO employees VALUES (2, 'Bob',     480000,  DATE '2019-07-15', 20);
INSERT INTO employees VALUES (3, 'Carine',  1200000, DATE '2010-01-10', 20);
INSERT INTO employees VALUES (4, 'David',   90000,   DATE '2023-11-20', 30);
COMMIT;
