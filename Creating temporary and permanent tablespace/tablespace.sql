=============CREATING A PERMANENT TABLESPACE FOR USER===========================
CREATE TABLESPACE RAJ_TABSPACE
DATAFILE 'RAJ_TABSPACE.DAT'
SIZE 10M AUTOEXTEND ON;


======================CREATING A TEMPORAY TABLESPACE FOR USER====================
CREATE TEMPORARY TABLESPACE RAJ_TABSPACE_TEMP
TEMPFILE 'RAJ_TABSPACE_TEMP.DAT'
SIZE 5M AUTOEXTEND ON;
