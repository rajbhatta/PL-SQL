# How to use trigger #
```sql

Trigger

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

```

```sql

 trigger hitting table

 create table salary_history
(
 employee_id number(5) references employees on delete cascade,
 old_salary  number(6),
 new_salary  number(6),
 changedon   date,
 primary key (employee_id, changedon)
);

```


## Trigger demo ##
```sql

update employees set salary = salary  + 1000
where employee_id = 150

-------------------
select * from salary_history

```