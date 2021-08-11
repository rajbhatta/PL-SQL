# How to use package and procedure version 2 #
```sql

 Package HEAD

 create or replace PACKAGE package_test AS

PROCEDURE displayFirstName(fname in varchar2);

END package_test;


```

```sql

Pakage Body

create or replace PACKAGE BODY package_test AS

PROCEDURE displayFirstName(fname in varchar2) IS 
BEGIN
dbms_output.put_line('Hi there your first name is ' || fname);
END displayFirstName;

END package_test;

```

```sql
 
 Invoke procedure from package

 DECLARE
BEGIN
  package_test.displayfirstname('Raj Bhatta');
END;
/

```