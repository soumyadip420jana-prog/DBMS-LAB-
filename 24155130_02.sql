SQL> CREATE TABLE Employee (
  2      EmpID        NUMBER(5),
  3      EmpName      VARCHAR2(30),
  4      Gender       CHAR(1),
  5      Salary       NUMBER(10,2),
  6      Dept         VARCHAR2(20),
  7      JoiningDate  DATE
  8  );

Table created.

SQL> INSERT INTO Employee VALUES (101, 'Rahul Sharma', 'M', 45000, 'IT', DATE '2023-01-15');

1 row created.

SQL> INSERT INTO Employee VALUES (102, 'Priya Verma', 'F', 48000, 'HR', DATE '2023-02-10');

1 row created.

SQL> INSERT INTO Employee VALUES (103, 'Amit Kumar', 'M', 52000, 'Finance', DATE '2022-11-20');

1 row created.

SQL> INSERT INTO Employee VALUES (104, 'Neha Singh', 'F', 47000, 'Marketing', DATE '2023-03-05');

1 row created.

SQL> INSERT INTO Employee VALUES (105, 'Rohit Das', 'M', 60000, 'IT', DATE '2021-08-12');

1 row created.

SQL> INSERT INTO Employee VALUES (106, 'Anjali Roy', 'F', 55000, 'HR', DATE '2022-06-18');

1 row created.

SQL> INSERT INTO Employee VALUES (107, 'Sourav Paul', 'M', 49000, 'Sales', DATE '2023-04-01');

1 row created.

SQL> INSERT INTO Employee VALUES (108, 'Kavita Mehta', 'F', 53000, 'Finance', DATE '2021-12-25');

1 row created.

SQL> INSERT INTO Employee VALUES (109, 'Arjun Patel', 'M', 58000, 'IT', DATE '2022-09-30');

1 row created.

SQL> INSERT INTO Employee VALUES (110, 'Pooja Nair', 'F', 46000, 'Marketing', DATE '2023-05-14');

1 row created.

SQL> SELECT * FROM Employee
  2  SELECT * FROM Employee;
SELECT * FROM Employee
*
ERROR at line 2:
ORA-00933: SQL command not properly ended 


SQL> SELECT * FROM Employee;

     EMPID EMPNAME                        G     SALARY DEPT                     
---------- ------------------------------ - ---------- --------------------     
JOININGDA                                                                       
---------                                                                       
       101 Rahul Sharma                   M      45000 IT                       
15-JAN-23                                                                       
                                                                                
       102 Priya Verma                    F      48000 HR                       
10-FEB-23                                                                       
                                                                                
       103 Amit Kumar                     M      52000 Finance                  
20-NOV-22                                                                       
                                                                                

     EMPID EMPNAME                        G     SALARY DEPT                     
---------- ------------------------------ - ---------- --------------------     
JOININGDA                                                                       
---------                                                                       
       104 Neha Singh                     F      47000 Marketing                
05-MAR-23                                                                       
                                                                                
       105 Rohit Das                      M      60000 IT                       
12-AUG-21                                                                       
                                                                                
       106 Anjali Roy                     F      55000 HR                       
18-JUN-22                                                                       
                                                                                

     EMPID EMPNAME                        G     SALARY DEPT                     
---------- ------------------------------ - ---------- --------------------     
JOININGDA                                                                       
---------                                                                       
       107 Sourav Paul                    M      49000 Sales                    
01-APR-23                                                                       
                                                                                
       108 Kavita Mehta                   F      53000 Finance                  
25-DEC-21                                                                       
                                                                                
       109 Arjun Patel                    M      58000 IT                       
30-SEP-22                                                                       
                                                                                

     EMPID EMPNAME                        G     SALARY DEPT                     
---------- ------------------------------ - ---------- --------------------     
JOININGDA                                                                       
---------                                                                       
       110 Pooja Nair                     F      46000 Marketing                
14-MAY-23                                                                       
                                                                                

10 rows selected.

SQL> SELECT EmpName FROM Employee;

EMPNAME                                                                         
------------------------------                                                  
Rahul Sharma                                                                    
Priya Verma                                                                     
Amit Kumar                                                                      
Neha Singh                                                                      
Rohit Das                                                                       
Anjali Roy                                                                      
Sourav Paul                                                                     
Kavita Mehta                                                                    
Arjun Patel                                                                     
Pooja Nair                                                                      

10 rows selected.

SQL> SPOOL C:\DBMSLAB\24155130_03.sql
