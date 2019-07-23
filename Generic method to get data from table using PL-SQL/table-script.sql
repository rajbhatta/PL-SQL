--------------------------------------------------------
--  File created - Monday-July-22-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table TBL_TEST
--------------------------------------------------------

  CREATE TABLE "HR"."TBL_TEST" 
   (	"KEYNAME" VARCHAR2(200 BYTE), 
	"KEYVALUE" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into HR.TBL_TEST
SET DEFINE OFF;
Insert into HR.TBL_TEST (KEYNAME,KEYVALUE) values ('CLASS_NAME','sun.jdbc.odbc.JdbcOdbcDriver');
Insert into HR.TBL_TEST (KEYNAME,KEYVALUE) values ('PORT','1521');
Insert into HR.TBL_TEST (KEYNAME,KEYVALUE) values ('DATABASE_NAME','DB_Test');
Insert into HR.TBL_TEST (KEYNAME,KEYVALUE) values ('URL','jdbc:odbc:datasource');
