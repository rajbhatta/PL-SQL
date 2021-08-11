# Creating package and procedure #
# Package Header #
```sql
/* Formatted on 12/5/2019 8:35:58 PM (QP5 v5.354) */
CREATE OR REPLACE PACKAGE TOAD_USER.customer_handler
AS
    PROCEDURE signUpCustomer (name          IN VARCHAR2,
                              description   IN VARCHAR2,
                              username      IN VARCHAR2);
END customer_handler;
/

```

# Package Body #
```sql
/* Formatted on 12/5/2019 8:38:20 PM (QP5 v5.354) */
CREATE OR REPLACE PACKAGE BODY TOAD_USER.customer_handler
AS
    PROCEDURE signUpCustomer (name          IN VARCHAR2,
                              description   IN VARCHAR2,
                              username      IN VARCHAR2)
    IS
    BEGIN
        INSERT INTO TOAD_USER.CUSTOMERS (id,
                                         NAME,
                                         DESCRIPTION,
                                         USERNAME)
             VALUES (CUSTOMER_SEQ.NEXTVAL,
                     name,
                     description,
                     username);
    END signUpCustomer;
END customer_handler;
/
```
