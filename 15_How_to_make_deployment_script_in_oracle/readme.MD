## How to execute script in Sql ##
1. Goto sqlplus
2. Goto directory using CD command where you do have file.
3. @master-deployment.sql

# Deployment script #
```sql
Master deployment script

-- Date: 2019/8/17
-- Prepared by : Raj Bhatta

spool deployment_test.log
set define off

set trimspool on;
set newpage none;
set linesize 1512;
set pagesize 1231;
sset colsep '|';
set serveroutput on;

PROMPT ====================================================
PROMPT start of insert into tbl_INFO table
PROMPT ===================================================

@insert1.sql

PROMPT ====================================================
PROMPT End of insert into tbl_INFO table
PROMPT ===================================================


PROMPT ====================================================
PROMPT start of package update
PROMPT ===================================================

@insert-package.sql

PROMPT ====================================================
PROMPT End of package update
PROMPT ===================================================

```

```sql
 Regression test package

create or replace PACKAGE BODY DB_test.package_test AS

PROCEDURE displayFirstName(fname in varchar2) IS
BEGIN
dbms_output.put_line('Hi there your first name is ' || fname);
END displayFirstName;

END package_test;
```

```sql
  Operation script

PROMPT ====================================================
PROMPT start checking already presented information from tbl_INFO
PROMPT ===================================================

select * from tbl_INFO where name='br';

PROMPT ====================================================
PROMPT end checking already presented information from tbl_INFO
PROMPT ===================================================


PROMPT ====================================================
PROMPT start of insert or update into insert1.sql
PROMPT ===================================================


MERGE INTO tbl_INFO TI USING
(SELECT name AS TI_name from DULA) DI
on (TI.name=DI.name)
WHEN NOT MATCHED THEN
INSERT (NAME, PHONE) VAUES ('br', '4372322234234')
WHEN MATCHED THEN
UPDATE set
TI.NAME=DI.NAME,
TI.PHONE=DI.PHONE;

PROMPT ====================================================
PROMPT end of insert or update into insert1.sql
PROMPT ===================================================
```