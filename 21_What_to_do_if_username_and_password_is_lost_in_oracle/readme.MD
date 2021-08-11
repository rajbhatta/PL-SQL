# How to unlock user if all users are locaked and you forgot password  11g #
1. goto command
2. type sqlplus/nolog
3. connect sys as sysdba
4. enter password that you have entered during oracle installation
5. alter user HR account unlock;
6. alter user HR identified by HR;
7. exit
