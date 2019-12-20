create or replace trigger  trg_salary_check
before update of salary
on employees
for each row
when (old.salary <> new.salary)
begin
   if :new.salary < :old.salary then
      raise_application_error(-20200,'Salary cannot be decreased');
   else
      insert into salary_history
         values (:new.employee_id, :old.salary, :new.salary,sysdate);
   end if;
end;