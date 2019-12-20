DECLARE
nameWithAddress VARCHAR2(200);

BEGIN

package2.providenamewithaddress('Ontario, Canada',nameWithAddress);

dbms_output.put_line(nameWithAddress);

END;