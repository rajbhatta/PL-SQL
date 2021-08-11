create or replace PACKAGE PACKAGE2 AS 

 PROCEDURE mergeName(fname IN VARCHAR2,
                    lname IN VARCHAR2,
                    mergeNAme OUT VARCHAR2);

 PROCEDURE provideNameWithAddress(address IN VARCHAR2, 
                                  nameWithAddress OUT VARCHAR2);

END PACKAGE2;