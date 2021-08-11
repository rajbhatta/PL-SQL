# Database link in 11g #

## Database link creating query ##
```sql

CREATE DATABASE LINK DB_TEST_RAJ_LINK 
    CONNECT TO RAJ IDENTIFIED BY RAJ123$
    USING 'DB_TEST_RAJ';
	
	
```

## Database link verification query ##
```sql
SELECT * FROM EMPLOYEES@DB_TEST_RAJ_LINK;
```