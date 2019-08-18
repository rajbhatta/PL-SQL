PROMPT ====================================================
PROMPT start checking already presented information from tbl_INFO
PROMPT ===================================================

select * from tbl_INFO where name='James';

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
INSERT (NAME, PHONE) VAUES ('James', '4372322234234')
WHEN MATCHED THEN
UPDATE set
TI.NAME=DI.NAME,
TI.PHONE=DI.PHONE;

PROMPT ====================================================
PROMPT end of insert or update into insert1.sql
PROMPT ===================================================
