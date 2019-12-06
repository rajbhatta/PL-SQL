-- =====Creating a table

CREATE TABLE customers
( id number NOT NULL,
  name varchar2(200) NOT NULL,
  description varchar2(1000)
);

--- ======Creating a sequence
CREATE SEQUENCE customer_seq
  MINVALUE 1
  MAXVALUE 999999999999999999999999999
  START WITH 1
  INCREMENT BY 1
  CACHE 20;
