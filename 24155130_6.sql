SQL> CREATE TABLE SCHOOL (
  2      ID INT PRIMARY KEY,
  3      NAME VARCHAR(100),
  4      injected_date DATE
  5  );
CREATE TABLE SCHOOL (
             *
ERROR at line 1:
ORA-00955: name is already used by an existing object 


SQL> 
SQL> CREATE TABLE EMPLOYEE (
  2      ID INT PRIMARY KEY,
  3      LAST_NAME VARCHAR(50),
  4      FIRST_NAME VARCHAR(50),
  5      MIDDLE_NAME VARCHAR(50),
  6      FATHER_NAME VARCHAR(100),
  7      MOTHER_NAME VARCHAR(100),
  8      SEX CHAR(1),
  9      HIRE_DATE DATE,
 10      ADDRESS VARCHAR(200),
 11      CITY VARCHAR(50),
 12      STATE VARCHAR(50),
 13      ZIP VARCHAR(10),
 14      PHONE VARCHAR(15),
 15      PAGER VARCHAR(15),
 16      SUPERVISOR_ID INT,
 17      injected_date DATE,
 18      FOREIGN KEY (SUPERVISOR_ID) REFERENCES EMPLOYEE(ID)
 19  );
CREATE TABLE EMPLOYEE (
             *
ERROR at line 1:
ORA-00955: name is already used by an existing object 


SQL> 
SQL> CREATE TABLE JOB (
  2      ID INT PRIMARY KEY,
  3      NAME VARCHAR(100),
  4      TITLE VARCHAR(100),
  5      SALARY DECIMAL(10,2),
  6      BONUS DECIMAL(10,2),
  7      injected_date DATE
  8  );
CREATE TABLE JOB (
             *
ERROR at line 1:
ORA-00955: name is already used by an existing object 


SQL> 
SQL> CREATE TABLE EMPLOYEE_ALIGNMENT (
  2      EMPLOYEE_ID INT,
  3      SCHOOL_ID INT,
  4      injected_date DATE,
  5      FOREIGN KEY (EMPLOYEE_ID) REFERENCES EMPLOYEE(ID),
  6      FOREIGN KEY (SCHOOL_ID) REFERENCES SCHOOL(ID)
  7  );
CREATE TABLE EMPLOYEE_ALIGNMENT (
             *
ERROR at line 1:
ORA-00955: name is already used by an existing object 


SQL> 
SQL> CREATE TABLE EMPLOYEE_PAY (
  2      EMPLOYEE_ID INT,
  3      JOB_ID INT,
  4      injected_date DATE,
  5      FOREIGN KEY (EMPLOYEE_ID) REFERENCES EMPLOYEE(ID),
  6      FOREIGN KEY (JOB_ID) REFERENCES JOB(ID)
  7  );
CREATE TABLE EMPLOYEE_PAY (
             *
ERROR at line 1:
ORA-00955: name is already used by an existing object 


SQL> CREATE TABLE SCHOOL (
  2      ID INT PRIMARY KEY,
  3      NAME VARCHAR(100) NOT NULL,
  4      injected_date DATE
  5  );
CREATE TABLE SCHOOL (
             *
ERROR at line 1:
ORA-00955: name is already used by an existing object 


SQL> SELECT e.FIRST_NAME || ' ' || e.LAST_NAME AS FULL_NAME,
  2         s.NAME AS SCHOOL_NAME
  3  FROM EMPLOYEE e
  4  JOIN EMPLOYEE_ALIGNMENT ea ON e.ID = ea.EMPLOYEE_ID
  5  JOIN SCHOOL s ON ea.SCHOOL_ID = s.ID;
JOIN EMPLOYEE_ALIGNMENT ea ON e.ID = ea.EMPLOYEE_ID
                              *
ERROR at line 4:
ORA-00904: "E"."ID": invalid identifier 


SQL> DROP TABLE EMPLOYEE_PAY CASCADE CONSTRAINTS;

Table dropped.

SQL> 
SQL> DROP TABLE EMPLOYEE_ALIGNMENT CASCADE CONSTRAINTS;

Table dropped.

SQL> 
SQL> DROP TABLE JOB CASCADE CONSTRAINTS;

Table dropped.

SQL> 
SQL> DROP TABLE EMPLOYEE CASCADE CONSTRAINTS;

Table dropped.

SQL> 
SQL> DROP TABLE SCHOOL CASCADE CONSTRAINTS;

Table dropped.

SQL> CREATE TABLE SCHOOL (
  2      ID INT PRIMARY KEY,
  3      NAME VARCHAR(100) NOT NULL,
  4      injected_date DATE
  5  );

Table created.

SQL> CREATE TABLE EMPLOYEE (
  2      ID INT PRIMARY KEY,
  3      LAST_NAME VARCHAR(50) NOT NULL,
  4      FIRST_NAME VARCHAR(50) NOT NULL,
  5      MIDDLE_NAME VARCHAR(50),
  6      FATHER_NAME VARCHAR(100),
  7      MOTHER_NAME VARCHAR(100),
  8      SEX CHAR(1),
  9      HIRE_DATE DATE,
 10      ADDRESS VARCHAR(200),
 11      CITY VARCHAR(50),
 12      STATE VARCHAR(50),
 13      ZIP VARCHAR(10),
 14      PHONE VARCHAR(15),
 15      PAGER VARCHAR(15),
 16      SUPERVISOR_ID INT,
 17      injected_date DATE,
 18  
SQL>     FOREIGN KEY (SUPERVISOR_ID) REFERENCES EMPLOYEE(ID)
SP2-0734: unknown command beginning "FOREIGN KE..." - rest of line ignored.
SQL> );
SP2-0042: unknown command ")" - rest of line ignored.
SQL> CREATE TABLE JOB (
  2      ID INT PRIMARY KEY,
  3      NAME VARCHAR(100) NOT NULL,
  4      TITLE VARCHAR(100) NOT NULL,
  5      SALARY DECIMAL(10,2),
  6      BONUS DECIMAL(10,2),
  7      injected_date DATE
  8  );

Table created.

SQL> CREATE TABLE EMPLOYEE_ALIGNMENT (
  2      EMPLOYEE_ID INT,
  3      SCHOOL_ID INT,
  4      injected_date DATE,
  5  
SQL>     PRIMARY KEY (EMPLOYEE_ID, SCHOOL_ID),
SP2-0734: unknown command beginning "PRIMARY KE..." - rest of line ignored.
SQL>     FOREIGN KEY (EMPLOYEE_ID) REFERENCES EMPLOYEE(ID),
SP2-0734: unknown command beginning "FOREIGN KE..." - rest of line ignored.
SQL>     FOREIGN KEY (SCHOOL_ID) REFERENCES SCHOOL(ID)
SP2-0734: unknown command beginning "FOREIGN KE..." - rest of line ignored.
SQL> );
SP2-0042: unknown command ")" - rest of line ignored.
SP2-0044: For a list of known commands enter HELP
and to leave enter EXIT.
SQL> CREATE TABLE EMPLOYEE_PAY (
  2      EMPLOYEE_ID INT,
  3      JOB_ID INT,
  4      injected_date DATE,
  5  
SQL>     PRIMARY KEY (EMPLOYEE_ID, JOB_ID),
SP2-0734: unknown command beginning "PRIMARY KE..." - rest of line ignored.
SQL>     FOREIGN KEY (EMPLOYEE_ID) REFERENCES EMPLOYEE(ID),
SP2-0734: unknown command beginning "FOREIGN KE..." - rest of line ignored.
SQL>     FOREIGN KEY (JOB_ID) REFERENCES JOB(ID)
SP2-0734: unknown command beginning "FOREIGN KE..." - rest of line ignored.
SQL> );
SP2-0042: unknown command ")" - rest of line ignored.
SP2-0044: For a list of known commands enter HELP
and to leave enter EXIT.
SQL> CREATE TABLE EMPLOYEE_ALIGNMENT (
  2      EMPLOYEE_ID INT,
  3      SCHOOL_ID INT,
  4      injected_date DATE,
  5      PRIMARY KEY (EMPLOYEE_ID, SCHOOL_ID),
  6      FOREIGN KEY (EMPLOYEE_ID) REFERENCES EMPLOYEE(ID),
  7      FOREIGN KEY (SCHOOL_ID) REFERENCES SCHOOL(ID)
  8  );
    FOREIGN KEY (EMPLOYEE_ID) REFERENCES EMPLOYEE(ID),
                                         *
ERROR at line 6:
ORA-00942: table or view does not exist 


SQL> DROP TABLE EMPLOYEE_ALIGNMENT CASCADE CONSTRAINTS;
DROP TABLE EMPLOYEE_ALIGNMENT CASCADE CONSTRAINTS
           *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> DROP TABLE EMPLOYEE_PAY CASCADE CONSTRAINTS;
DROP TABLE EMPLOYEE_PAY CASCADE CONSTRAINTS
           *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> FOREIGN KEY (EMPLOYEE_ID) REFERENCES EMPLOYEE(ID)
SP2-0734: unknown command beginning "FOREIGN KE..." - rest of line ignored.
SQL> CREATE TABLE EMPLOYEE_ALIGNMENT (
  2      EMPLOYEE_ID INT,
  3      SCHOOL_ID INT,
  4      injected_date DATE,
  5      PRIMARY KEY (EMPLOYEE_ID, SCHOOL_ID),
  6      FOREIGN KEY (EMPLOYEE_ID) REFERENCES EMPLOYEE(ID),
  7      FOREIGN KEY (SCHOOL_ID) REFERENCES SCHOOL(ID)
  8  );
    FOREIGN KEY (EMPLOYEE_ID) REFERENCES EMPLOYEE(ID),
                                         *
ERROR at line 6:
ORA-00942: table or view does not exist 


SQL> CREATE TABLE EMPLOYEE_ALIGNMENT (
  2  EMPLOYEE_ID INT,
  3  SCHOOL_ID INT,
  4  injected_date DATE
  5  );

Table created.

SQL> FOREIGN KEY (EMPLOYEE_ID) REFERENCES EMPLOYEE(ID)
SP2-0734: unknown command beginning "FOREIGN KE..." - rest of line ignored.
SQL> CREATE TABLE EMPLOYEE_ALIGNMENT (
  2      EMPLOYEE_ID INT,
  3      SCHOOL_ID INT,
  4      injected_date DATE,
  5      PRIMARY KEY (EMPLOYEE_ID, SCHOOL_ID),
  6      FOREIGN KEY (EMPLOYEE_ID) REFERENCES EMPLOYEE(ID),
  7      FOREIGN KEY (SCHOOL_ID) REFERENCES SCHOOL(ID)
  8  );
CREATE TABLE EMPLOYEE_ALIGNMENT (
             *
ERROR at line 1:
ORA-00955: name is already used by an existing object 


SQL> DROP TABLE EMPLOYEE_PAY CASCADE CONSTRAINTS;
DROP TABLE EMPLOYEE_PAY CASCADE CONSTRAINTS
           *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> 
SQL> DROP TABLE EMPLOYEE_ALIGNMENT CASCADE CONSTRAINTS;

Table dropped.

SQL> 
SQL> DROP TABLE JOB CASCADE CONSTRAINTS;

Table dropped.

SQL> 
SQL> DROP TABLE EMPLOYEE CASCADE CONSTRAINTS;
DROP TABLE EMPLOYEE CASCADE CONSTRAINTS
           *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> 
SQL> DROP TABLE SCHOOL CASCADE CONSTRAINTS;

Table dropped.

SQL> BEGIN
  2     FOR t IN (SELECT table_name FROM user_tables) LOOP
  3        EXECUTE IMMEDIATE 'DROP TABLE ' || t.table_name || ' CASCADE CONSTRAINTS';
  4     END LOOP;
  5  END;
  6  /

PL/SQL procedure successfully completed.

SQL> CREATE TABLE SCHOOL (
  2      ID NUMBER PRIMARY KEY,
  3      NAME VARCHAR2(100) NOT NULL,
  4      injected_date DATE
  5  );

Table created.

SQL> CREATE TABLE EMPLOYEE (
  2      ID NUMBER PRIMARY KEY,
  3      LAST_NAME VARCHAR2(50),
  4      FIRST_NAME VARCHAR2(50),
  5      MIDDLE_NAME VARCHAR2(50),
  6      FATHER_NAME VARCHAR2(100),
  7      MOTHER_NAME VARCHAR2(100),
  8      SEX CHAR(1),
  9      HIRE_DATE DATE,
 10      ADDRESS VARCHAR2(200),
 11      CITY VARCHAR2(50),
 12      STATE VARCHAR2(50),
 13      ZIP VARCHAR2(10),
 14      PHONE VARCHAR2(15),
 15      PAGER VARCHAR2(15),
 16      SUPERVISOR_ID NUMBER,
 17      injected_date DATE,
 18      FOREIGN KEY (SUPERVISOR_ID) REFERENCES EMPLOYEE(ID)
 19  );

Table created.

SQL> CREATE TABLE JOB (
  2      ID NUMBER PRIMARY KEY,
  3      NAME VARCHAR2(100),
  4      TITLE VARCHAR2(100),
  5      SALARY NUMBER(10,2),
  6      BONUS NUMBER(10,2),
  7      injected_date DATE
  8  );

Table created.

SQL> CREATE TABLE EMPLOYEE_ALIGNMENT (
  2      EMPLOYEE_ID NUMBER,
  3      SCHOOL_ID NUMBER,
  4      injected_date DATE,
  5      PRIMARY KEY (EMPLOYEE_ID, SCHOOL_ID),
  6      FOREIGN KEY (EMPLOYEE_ID) REFERENCES EMPLOYEE(ID),
  7      FOREIGN KEY (SCHOOL_ID) REFERENCES SCHOOL(ID)
  8  );

Table created.

SQL> CREATE TABLE EMPLOYEE_PAY (
  2      EMPLOYEE_ID NUMBER,
  3      JOB_ID NUMBER,
  4      injected_date DATE,
  5      PRIMARY KEY (EMPLOYEE_ID, JOB_ID),
  6      FOREIGN KEY (EMPLOYEE_ID) REFERENCES EMPLOYEE(ID),
  7      FOREIGN KEY (JOB_ID) REFERENCES JOB(ID)
  8  );

Table created.

SQL> INSERT INTO SCHOOL VALUES (1, 'Computer Engineering', SYSDATE);

1 row created.

SQL> INSERT INTO SCHOOL VALUES (2, 'Electronic Engineering', SYSDATE);

1 row created.

SQL> INSERT INTO SCHOOL VALUES (3, 'Mechanical Engineering', SYSDATE);

1 row created.

SQL> INSERT INTO JOB VALUES (1, 'Teaching', 'Professor', 120000, 20000, SYSDATE);

1 row created.

SQL> INSERT INTO JOB VALUES (2, 'Teaching', 'Associate Professor', 90000, NULL, SYSDATE);

1 row created.

SQL> INSERT INTO JOB VALUES (3, 'Teaching', 'Assistant Professor', 70000, 10000, SYSDATE);

1 row created.

SQL> INSERT INTO EMPLOYEE VALUES
  2  (1, 'Smith', 'John', NULL, 'Robert', 'Mary', 'M',
  3   TO_DATE('2018-01-10','YYYY-MM-DD'),
  4   'Address1','Kolkata','WB','700001','1111111111','101',
  5   NULL, SYSDATE);

1 row created.

SQL> 
SQL> INSERT INTO EMPLOYEE VALUES
  2  (2, 'Brown', 'David', NULL, 'Thomas', 'Anna', 'M',
  3   TO_DATE('2020-02-15','YYYY-MM-DD'),
  4   'Address2','Kolkata','WB','700002','2222222222','102',
  5   1, SYSDATE);

1 row created.

SQL> 
SQL> INSERT INTO EMPLOYEE VALUES
  2  (3, 'Roy', 'Anita', NULL, 'Sanjay', 'Kavita', 'F',
  3   TO_DATE('2019-03-20','YYYY-MM-DD'),
  4   'Address3','Kolkata','WB','700003','3333333333','103',
  5   1, SYSDATE);

1 row created.

SQL> 
SQL> INSERT INTO EMPLOYEE VALUES
  2  (4, 'Das', 'Ravi', NULL, 'Hari', 'Lata', 'M',
  3   TO_DATE('2023-05-01','YYYY-MM-DD'),
  4   'Address4','Kolkata','WB','700004','4444444444','104',
  5   2, SYSDATE);

1 row created.

SQL> INSERT INTO EMPLOYEE_ALIGNMENT VALUES (1, 1, SYSDATE);

1 row created.

SQL> INSERT INTO EMPLOYEE_ALIGNMENT VALUES (2, 1, SYSDATE);

1 row created.

SQL> INSERT INTO EMPLOYEE_ALIGNMENT VALUES (3, 2, SYSDATE);

1 row created.

SQL> INSERT INTO EMPLOYEE_ALIGNMENT VALUES (4, 3, SYSDATE);

1 row created.

SQL> INSERT INTO EMPLOYEE_PAY VALUES (1, 1, SYSDATE);

1 row created.

SQL> INSERT INTO EMPLOYEE_PAY VALUES (2, 2, SYSDATE);

1 row created.

SQL> INSERT INTO EMPLOYEE_PAY VALUES (3, 1, SYSDATE);

1 row created.

SQL> INSERT INTO EMPLOYEE_PAY VALUES (4, 3, SYSDATE);

1 row created.

SQL> SELECT * FROM EMPLOYEE;

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
         1 Smith                                                                

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
John                                                                            

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
                                                                                

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Robert                                                                          

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Mary                                                                            

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
M 10-JAN-18                                                                     

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Address1                                                                        

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Kolkata                                                                         

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
WB                                                 700001     1111111111        

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
101                           13-FEB-26                                         

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
                                                                                

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
         2 Brown                                                                

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
David                                                                           

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
                                                                                

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Thomas                                                                          

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Anna                                                                            

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
M 15-FEB-20                                                                     

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Address2                                                                        

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Kolkata                                                                         

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
WB                                                 700002     2222222222        

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
102                         1 13-FEB-26                                         

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
                                                                                

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
         3 Roy                                                                  

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Anita                                                                           

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
                                                                                

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Sanjay                                                                          

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Kavita                                                                          

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
F 20-MAR-19                                                                     

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Address3                                                                        

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Kolkata                                                                         

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
WB                                                 700003     3333333333        

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
103                         1 13-FEB-26                                         

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
                                                                                

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
         4 Das                                                                  

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Ravi                                                                            

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
                                                                                

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Hari                                                                            

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Lata                                                                            

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
M 01-MAY-23                                                                     

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Address4                                                                        

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Kolkata                                                                         

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
WB                                                 700004     4444444444        

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
104                         2 13-FEB-26                                         

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
                                                                                

SQL> SELECT * FROM SCHOOL;

        ID                                                                      
----------                                                                      
NAME                                                                            
--------------------------------------------------------------------------------
INJECTED_                                                                       
---------                                                                       
         1                                                                      
Computer Engineering                                                            
13-FEB-26                                                                       
                                                                                
         2                                                                      
Electronic Engineering                                                          
13-FEB-26                                                                       

        ID                                                                      
----------                                                                      
NAME                                                                            
--------------------------------------------------------------------------------
INJECTED_                                                                       
---------                                                                       
                                                                                
         3                                                                      
Mechanical Engineering                                                          
13-FEB-26                                                                       
                                                                                

SQL> SELECT * FROM JOB;

        ID                                                                      
----------                                                                      
NAME                                                                            
--------------------------------------------------------------------------------
TITLE                                                                           
--------------------------------------------------------------------------------
    SALARY      BONUS INJECTED_                                                 
---------- ---------- ---------                                                 
         1                                                                      
Teaching                                                                        
Professor                                                                       
    120000      20000 13-FEB-26                                                 
                                                                                

        ID                                                                      
----------                                                                      
NAME                                                                            
--------------------------------------------------------------------------------
TITLE                                                                           
--------------------------------------------------------------------------------
    SALARY      BONUS INJECTED_                                                 
---------- ---------- ---------                                                 
         2                                                                      
Teaching                                                                        
Associate Professor                                                             
     90000            13-FEB-26                                                 
                                                                                

        ID                                                                      
----------                                                                      
NAME                                                                            
--------------------------------------------------------------------------------
TITLE                                                                           
--------------------------------------------------------------------------------
    SALARY      BONUS INJECTED_                                                 
---------- ---------- ---------                                                 
         3                                                                      
Teaching                                                                        
Assistant Professor                                                             
     70000      10000 13-FEB-26                                                 
                                                                                

SQL> SELECT * FROM EMPLOYEE_ALIGNMENT;

EMPLOYEE_ID  SCHOOL_ID INJECTED_                                                
----------- ---------- ---------                                                
          1          1 13-FEB-26                                                
          2          1 13-FEB-26                                                
          3          2 13-FEB-26                                                
          4          3 13-FEB-26                                                

SQL> SELECT * FROM EMPLOYEE_PAY;

EMPLOYEE_ID     JOB_ID INJECTED_                                                
----------- ---------- ---------                                                
          1          1 13-FEB-26                                                
          2          2 13-FEB-26                                                
          3          1 13-FEB-26                                                
          4          3 13-FEB-26                                                

SQL> INSERT INTO SCHOOL VALUES (4, 'Civil Engineering', SYSDATE);

1 row created.

SQL> INSERT INTO SCHOOL VALUES (5, 'Information Technology', SYSDATE);

1 row created.

SQL> INSERT INTO SCHOOL VALUES (6, 'Electrical Engineering', SYSDATE);

1 row created.

SQL> INSERT INTO SCHOOL VALUES (7, 'Mathematics', SYSDATE);

1 row created.

SQL> INSERT INTO SCHOOL VALUES (8, 'Physics', SYSDATE);

1 row created.

SQL> INSERT INTO JOB VALUES (4, 'Teaching', 'Lecturer', 60000, 5000, SYSDATE);

1 row created.

SQL> INSERT INTO JOB VALUES (5, 'Teaching', 'Senior Professor', 150000, 30000, SYSDATE);

1 row created.

SQL> INSERT INTO JOB VALUES (6, 'Research', 'Research Associate', 80000, 10000, SYSDATE);

1 row created.

SQL> INSERT INTO JOB VALUES (7, 'Admin', 'Dean', 200000, NULL, SYSDATE);

1 row created.

SQL> INSERT INTO JOB VALUES (8, 'Admin', 'HOD', 130000, 15000, SYSDATE);

1 row created.

SQL> INSERT INTO EMPLOYEE VALUES
  2  (5, 'Kumar', 'Amit', NULL, 'Ramesh', 'Sunita', 'M',
  3   TO_DATE('2017-06-12','YYYY-MM-DD'),
  4   'Address5','Delhi','DL','110001','5555555555','105',
  5   1, SYSDATE);

1 row created.

SQL> 
SQL> INSERT INTO EMPLOYEE VALUES
  2  (6, 'Sharma', 'Priya', NULL, 'Mahesh', 'Rekha', 'F',
  3   TO_DATE('2016-07-20','YYYY-MM-DD'),
  4   'Address6','Mumbai','MH','400001','6666666666','106',
  5   5, SYSDATE);

1 row created.

SQL> 
SQL> INSERT INTO EMPLOYEE VALUES
  2  (7, 'Singh', 'Arjun', NULL, 'Dev', 'Pooja', 'M',
  3   TO_DATE('2022-08-10','YYYY-MM-DD'),
  4   'Address7','Chennai','TN','600001','7777777777','107',
  5   2, SYSDATE);

1 row created.

SQL> 
SQL> INSERT INTO EMPLOYEE VALUES
  2  (8, 'Patel', 'Neha', NULL, 'Raj', 'Anita', 'F',
  3   TO_DATE('2021-09-15','YYYY-MM-DD'),
  4   'Address8','Ahmedabad','GJ','380001','8888888888','108',
  5   3, SYSDATE);

1 row created.

SQL> 
SQL> INSERT INTO EMPLOYEE VALUES
  2  (9, 'Mehta', 'Rahul', NULL, 'Kiran', 'Lata', 'M',
  3   TO_DATE('2015-11-25','YYYY-MM-DD'),
  4   'Address9','Pune','MH','411001','9999999999','109',
  5   5, SYSDATE);

1 row created.

SQL> INSERT INTO EMPLOYEE_ALIGNMENT VALUES (5, 4, SYSDATE);

1 row created.

SQL> INSERT INTO EMPLOYEE_ALIGNMENT VALUES (6, 5, SYSDATE);

1 row created.

SQL> INSERT INTO EMPLOYEE_ALIGNMENT VALUES (7, 6, SYSDATE);

1 row created.

SQL> INSERT INTO EMPLOYEE_ALIGNMENT VALUES (8, 7, SYSDATE);

1 row created.

SQL> INSERT INTO EMPLOYEE_ALIGNMENT VALUES (9, 8, SYSDATE);

1 row created.

SQL> INSERT INTO EMPLOYEE_PAY VALUES (5, 5, SYSDATE);

1 row created.

SQL> INSERT INTO EMPLOYEE_PAY VALUES (6, 6, SYSDATE);

1 row created.

SQL> INSERT INTO EMPLOYEE_PAY VALUES (7, 4, SYSDATE);

1 row created.

SQL> INSERT INTO EMPLOYEE_PAY VALUES (8, 8, SYSDATE);

1 row created.

SQL> INSERT INTO EMPLOYEE_PAY VALUES (9, 7, SYSDATE);

1 row created.

SQL> SELECT * FROM EMPLOYEE;

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
         1 Smith                                                                

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
John                                                                            

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
                                                                                

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Robert                                                                          

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Mary                                                                            

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
M 10-JAN-18                                                                     

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Address1                                                                        

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Kolkata                                                                         

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
WB                                                 700001     1111111111        

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
101                           13-FEB-26                                         

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
                                                                                

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
         2 Brown                                                                

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
David                                                                           

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
                                                                                

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Thomas                                                                          

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Anna                                                                            

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
M 15-FEB-20                                                                     

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Address2                                                                        

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Kolkata                                                                         

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
WB                                                 700002     2222222222        

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
102                         1 13-FEB-26                                         

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
                                                                                

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
         3 Roy                                                                  

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Anita                                                                           

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
                                                                                

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Sanjay                                                                          

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Kavita                                                                          

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
F 20-MAR-19                                                                     

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Address3                                                                        

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Kolkata                                                                         

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
WB                                                 700003     3333333333        

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
103                         1 13-FEB-26                                         

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
                                                                                

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
         4 Das                                                                  

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Ravi                                                                            

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
                                                                                

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Hari                                                                            

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Lata                                                                            

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
M 01-MAY-23                                                                     

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Address4                                                                        

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Kolkata                                                                         

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
WB                                                 700004     4444444444        

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
104                         2 13-FEB-26                                         

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
                                                                                

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
         5 Kumar                                                                

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Amit                                                                            

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
                                                                                

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Ramesh                                                                          

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Sunita                                                                          

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
M 12-JUN-17                                                                     

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Address5                                                                        

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Delhi                                                                           

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
DL                                                 110001     5555555555        

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
105                         1 13-FEB-26                                         

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
                                                                                

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
         6 Sharma                                                               

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Priya                                                                           

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
                                                                                

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Mahesh                                                                          

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Rekha                                                                           

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
F 20-JUL-16                                                                     

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Address6                                                                        

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Mumbai                                                                          

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
MH                                                 400001     6666666666        

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
106                         5 13-FEB-26                                         

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
                                                                                

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
         7 Singh                                                                

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Arjun                                                                           

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
                                                                                

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Dev                                                                             

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Pooja                                                                           

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
M 10-AUG-22                                                                     

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Address7                                                                        

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Chennai                                                                         

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
TN                                                 600001     7777777777        

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
107                         2 13-FEB-26                                         

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
                                                                                

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
         8 Patel                                                                

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Neha                                                                            

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
                                                                                

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Raj                                                                             

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Anita                                                                           

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
F 15-SEP-21                                                                     

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Address8                                                                        

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Ahmedabad                                                                       

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
GJ                                                 380001     8888888888        

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
108                         3 13-FEB-26                                         

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
                                                                                

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
         9 Mehta                                                                

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Rahul                                                                           

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
                                                                                

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Kiran                                                                           

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Lata                                                                            

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
M 25-NOV-15                                                                     

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Address9                                                                        

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
Pune                                                                            

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
MH                                                 411001     9999999999        

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
109                         5 13-FEB-26                                         

        ID LAST_NAME                                                            
---------- --------------------------------------------------                   
FIRST_NAME                                                                      
--------------------------------------------------                              
MIDDLE_NAME                                                                     
--------------------------------------------------                              
FATHER_NAME                                                                     
--------------------------------------------------------------------------------
MOTHER_NAME                                                                     
--------------------------------------------------------------------------------
S HIRE_DATE                                                                     
- ---------                                                                     
ADDRESS                                                                         
--------------------------------------------------------------------------------
CITY                                                                            
--------------------------------------------------                              
STATE                                              ZIP        PHONE             
-------------------------------------------------- ---------- ---------------   
PAGER           SUPERVISOR_ID INJECTED_                                         
--------------- ------------- ---------                                         
                                                                                

9 rows selected.

SQL> SELECT * FROM SCHOOL;

        ID                                                                      
----------                                                                      
NAME                                                                            
--------------------------------------------------------------------------------
INJECTED_                                                                       
---------                                                                       
         1                                                                      
Computer Engineering                                                            
13-FEB-26                                                                       
                                                                                
         2                                                                      
Electronic Engineering                                                          
13-FEB-26                                                                       

        ID                                                                      
----------                                                                      
NAME                                                                            
--------------------------------------------------------------------------------
INJECTED_                                                                       
---------                                                                       
                                                                                
         3                                                                      
Mechanical Engineering                                                          
13-FEB-26                                                                       
                                                                                
         4                                                                      
Civil Engineering                                                               

        ID                                                                      
----------                                                                      
NAME                                                                            
--------------------------------------------------------------------------------
INJECTED_                                                                       
---------                                                                       
13-FEB-26                                                                       
                                                                                
         5                                                                      
Information Technology                                                          
13-FEB-26                                                                       
                                                                                
         6                                                                      

        ID                                                                      
----------                                                                      
NAME                                                                            
--------------------------------------------------------------------------------
INJECTED_                                                                       
---------                                                                       
Electrical Engineering                                                          
13-FEB-26                                                                       
                                                                                
         7                                                                      
Mathematics                                                                     
13-FEB-26                                                                       
                                                                                

        ID                                                                      
----------                                                                      
NAME                                                                            
--------------------------------------------------------------------------------
INJECTED_                                                                       
---------                                                                       
         8                                                                      
Physics                                                                         
13-FEB-26                                                                       
                                                                                

8 rows selected.

SQL> SELECT * FROM JOB;

        ID                                                                      
----------                                                                      
NAME                                                                            
--------------------------------------------------------------------------------
TITLE                                                                           
--------------------------------------------------------------------------------
    SALARY      BONUS INJECTED_                                                 
---------- ---------- ---------                                                 
         1                                                                      
Teaching                                                                        
Professor                                                                       
    120000      20000 13-FEB-26                                                 
                                                                                

        ID                                                                      
----------                                                                      
NAME                                                                            
--------------------------------------------------------------------------------
TITLE                                                                           
--------------------------------------------------------------------------------
    SALARY      BONUS INJECTED_                                                 
---------- ---------- ---------                                                 
         2                                                                      
Teaching                                                                        
Associate Professor                                                             
     90000            13-FEB-26                                                 
                                                                                

        ID                                                                      
----------                                                                      
NAME                                                                            
--------------------------------------------------------------------------------
TITLE                                                                           
--------------------------------------------------------------------------------
    SALARY      BONUS INJECTED_                                                 
---------- ---------- ---------                                                 
         3                                                                      
Teaching                                                                        
Assistant Professor                                                             
     70000      10000 13-FEB-26                                                 
                                                                                

        ID                                                                      
----------                                                                      
NAME                                                                            
--------------------------------------------------------------------------------
TITLE                                                                           
--------------------------------------------------------------------------------
    SALARY      BONUS INJECTED_                                                 
---------- ---------- ---------                                                 
         4                                                                      
Teaching                                                                        
Lecturer                                                                        
     60000       5000 13-FEB-26                                                 
                                                                                

        ID                                                                      
----------                                                                      
NAME                                                                            
--------------------------------------------------------------------------------
TITLE                                                                           
--------------------------------------------------------------------------------
    SALARY      BONUS INJECTED_                                                 
---------- ---------- ---------                                                 
         5                                                                      
Teaching                                                                        
Senior Professor                                                                
    150000      30000 13-FEB-26                                                 
                                                                                

        ID                                                                      
----------                                                                      
NAME                                                                            
--------------------------------------------------------------------------------
TITLE                                                                           
--------------------------------------------------------------------------------
    SALARY      BONUS INJECTED_                                                 
---------- ---------- ---------                                                 
         6                                                                      
Research                                                                        
Research Associate                                                              
     80000      10000 13-FEB-26                                                 
                                                                                

        ID                                                                      
----------                                                                      
NAME                                                                            
--------------------------------------------------------------------------------
TITLE                                                                           
--------------------------------------------------------------------------------
    SALARY      BONUS INJECTED_                                                 
---------- ---------- ---------                                                 
         7                                                                      
Admin                                                                           
Dean                                                                            
    200000            13-FEB-26                                                 
                                                                                

        ID                                                                      
----------                                                                      
NAME                                                                            
--------------------------------------------------------------------------------
TITLE                                                                           
--------------------------------------------------------------------------------
    SALARY      BONUS INJECTED_                                                 
---------- ---------- ---------                                                 
         8                                                                      
Admin                                                                           
HOD                                                                             
    130000      15000 13-FEB-26                                                 
                                                                                

8 rows selected.

SQL> SELECT * FROM EMPLOYEE_ALIGNMENT;

EMPLOYEE_ID  SCHOOL_ID INJECTED_                                                
----------- ---------- ---------                                                
          1          1 13-FEB-26                                                
          2          1 13-FEB-26                                                
          3          2 13-FEB-26                                                
          4          3 13-FEB-26                                                
          5          4 13-FEB-26                                                
          6          5 13-FEB-26                                                
          7          6 13-FEB-26                                                
          8          7 13-FEB-26                                                
          9          8 13-FEB-26                                                

9 rows selected.

SQL> SELECT * FROM EMPLOYEE_PAY;

EMPLOYEE_ID     JOB_ID INJECTED_                                                
----------- ---------- ---------                                                
          1          1 13-FEB-26                                                
          2          2 13-FEB-26                                                
          3          1 13-FEB-26                                                
          4          3 13-FEB-26                                                
          5          5 13-FEB-26                                                
          6          6 13-FEB-26                                                
          7          4 13-FEB-26                                                
          8          8 13-FEB-26                                                
          9          7 13-FEB-26                                                

9 rows selected.

SQL> SELECT e.FIRST_NAME || ' ' || e.LAST_NAME AS FULL_NAME,
  2         s.NAME AS SCHOOL_NAME
  3  FROM EMPLOYEE e
  4  JOIN EMPLOYEE_ALIGNMENT ea ON e.ID = ea.EMPLOYEE_ID
  5  JOIN SCHOOL s ON ea.SCHOOL_ID = s.ID;

FULL_NAME                                                                       
--------------------------------------------------------------------------------
SCHOOL_NAME                                                                     
--------------------------------------------------------------------------------
John Smith                                                                      
Computer Engineering                                                            
                                                                                
David Brown                                                                     
Computer Engineering                                                            
                                                                                
Anita Roy                                                                       
Electronic Engineering                                                          
                                                                                

FULL_NAME                                                                       
--------------------------------------------------------------------------------
SCHOOL_NAME                                                                     
--------------------------------------------------------------------------------
Ravi Das                                                                        
Mechanical Engineering                                                          
                                                                                
Amit Kumar                                                                      
Civil Engineering                                                               
                                                                                
Priya Sharma                                                                    
Information Technology                                                          
                                                                                

FULL_NAME                                                                       
--------------------------------------------------------------------------------
SCHOOL_NAME                                                                     
--------------------------------------------------------------------------------
Arjun Singh                                                                     
Electrical Engineering                                                          
                                                                                
Neha Patel                                                                      
Mathematics                                                                     
                                                                                
Rahul Mehta                                                                     
Physics                                                                         
                                                                                

9 rows selected.

SQL> SELECT e.FIRST_NAME || ' ' || e.LAST_NAME AS FULL_NAME,
  2         j.TITLE,
  3         j.SALARY
  4  FROM EMPLOYEE e
  5  JOIN EMPLOYEE_PAY ep ON e.ID = ep.EMPLOYEE_ID
  6  JOIN JOB j ON ep.JOB_ID = j.ID;

FULL_NAME                                                                       
--------------------------------------------------------------------------------
TITLE                                                                           
--------------------------------------------------------------------------------
    SALARY                                                                      
----------                                                                      
John Smith                                                                      
Professor                                                                       
    120000                                                                      
                                                                                
Anita Roy                                                                       
Professor                                                                       
    120000                                                                      

FULL_NAME                                                                       
--------------------------------------------------------------------------------
TITLE                                                                           
--------------------------------------------------------------------------------
    SALARY                                                                      
----------                                                                      
                                                                                
David Brown                                                                     
Associate Professor                                                             
     90000                                                                      
                                                                                
Ravi Das                                                                        
Assistant Professor                                                             

FULL_NAME                                                                       
--------------------------------------------------------------------------------
TITLE                                                                           
--------------------------------------------------------------------------------
    SALARY                                                                      
----------                                                                      
     70000                                                                      
                                                                                
Arjun Singh                                                                     
Lecturer                                                                        
     60000                                                                      
                                                                                
Amit Kumar                                                                      

FULL_NAME                                                                       
--------------------------------------------------------------------------------
TITLE                                                                           
--------------------------------------------------------------------------------
    SALARY                                                                      
----------                                                                      
Senior Professor                                                                
    150000                                                                      
                                                                                
Priya Sharma                                                                    
Research Associate                                                              
     80000                                                                      
                                                                                

FULL_NAME                                                                       
--------------------------------------------------------------------------------
TITLE                                                                           
--------------------------------------------------------------------------------
    SALARY                                                                      
----------                                                                      
Rahul Mehta                                                                     
Dean                                                                            
    200000                                                                      
                                                                                
Neha Patel                                                                      
HOD                                                                             
    130000                                                                      

FULL_NAME                                                                       
--------------------------------------------------------------------------------
TITLE                                                                           
--------------------------------------------------------------------------------
    SALARY                                                                      
----------                                                                      
                                                                                

9 rows selected.

SQL> SELECT e.FIRST_NAME || ' ' || e.LAST_NAME AS FULL_NAME,
  2         j.NAME,
  3         j.TITLE,
  4         (j.SALARY + j.BONUS) AS TOTAL_SALARY
  5  FROM EMPLOYEE e
  6  JOIN EMPLOYEE_PAY ep ON e.ID = ep.EMPLOYEE_ID
  7  JOIN JOB j ON ep.JOB_ID = j.ID
  8  WHERE j.BONUS IS NOT NULL;

FULL_NAME                                                                       
--------------------------------------------------------------------------------
NAME                                                                            
--------------------------------------------------------------------------------
TITLE                                                                           
--------------------------------------------------------------------------------
TOTAL_SALARY                                                                    
------------                                                                    
John Smith                                                                      
Teaching                                                                        
Professor                                                                       
      140000                                                                    
                                                                                

FULL_NAME                                                                       
--------------------------------------------------------------------------------
NAME                                                                            
--------------------------------------------------------------------------------
TITLE                                                                           
--------------------------------------------------------------------------------
TOTAL_SALARY                                                                    
------------                                                                    
Anita Roy                                                                       
Teaching                                                                        
Professor                                                                       
      140000                                                                    
                                                                                

FULL_NAME                                                                       
--------------------------------------------------------------------------------
NAME                                                                            
--------------------------------------------------------------------------------
TITLE                                                                           
--------------------------------------------------------------------------------
TOTAL_SALARY                                                                    
------------                                                                    
Ravi Das                                                                        
Teaching                                                                        
Assistant Professor                                                             
       80000                                                                    
                                                                                

FULL_NAME                                                                       
--------------------------------------------------------------------------------
NAME                                                                            
--------------------------------------------------------------------------------
TITLE                                                                           
--------------------------------------------------------------------------------
TOTAL_SALARY                                                                    
------------                                                                    
Arjun Singh                                                                     
Teaching                                                                        
Lecturer                                                                        
       65000                                                                    
                                                                                

FULL_NAME                                                                       
--------------------------------------------------------------------------------
NAME                                                                            
--------------------------------------------------------------------------------
TITLE                                                                           
--------------------------------------------------------------------------------
TOTAL_SALARY                                                                    
------------                                                                    
Amit Kumar                                                                      
Teaching                                                                        
Senior Professor                                                                
      180000                                                                    
                                                                                

FULL_NAME                                                                       
--------------------------------------------------------------------------------
NAME                                                                            
--------------------------------------------------------------------------------
TITLE                                                                           
--------------------------------------------------------------------------------
TOTAL_SALARY                                                                    
------------                                                                    
Priya Sharma                                                                    
Research                                                                        
Research Associate                                                              
       90000                                                                    
                                                                                

FULL_NAME                                                                       
--------------------------------------------------------------------------------
NAME                                                                            
--------------------------------------------------------------------------------
TITLE                                                                           
--------------------------------------------------------------------------------
TOTAL_SALARY                                                                    
------------                                                                    
Neha Patel                                                                      
Admin                                                                           
HOD                                                                             
      145000                                                                    
                                                                                

7 rows selected.

SQL> SELECT DISTINCT s.FIRST_NAME || ' ' || s.LAST_NAME AS SUPERVISOR_NAME
  2  FROM EMPLOYEE e
  3  JOIN EMPLOYEE s ON e.SUPERVISOR_ID = s.ID;

SUPERVISOR_NAME                                                                 
--------------------------------------------------------------------------------
John Smith                                                                      
Amit Kumar                                                                      
Anita Roy                                                                       
David Brown                                                                     

SQL> SELECT s.ID,
  2         s.FIRST_NAME || ' ' || s.LAST_NAME AS SUPERVISOR_NAME,
  3         COUNT(e.ID) AS NO_OF_SUPERVISEE
  4  FROM EMPLOYEE s
  5  JOIN EMPLOYEE e ON s.ID = e.SUPERVISOR_ID
  6  GROUP BY s.ID, s.FIRST_NAME, s.LAST_NAME;

        ID                                                                      
----------                                                                      
SUPERVISOR_NAME                                                                 
--------------------------------------------------------------------------------
NO_OF_SUPERVISEE                                                                
----------------                                                                
         3                                                                      
Anita Roy                                                                       
               1                                                                
                                                                                
         1                                                                      
John Smith                                                                      
               3                                                                

        ID                                                                      
----------                                                                      
SUPERVISOR_NAME                                                                 
--------------------------------------------------------------------------------
NO_OF_SUPERVISEE                                                                
----------------                                                                
                                                                                
         2                                                                      
David Brown                                                                     
               2                                                                
                                                                                
         5                                                                      
Amit Kumar                                                                      

        ID                                                                      
----------                                                                      
SUPERVISOR_NAME                                                                 
--------------------------------------------------------------------------------
NO_OF_SUPERVISEE                                                                
----------------                                                                
               2                                                                
                                                                                

SQL> SELECT sc.NAME AS SCHOOL_NAME,
  2         s.ID AS SUPERVISOR_ID,
  3         s.FIRST_NAME || ' ' || s.LAST_NAME AS SUPERVISOR_NAME,
  4         COUNT(e.ID) AS NO_OF_SUPERVISEE
  5  FROM EMPLOYEE s
  6  JOIN EMPLOYEE e ON s.ID = e.SUPERVISOR_ID
  7  JOIN EMPLOYEE_ALIGNMENT ea ON e.ID = ea.EMPLOYEE_ID
  8  JOIN SCHOOL sc ON ea.SCHOOL_ID = sc.ID
  9  GROUP BY sc.NAME, s.ID, s.FIRST_NAME, s.LAST_NAME;

SCHOOL_NAME                                                                     
--------------------------------------------------------------------------------
SUPERVISOR_ID                                                                   
-------------                                                                   
SUPERVISOR_NAME                                                                 
--------------------------------------------------------------------------------
NO_OF_SUPERVISEE                                                                
----------------                                                                
Electronic Engineering                                                          
            1                                                                   
John Smith                                                                      
               1                                                                
                                                                                

SCHOOL_NAME                                                                     
--------------------------------------------------------------------------------
SUPERVISOR_ID                                                                   
-------------                                                                   
SUPERVISOR_NAME                                                                 
--------------------------------------------------------------------------------
NO_OF_SUPERVISEE                                                                
----------------                                                                
Computer Engineering                                                            
            1                                                                   
John Smith                                                                      
               1                                                                
                                                                                

SCHOOL_NAME                                                                     
--------------------------------------------------------------------------------
SUPERVISOR_ID                                                                   
-------------                                                                   
SUPERVISOR_NAME                                                                 
--------------------------------------------------------------------------------
NO_OF_SUPERVISEE                                                                
----------------                                                                
Electrical Engineering                                                          
            2                                                                   
David Brown                                                                     
               1                                                                
                                                                                

SCHOOL_NAME                                                                     
--------------------------------------------------------------------------------
SUPERVISOR_ID                                                                   
-------------                                                                   
SUPERVISOR_NAME                                                                 
--------------------------------------------------------------------------------
NO_OF_SUPERVISEE                                                                
----------------                                                                
Information Technology                                                          
            5                                                                   
Amit Kumar                                                                      
               1                                                                
                                                                                

SCHOOL_NAME                                                                     
--------------------------------------------------------------------------------
SUPERVISOR_ID                                                                   
-------------                                                                   
SUPERVISOR_NAME                                                                 
--------------------------------------------------------------------------------
NO_OF_SUPERVISEE                                                                
----------------                                                                
Civil Engineering                                                               
            1                                                                   
John Smith                                                                      
               1                                                                
                                                                                

SCHOOL_NAME                                                                     
--------------------------------------------------------------------------------
SUPERVISOR_ID                                                                   
-------------                                                                   
SUPERVISOR_NAME                                                                 
--------------------------------------------------------------------------------
NO_OF_SUPERVISEE                                                                
----------------                                                                
Physics                                                                         
            5                                                                   
Amit Kumar                                                                      
               1                                                                
                                                                                

SCHOOL_NAME                                                                     
--------------------------------------------------------------------------------
SUPERVISOR_ID                                                                   
-------------                                                                   
SUPERVISOR_NAME                                                                 
--------------------------------------------------------------------------------
NO_OF_SUPERVISEE                                                                
----------------                                                                
Mechanical Engineering                                                          
            2                                                                   
David Brown                                                                     
               1                                                                
                                                                                

SCHOOL_NAME                                                                     
--------------------------------------------------------------------------------
SUPERVISOR_ID                                                                   
-------------                                                                   
SUPERVISOR_NAME                                                                 
--------------------------------------------------------------------------------
NO_OF_SUPERVISEE                                                                
----------------                                                                
Mathematics                                                                     
            3                                                                   
Anita Roy                                                                       
               1                                                                
                                                                                

8 rows selected.

SQL> SELECT e.FIRST_NAME || ' ' || e.LAST_NAME AS FULL_NAME
  2  FROM EMPLOYEE e
  3  JOIN EMPLOYEE_PAY ep ON e.ID = ep.EMPLOYEE_ID
  4  JOIN JOB j ON ep.JOB_ID = j.ID
  5  JOIN EMPLOYEE_ALIGNMENT ea ON e.ID = ea.EMPLOYEE_ID
  6  JOIN SCHOOL s ON ea.SCHOOL_ID = s.ID
  7  WHERE j.TITLE = 'Associate Professor'
  8  AND s.NAME IN ('Computer Engineering','Electronic Engineering');

FULL_NAME                                                                       
--------------------------------------------------------------------------------
David Brown                                                                     

SQL> SELECT e.FIRST_NAME || ' ' || e.LAST_NAME AS FULL_NAME
  2  FROM EMPLOYEE e
  3  JOIN EMPLOYEE_PAY ep ON e.ID = ep.EMPLOYEE_ID
  4  JOIN JOB j ON ep.JOB_ID = j.ID
  5  JOIN EMPLOYEE_ALIGNMENT ea ON e.ID = ea.EMPLOYEE_ID
  6  JOIN SCHOOL s ON ea.SCHOOL_ID = s.ID
  7  WHERE j.TITLE = 'Professor'
  8  AND j.BONUS IS NULL
  9  AND s.NAME IN ('Computer Engineering','Mechanical Engineering');

no rows selected

SQL> SELECT s.NAME AS SCHOOL_NAME,
  2         j.TITLE,
  3         AVG(j.SALARY) AS AVG_SALARY,
  4         COUNT(e.ID) AS NO_OF_EMPLOYEES
  5  FROM EMPLOYEE e
  6  JOIN EMPLOYEE_PAY ep ON e.ID = ep.EMPLOYEE_ID
  7  JOIN JOB j ON ep.JOB_ID = j.ID
  8  JOIN EMPLOYEE_ALIGNMENT ea ON e.ID = ea.EMPLOYEE_ID
  9  JOIN SCHOOL s ON ea.SCHOOL_ID = s.ID
 10  GROUP BY s.NAME, j.TITLE;

SCHOOL_NAME                                                                     
--------------------------------------------------------------------------------
TITLE                                                                           
--------------------------------------------------------------------------------
AVG_SALARY NO_OF_EMPLOYEES                                                      
---------- ---------------                                                      
Electrical Engineering                                                          
Lecturer                                                                        
     60000               1                                                      
                                                                                
Civil Engineering                                                               
Senior Professor                                                                
    150000               1                                                      

SCHOOL_NAME                                                                     
--------------------------------------------------------------------------------
TITLE                                                                           
--------------------------------------------------------------------------------
AVG_SALARY NO_OF_EMPLOYEES                                                      
---------- ---------------                                                      
                                                                                
Mathematics                                                                     
HOD                                                                             
    130000               1                                                      
                                                                                
Mechanical Engineering                                                          
Assistant Professor                                                             

SCHOOL_NAME                                                                     
--------------------------------------------------------------------------------
TITLE                                                                           
--------------------------------------------------------------------------------
AVG_SALARY NO_OF_EMPLOYEES                                                      
---------- ---------------                                                      
     70000               1                                                      
                                                                                
Electronic Engineering                                                          
Professor                                                                       
    120000               1                                                      
                                                                                
Computer Engineering                                                            

SCHOOL_NAME                                                                     
--------------------------------------------------------------------------------
TITLE                                                                           
--------------------------------------------------------------------------------
AVG_SALARY NO_OF_EMPLOYEES                                                      
---------- ---------------                                                      
Professor                                                                       
    120000               1                                                      
                                                                                
Information Technology                                                          
Research Associate                                                              
     80000               1                                                      
                                                                                

SCHOOL_NAME                                                                     
--------------------------------------------------------------------------------
TITLE                                                                           
--------------------------------------------------------------------------------
AVG_SALARY NO_OF_EMPLOYEES                                                      
---------- ---------------                                                      
Physics                                                                         
Dean                                                                            
    200000               1                                                      
                                                                                
Computer Engineering                                                            
Associate Professor                                                             
     90000               1                                                      

SCHOOL_NAME                                                                     
--------------------------------------------------------------------------------
TITLE                                                                           
--------------------------------------------------------------------------------
AVG_SALARY NO_OF_EMPLOYEES                                                      
---------- ---------------                                                      
                                                                                

9 rows selected.

SQL> SELECT DISTINCT e2.FIRST_NAME || ' ' || e2.LAST_NAME AS EMPLOYEE_NAME
  2  FROM EMPLOYEE e1
  3  JOIN EMPLOYEE_ALIGNMENT ea1 ON e1.ID = ea1.EMPLOYEE_ID
  4  JOIN EMPLOYEE_ALIGNMENT ea2 ON ea1.SCHOOL_ID = ea2.SCHOOL_ID
  5  JOIN EMPLOYEE e2 ON ea2.EMPLOYEE_ID = e2.ID
  6  WHERE e1.FIRST_NAME = 'John'
  7  AND e1.LAST_NAME = 'Smith'
  8  AND e1.ID <> e2.ID;

EMPLOYEE_NAME                                                                   
--------------------------------------------------------------------------------
David Brown                                                                     

SQL> SELECT j.TITLE,
  2         COUNT(e.ID) AS NO_OF_EMPLOYEES
  3  FROM EMPLOYEE e
  4  JOIN EMPLOYEE_PAY ep ON e.ID = ep.EMPLOYEE_ID
  5  JOIN JOB j ON ep.JOB_ID = j.ID
  6  JOIN EMPLOYEE_ALIGNMENT ea ON e.ID = ea.EMPLOYEE_ID
  7  JOIN SCHOOL s ON ea.SCHOOL_ID = s.ID
  8  WHERE (j.SALARY + NVL(j.BONUS,0)) > 100000
  9  AND s.NAME <> 'Computer Engineering'
 10  GROUP BY j.TITLE;

TITLE                                                                           
--------------------------------------------------------------------------------
NO_OF_EMPLOYEES                                                                 
---------------                                                                 
Professor                                                                       
              1                                                                 
                                                                                
Dean                                                                            
              1                                                                 
                                                                                
HOD                                                                             
              1                                                                 
                                                                                

TITLE                                                                           
--------------------------------------------------------------------------------
NO_OF_EMPLOYEES                                                                 
---------------                                                                 
Senior Professor                                                                
              1                                                                 
                                                                                

SQL> SELECT COUNT(*)
  2  FROM (
  3      SELECT EMPLOYEE_ID
  4      FROM EMPLOYEE_ALIGNMENT
  5      GROUP BY EMPLOYEE_ID
  6      HAVING COUNT(SCHOOL_ID) > 1
  7  );

  COUNT(*)                                                                      
----------                                                                      
         0                                                                      

SQL> SELECT s.NAME,
  2         COUNT(e.ID) AS EMP_COUNT
  3  FROM EMPLOYEE e
  4  JOIN EMPLOYEE_ALIGNMENT ea ON e.ID = ea.EMPLOYEE_ID
  5  JOIN SCHOOL s ON ea.SCHOOL_ID = s.ID
  6  WHERE EXTRACT(YEAR FROM e.HIRE_DATE) = EXTRACT(YEAR FROM SYSDATE) - 1
  7  GROUP BY s.NAME;

no rows selected

SQL> SELECT s.NAME,
  2         COUNT(e.ID) AS PROFESSOR_COUNT
  3  FROM EMPLOYEE e
  4  JOIN EMPLOYEE_PAY ep ON e.ID = ep.EMPLOYEE_ID
  5  JOIN JOB j ON ep.JOB_ID = j.ID
  6  JOIN EMPLOYEE_ALIGNMENT ea ON e.ID = ea.EMPLOYEE_ID
  7  JOIN SCHOOL s ON ea.SCHOOL_ID = s.ID
  8  WHERE j.TITLE = 'Professor'
  9  AND e.HIRE_DATE >= ADD_MONTHS(TRUNC(SYSDATE,'MM'), -1)
 10  AND e.HIRE_DATE < TRUNC(SYSDATE,'MM')
 11  GROUP BY s.NAME;

no rows selected

SQL> SELECT s.NAME,
  2         e.FIRST_NAME || ' ' || e.LAST_NAME AS FULL_NAME
  3  FROM EMPLOYEE e
  4  JOIN EMPLOYEE_PAY ep ON e.ID = ep.EMPLOYEE_ID
  5  JOIN JOB j ON ep.JOB_ID = j.ID
  6  JOIN EMPLOYEE_ALIGNMENT ea ON e.ID = ea.EMPLOYEE_ID
  7  JOIN SCHOOL s ON ea.SCHOOL_ID = s.ID
  8  WHERE j.TITLE IN ('Professor','Associate Professor')
  9  AND MONTHS_BETWEEN(SYSDATE, e.HIRE_DATE)/12 > 4;

NAME                                                                            
--------------------------------------------------------------------------------
FULL_NAME                                                                       
--------------------------------------------------------------------------------
Computer Engineering                                                            
John Smith                                                                      
                                                                                
Electronic Engineering                                                          
Anita Roy                                                                       
                                                                                
Computer Engineering                                                            
David Brown                                                                     
                                                                                

SQL> spool off
