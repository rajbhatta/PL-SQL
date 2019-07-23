DECLARE

className TBL_TEST.KEYNAME%TYPE;

BEGIN
READING_TABLE.READ_FROM_TABLE('CLASS_NAME',className);
dbms_output.put_line(className);

END;