create table salary_history
(
 employee_id number(5) references employees on delete cascade,
 old_salary  number(6),
 new_salary  number(6),
 changedon   date,
 primary key (employee_id, changedon)
);