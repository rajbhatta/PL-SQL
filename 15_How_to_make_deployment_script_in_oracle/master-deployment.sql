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
