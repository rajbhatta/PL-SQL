# Procedure in Oracle 11g #
```sql
/* Formatted on 12/19/2019 10:39:55 PM (QP5 v5.354) */
CREATE OR REPLACE PROCEDURE change_department_manager (p_deptid    IN  NUMBER,
                                                       p_managerid IN  NUMBER)
IS
    v_deptid   departments.department_id%TYPE;
    v_count    NUMBER (1);
BEGIN
    
    SELECT COUNT (*)
      INTO v_count
      FROM departments
     WHERE department_id = p_deptid;

    IF v_count = 0
    THEN
        raise_application_error (-20100, 'Department not found');
    END IF;

    
    SELECT department_id
      INTO v_deptid
      FROM employees
     WHERE employee_id = p_managerid;

    IF v_deptid <> p_deptid
    THEN
        raise_application_error (
            -20111,
            'Employee does not belong to department he is supposed to head');
    END IF;

   
    UPDATE departments
       SET manager_id = p_managerid
     WHERE department_id = p_deptid;
EXCEPTION
    WHEN NO_DATA_FOUND
    THEN
        raise_application_error (-20110, 'Employee is not found!');
END;
```

# Invoking procedure in oracle 11g #
```sql
/* Formatted on 12/19/2019 10:42:41 PM (QP5 v5.354) */
BEGIN
   change_department_manager(100,110);
END;    
```