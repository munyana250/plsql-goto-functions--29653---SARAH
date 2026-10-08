# C2 Reflection

**Author:** MUNYANA Sarah (29653)

> DRAFT: rewrite this in your own words before submitting.

**GOTO.** I used GOTO in A1 and A2 to jump to labels depending on a condition. It works, but the code becomes harder to follow because the reader has to hunt for labels. A3 showed me the rules: a GOTO cannot jump into an IF block, into a loop, or out of a subprogram, which gives error PLS-00375. A4 showed that the same logic is clearer with IF/ELSIF, so I would avoid GOTO in real programs.

**Functions.** Functions let me write logic once and reuse it. They return a value, so I could call them inside a SELECT (B5), which a procedure cannot do. Exception handling made them safer: fn_dept_name returns 'Unknown' on NO_DATA_FOUND, and fn_calculate_tax raises a custom error for invalid salaries.

**Combined task.** fn_validate_payroll calls fn_dept_name, so one function can build on another.

**Challenges and learning.** The hardest part was understanding why the illegal GOTO fails and how to place labels correctly. I learned to validate inputs and handle exceptions inside functions.
