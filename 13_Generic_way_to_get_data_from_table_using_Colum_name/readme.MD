# Generic way to get data from table using column name #

## Query ##
```sql
DECLARE

className TBL_TEST.KEYNAME%TYPE;

BEGIN
READING_TABLE.READ_FROM_TABLE('CLASS_NAME',className);
dbms_output.put_line(className);

END;
```

## Header ##

```sql
CREATE OR REPLACE 
PACKAGE READING_TABLE AS 

  PROCEDURE READ_FROM_TABLE(COLUMN_NAME IN VARCHAR2,
                            RETURN_VALUE OUT VARCHAR2);

END READING_TABLE;
```

## Body ##

```sql
CREATE OR REPLACE
PACKAGE BODY READING_TABLE AS

PROCEDURE READ_FROM_TABLE(COLUMN_NAME IN VARCHAR2,
                            RETURN_VALUE OUT VARCHAR2) IS

CURSOR cursor_value IS 
  SELECT KEYVALUE FROM TBL_TEST where LOWER(KEYNAME)= lower(COLUMN_NAME);
  
BEGIN

OPEN cursor_value;
FETCH cursor_value INTO RETURN_VALUE;
close cursor_value;

END READ_FROM_TABLE;


END READING_TABLE;
```