# How to use function in 11g #

```sql

Function prototyp

CREATE OR REPLACE FUNCTION manager_job_history (p_dept NUMBER)
    RETURN NUMBER
IS
    v_manager   departments.manager_id%TYPE;
    v_count     NUMBER (2);
BEGIN
    SELECT manager_id
      INTO v_manager
      FROM departments
     WHERE department_id = p_dept;

    IF v_manager IS NULL
    THEN
        RETURN NULL;
    ELSE
        SELECT COUNT (*)
          INTO v_count
          FROM job_history
         WHERE employee_id = v_manager;

        RETURN v_count;
    END IF;
EXCEPTION
    WHEN NO_DATA_FOUND
    THEN
        raise_application_error (-20500, 'Department not found');
END;
```

```sql

Function call

BEGIN
    DBMS_OUTPUT.put_line (manager_job_history (20));
END;
```