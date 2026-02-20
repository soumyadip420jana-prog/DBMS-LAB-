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
 17      INJECTED_DATE DATE,
 18  
SQL>     CONSTRAINT FK_SUPERVISOR
SP2-0734: unknown command beginning "CONSTRAINT..." - rest of line ignored.
SQL>     FOREIGN KEY (SUPERVISOR_ID)
SP2-0734: unknown command beginning "FOREIGN KE..." - rest of line ignored.
SQL>     REFERENCES EMPLOYEE(ID)
SP2-0734: unknown command beginning "REFERENCES..." - rest of line ignored.
SQL> );CREATE TABLE EMPLOYEE (
SP2-0734: unknown command beginning ");CREATE T..." - rest of line ignored.
SP2-0044: For a list of known commands enter HELP
and to leave enter EXIT.
SQL>     ID NUMBER PRIMARY KEY,
SP2-0734: unknown command beginning "ID NUMBER ..." - rest of line ignored.
SQL>     LAST_NAME VARCHAR2(50),
SP2-0734: unknown command beginning "LAST_NAME ..." - rest of line ignored.
SQL>     FIRST_NAME VARCHAR2(50),
SP2-0734: unknown command beginning "FIRST_NAME..." - rest of line ignored.
SQL>     MIDDLE_NAME VARCHAR2(50),
SP2-0734: unknown command beginning "MIDDLE_NAM..." - rest of line ignored.
SP2-0044: For a list of known commands enter HELP
and to leave enter EXIT.
SQL>     FATHER_NAME VARCHAR2(100),
SP2-0734: unknown command beginning "FATHER_NAM..." - rest of line ignored.
SQL>     MOTHER_NAME VARCHAR2(100),
SP2-0734: unknown command beginning "MOTHER_NAM..." - rest of line ignored.
SQL>     SEX CHAR(1),
SP2-0734: unknown command beginning "SEX CHAR(1..." - rest of line ignored.
SQL>     HIRE_DATE DATE,
SP2-0734: unknown command beginning "HIRE_DATE ..." - rest of line ignored.
SP2-0044: For a list of known commands enter HELP
and to leave enter EXIT.
SQL>     ADDRESS VARCHAR2(200),
SP2-0734: unknown command beginning "ADDRESS VA..." - rest of line ignored.
SQL>     CITY VARCHAR2(50),
SP2-0734: unknown command beginning "CITY VARCH..." - rest of line ignored.
SQL>     STATE VARCHAR2(50),
SP2-0734: unknown command beginning "STATE VARC..." - rest of line ignored.
SQL>     ZIP VARCHAR2(10),
SP2-0734: unknown command beginning "ZIP VARCHA..." - rest of line ignored.
SP2-0044: For a list of known commands enter HELP
and to leave enter EXIT.
SQL>     PHONE VARCHAR2(15),
SP2-0734: unknown command beginning "PHONE VARC..." - rest of line ignored.
SQL>     PAGER VARCHAR2(15),
SP2-0734: unknown command beginning "PAGER VARC..." - rest of line ignored.
SQL>     SUPERVISOR_ID NUMBER,
SP2-0734: unknown command beginning "SUPERVISOR..." - rest of line ignored.
SQL>     INJECTED_DATE DATE,
SP2-0734: unknown command beginning "INJECTED_D..." - rest of line ignored.
SP2-0044: For a list of known commands enter HELP
and to leave enter EXIT.
SQL>     CONSTRAINT FK_SUPERVISOR
SP2-0734: unknown command beginning "CONSTRAINT..." - rest of line ignored.
SQL>         FOREIGN KEY (SUPERVISOR_ID)
SP2-0734: unknown command beginning "FOREIGN KE..." - rest of line ignored.
SQL>         REFERENCES EMPLOYEE(ID)
SP2-0734: unknown command beginning "REFERENCES..." - rest of line ignored.
SQL> );ALTER TABLE EMPLOYEE
SP2-0734: unknown command beginning ");ALTER TA..." - rest of line ignored.
SP2-0044: For a list of known commands enter HELP
and to leave enter EXIT.
SQL> );ALTER TABLE EMPLOYEE
SP2-0734: unknown command beginning ");ALTER TA..." - rest of line ignored.
SQL> ALTER TABLE EMPLOYEE
  2  ADD CONSTRAINT FK_SUPERVISOR
  3  FOREIGN KEY (SUPERVISOR_ID)
  4  REFERENCES EMPLOYEE(ID);
FOREIGN KEY (SUPERVISOR_ID)
*
ERROR at line 3:
ORA-02275: such a referential constraint already exists in the table 


SQL> CREATE TABLE EMPLOYEE (
  2      ID INT PRIMARY KEY,
  3      LAST_NAME VARCHAR(50),
  4      FIRST_NAME VARCHAR(50),
  5      MIDDLE_NAME VARCHAR(50),
  6      FATHER_NAME VARCHAR(50),
  7      MOTHER_NAME VARCHAR(50),
  8      SEX CHAR(1),
  9      HIRE_DATE DATE,
 10      ADDRESS VARCHAR(100),
 11      CITY VARCHAR(50),
 12      STATE VARCHAR(50),
 13      ZIP VARCHAR(10),
 14      PHONE VARCHAR(15),
 15      PAGER VARCHAR(15),
 16      SUPERVISOR_ID INT,
 17      INJECTED_DATE DATE,
 18      FOREIGN KEY (SUPERVISOR_ID) REFERENCES EMPLOYEE(ID)
 19  );
CREATE TABLE EMPLOYEE (
             *
ERROR at line 1:
ORA-00955: name is already used by an existing object 


SQL> DROP TABLE IF EXISTS EMPLOYEE_PAY;
DROP TABLE IF EXISTS EMPLOYEE_PAY
              *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> DROP TABLE IF EXISTS EMPLOYEE_ALIGNMENT;
DROP TABLE IF EXISTS EMPLOYEE_ALIGNMENT
              *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> DROP TABLE IF EXISTS JOB;
DROP TABLE IF EXISTS JOB
              *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> DROP TABLE IF EXISTS SCHOOL;
DROP TABLE IF EXISTS SCHOOL
              *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> DROP TABLE IF EXISTS EMPLOYEE;
DROP TABLE IF EXISTS EMPLOYEE
              *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> DROP TABLE EMPLOYEE_PAY CASCADE CONSTRAINTS;

Table dropped.

SQL> DROP TABLE EMPLOYEE_ALIGNMENT CASCADE CONSTRAINTS;

Table dropped.

SQL> DROP TABLE JOB CASCADE CONSTRAINTS;

Table dropped.

SQL> DROP TABLE SCHOOL CASCADE CONSTRAINTS;

Table dropped.

SQL> DROP TABLE EMPLOYEE CASCADE CONSTRAINTS;

Table dropped.

SQL> spool off;
