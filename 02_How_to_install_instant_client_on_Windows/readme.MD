# How to install instant client on windows to connect to Oracle server ? #
1. Goto google and search instant client for 64-bits (in my case) or goto https://www.oracle.com/ca-en/database/technologies/instant-client/winx64-64-downloads.html
2. Unzip and put it inside folder C:\instantclient_19_3 
3. Goto System variables: My PC-> Properties-> Advanced Setting ->Environment Variables ->System Variables
4. Create new system variables : name= TNS_ADMIN and path=C:\instantclient_19_3 
5. Edit path variable and add %TNS_ADMIN%