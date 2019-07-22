create or replace PACKAGE BODY raj AS

PROCEDURE displayFirstName(fname in varchar2) IS 
BEGIN
dbms_output.put_line('Here we are testing package in Oracle');
END displayFirstName;

END raj;