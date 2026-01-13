SQL> CREATE TABLE EMPLOYEE (
  2      EMPID INT PRIMARY KEY,
  3      FIRST_NAME VARCHAR(20),
  4      LAST_NAME VARCHAR(20),
  5      SALARY INT,
  6      BONUS INT
  7  );

Table created.

SQL> INSERT INTO EMPLOYEE VALUES (1, 'Amit', 'Sharma', 45000, 5000);

1 row created.

SQL> INSERT INTO EMPLOYEE VALUES (2, 'Neha', 'Verma', 52000, 6000);

1 row created.

SQL> INSERT INTO EMPLOYEE VALUES (3, 'Rohit', 'Gupta', 60000, 7000);

1 row created.

SQL> INSERT INTO EMPLOYEE VALUES (4, 'Priya', 'Singh', 48000, 5500);

1 row created.

SQL> INSERT INTO EMPLOYEE VALUES (5, 'Ankit', 'Mehta', 70000, 8000);

1 row created.

SQL> INSERT INTO EMPLOYEE VALUES (6, 'Kavya', 'Iyer', 55000, 6500);

1 row created.

SQL> INSERT INTO EMPLOYEE VALUES (7, 'Suresh', 'Rao', 62000, 7200);

1 row created.

SQL> INSERT INTO EMPLOYEE VALUES (8, 'Pooja', 'Nair', 50000, 5800);

1 row created.

SQL> INSERT INTO EMPLOYEE VALUES (9, 'Vikas', 'Malik', 58000, 6900);

1 row created.

SQL> INSERT INTO EMPLOYEE VALUES (10, 'Rina', 'Das', 47000, 5400);

1 row created.

SQL> INSERT INTO EMPLOYEE VALUES (11, 'Arjun', 'Gandhi', 61000, 7000);

1 row created.

SQL> INSERT INTO EMPLOYEE VALUES (12, 'Sneha', 'Goyal', 54000, 6200);

1 row created.

SQL> INSERT INTO EMPLOYEE VALUES (13, 'Manoj', 'Gupta', 68000, 7800);

1 row created.

SQL> INSERT INTO EMPLOYEE VALUES (14, 'Ritu', 'Goenka', 59000, 6600);

1 row created.

SQL> INSERT INTO EMPLOYEE VALUES (15, 'Karan', 'Gill', 72000, 8200);

1 row created.

SQL> SELECT * FROM;
SELECT * FROM
            *
ERROR at line 1:
ORA-00903: invalid table name 


SQL> SELECT * FORM;
SELECT * FORM
         *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> SELECT * FORM EMPLOYEE;
SELECT * FORM EMPLOYEE
         *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> SELECT * FORM EMPLOYEE;
SELECT * FORM EMPLOYEE
         *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> SELECT * FROM EMPLOYEE;

     EMPID FIRST_NAME           LAST_NAME                SALARY      BONUS      
---------- -------------------- -------------------- ---------- ----------      
         1 Amit                 Sharma                    45000       5000      
         2 Neha                 Verma                     52000       6000      
         3 Rohit                Gupta                     60000       7000      
         4 Priya                Singh                     48000       5500      
         5 Ankit                Mehta                     70000       8000      
         6 Kavya                Iyer                      55000       6500      
         7 Suresh               Rao                       62000       7200      
         8 Pooja                Nair                      50000       5800      
         9 Vikas                Malik                     58000       6900      
        10 Rina                 Das                       47000       5400      
        11 Arjun                Gandhi                    61000       7000      

     EMPID FIRST_NAME           LAST_NAME                SALARY      BONUS      
---------- -------------------- -------------------- ---------- ----------      
        12 Sneha                Goyal                     54000       6200      
        13 Manoj                Gupta                     68000       7800      
        14 Ritu                 Goenka                    59000       6600      
        15 Karan                Gill                      72000       8200      

15 rows selected.

SQL> SELECT AVG(SALARY) FROM EMPLOYEE;

AVG(SALARY)                                                                     
-----------                                                                     
      57400                                                                     

SQL> SELECT MAX(BONUS) FROM EMPLOYEE;

MAX(BONUS)                                                                      
----------                                                                      
      8200                                                                      

SQL> SELECT SUM(SALARY) FROM EMPLOYEE;

SUM(SALARY)                                                                     
-----------                                                                     
     861000                                                                     

SQL> SELECT MIN(SALARY) FROM EMPLOYEE;

MIN(SALARY)                                                                     
-----------                                                                     
      45000                                                                     

SQL> SELECT ROWS(*) FROM EMPLOYEE;
SELECT ROWS(*) FROM EMPLOYEE
       *
ERROR at line 1:
ORA-00936: missing expression 


SQL> SELECT ROW(*) FROM EMPLOYEE;
SELECT ROW(*) FROM EMPLOYEE
       *
ERROR at line 1:
ORA-00936: missing expression 


SQL> SELECT COUNT(*) FROM EMPLOYEE;

  COUNT(*)                                                                      
----------                                                                      
        15                                                                      

SQL> SELECT COUNT(*)
  2  FROM EMPLOYEE
  3  WHERE LAST_NAME LIKE 'G%';

  COUNT(*)                                                                      
----------                                                                      
         6                                                                      

SQL> SELECT COUNT(*)
  2  FROM EMPLOYEE
  3  WHERE SALARY > (SELECT AVG(SALARY) FROM EMPLOYEE);

  COUNT(*)                                                                      
----------                                                                      
         8                                                                      

SQL> SELECT AVG(SALARY)
  2  FROM EMPLOYEE
  3  WHERE LAST_NAME = 'Gupta';

AVG(SALARY)                                                                     
-----------                                                                     
      64000                                                                     

SQL> SPOOL OFF;
