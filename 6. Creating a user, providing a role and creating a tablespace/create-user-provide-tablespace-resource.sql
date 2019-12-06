create user toad_user identified by toad_user
default tablespace RAJ_TABSPACE
quota unlimited on RAJ_TABSPACE;


grant resource, dba to toad_user;
