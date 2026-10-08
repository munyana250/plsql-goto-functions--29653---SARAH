# PL/SQL GOTO Statements and Functions

**Student:** MUNYANA Sarah
**Student ID:** 29653
**Course:** Database Development with PL/SQL (INSY 8311)
**Instructor:** Eric Maniraguha
**Assignment:** Individual Assignment III

## Description

This repository contains PL/SQL programs covering GOTO statements, stored functions, exception handling, and using functions inside SQL queries.

## Repository Structure

```
plsql-goto-functions-29653-sarah/
├── README.md
├── .gitignore
├── 00_setup/create_tables.sql
├── 01_goto/            (A1-A4)
├── 02_functions/       (B1-B4, C1)
├── 03_tests/           (B5, function tests, payroll tests)
├── screenshots/        (A1, A2, A3, A4, B5, C1 outputs)
└── docs/REFLECTION.md
```

## How to Run

1. Run `00_setup/create_tables.sql`.
2. Run the functions in `02_functions/` (B4 before C1).
3. Run the programs in `01_goto/`.
4. Run the test files in `03_tests/`.
5. Verify results against the screenshots.

## Tasks

| Task | File                                    | Description                      |
| ---- | --------------------------------------- | -------------------------------- |
| A1   | 01_goto/A1_number_classifier.sql        | Classify a number with GOTO      |
| A2   | 01_goto/A2_salary_review.sql            | Salary review with GOTO          |
| A3   | 01_goto/A3_illegal_goto.sql             | Illegal GOTO (PLS-00375) and fix |
| A4   | 01_goto/A4_rewrite_no_goto.sql          | A1 rewritten without GOTO        |
| B1   | 02_functions/B1_fn_annual_salary.sql    | Annual salary                    |
| B2   | 02_functions/B2_fn_years_of_service.sql | Years of service                 |
| B3   | 02_functions/B3_fn_calculate_tax.sql    | Tax calculator                   |
| B4   | 02_functions/B4_fn_dept_name.sql        | Department name lookup           |
| B5   | 03_tests/B5_functions_in_select.sql     | Functions used in SELECT         |
| C1   | 02_functions/C1_fn_validate_payroll.sql | Payroll validator                |
| C2   | docs/REFLECTION.md                      | Reflection                       |

## Notes

- The tax bands in B3 are assumed example brackets because none were specified (see comments in the file).
- AI use: I used Claude (an AI assistant). I ran and tested all the code myself and can explain it.
