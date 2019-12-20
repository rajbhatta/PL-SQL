create or replace PACKAGE BODY PACKAGE2 AS

PROCEDURE mergeName(fname IN VARCHAR2,
                    lname IN VARCHAR2,
                    mergeNAme OUT VARCHAR2)AS
v_fname VARCHAR2(200);
v_lname VARCHAR2(200);
BEGIN
 v_fname :=fname;
 v_lname :=lname;
 mergeName :=v_fname || v_lname;
 
 END mergeName;
 
 
 PROCEDURE provideNameWithAddress(address IN VARCHAR2, 
                                  nameWithAddress OUT VARCHAR2) AS

v_address VARCHAR2(200);
v_mergeName VARCHAR2(200);
BEGIN

v_address :=address;
mergeName('Raj','Bhatta',v_mergeName);
nameWithAddress :=v_mergeName || v_address;

dbms_output.put_line(nameWithAddress);

END provideNameWithAddress;

 
END PACKAGE2;