-- Author: MUNYANA Sarah (29653)
-- A3: Illegal GOTO and its fix
SET SERVEROUTPUT ON

-- PART 1: ILLEGAL. GOTO cannot jump INTO an IF block.
-- Expected error: PLS-00375: illegal GOTO statement; this GOTO cannot transfer control to label
BEGIN
  GOTO inside_block;
  IF TRUE THEN
    <<inside_block>>
    DBMS_OUTPUT.PUT_LINE('Inside the IF block');
  END IF;
END;
/

-- PART 2: FIX. Put the label at the same level as the GOTO (not inside a nested block).
BEGIN
  GOTO outside_label;
  DBMS_OUTPUT.PUT_LINE('This line is skipped');
  <<outside_label>>
  DBMS_OUTPUT.PUT_LINE('Reached label correctly');
END;
/
