# Creating temporary and permanent tablespace in oracle #
```sql
-- =============CREATING A PERMANENT TABLESPACE FOR USER===========================
CREATE TABLESPACE RAJ_TABSPACE
DATAFILE 'D:\oracle\oradata\orcl\RAJ_TABSPACE.DAT'
SIZE 10M AUTOEXTEND ON;

-- ======================CREATING A TEMPORAY TABLESPACE FOR USER====================
CREATE TEMPORARY TABLESPACE RAJ_TABSPACE_TEMP
TEMPFILE 'D:\oracle\oradata\orcl\RAJ_TABSPACE_TEMP.DAT'
SIZE 5M AUTOEXTEND ON;
```