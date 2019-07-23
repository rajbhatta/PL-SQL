create or replace PACKAGE BODY package_test AS

PROCEDURE displayFirstName(fname in varchar2) IS 
BEGIN
dbms_output.put_line('Hi there your first name is ' || fname);
END displayFirstName;

END package_test;
