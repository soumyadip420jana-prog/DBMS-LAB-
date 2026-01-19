SQL> CREATE TABLE employee3 (
  2      emp_id INT PRIMARY KEY,
  3      emp_name VARCHAR2(50),
  4      age INT,
  5      gender VARCHAR2(10),
  6      department VARCHAR2(30),
  7      salary NUMBER(10,2),
  8      joining_date DATE
  9  );

Table created.

SQL> DROP TABLE employee2;

Table dropped.

SQL> DROP TABLE employee3;

Table dropped.

SQL> CREATE TABLE employee4 (
  2      empid NUMBER PRIMARY KEY,
  3      first_name VARCHAR2(30),
  4      last_name VARCHAR2(30),
  5      salary NUMBER(10),
  6      bonus NUMBER(10)
  7  );

Table created.

SQL> INSERT INTO employee4 VALUES (1, 'Amit', 'Sharma', 45000, 5000);

1 row created.

SQL> INSERT INTO employee4 VALUES (2, 'Neha', 'Verma', 52000, 6000);

1 row created.

SQL> INSERT INTO employee4 VALUES (3, 'Rohit', 'Gupta', 60000, 7000);

1 row created.

SQL> INSERT INTO employee4 VALUES (4, 'Priya', 'Singh', 48000, 5500);

1 row created.

SQL> INSERT INTO employee4 VALUES (5, 'Ankit', 'Mehta', 70000, 8000);

1 row created.

SQL> INSERT INTO employee4 VALUES (6, 'Kavya', 'Iyer', 55000, 6500);

1 row created.

SQL> INSERT INTO employee4 VALUES (7, 'Suresh', 'Rao', 62000, 7200);

1 row created.

SQL> INSERT INTO employee4 VALUES (8, 'Pooja', 'Nair', 50000, 5800);

1 row created.

SQL> INSERT INTO employee4 VALUES (9, 'Vikas', 'Malik', 58000, 6900);

1 row created.

SQL> INSERT INTO employee4 VALUES (10, 'Rina', 'Das', 47000, 5400);

1 row created.

SQL> INSERT INTO employee4 VALUES (11, 'Arjun', 'Gandhi', 61000, 7000);

1 row created.

SQL> INSERT INTO employee4 VALUES (12, 'Sneha', 'Goyal', 54000, 6200);

1 row created.

SQL> INSERT INTO employee4 VALUES (13, 'Manoj', 'Gupta', 68000, 7800);

1 row created.

SQL> INSERT INTO employee4 VALUES (14, 'Ritu', 'Goenka', 59000, 6600);

1 row created.

SQL> INSERT INTO employee4 VALUES (15, 'Karan', 'Gill', 72000, 8200);

1 row created.

SQL> SELECT last_name, AVG(salary)
  2  FROM employee4
  3  GROUP BY last_name;

LAST_NAME                      AVG(SALARY)                                      
------------------------------ -----------                                      
Mehta                                70000                                      
Das                                  47000                                      
Gandhi                               61000                                      
Verma                                52000                                      
Goenka                               59000                                      
Iyer                                 55000                                      
Sharma                               45000                                      
Nair                                 50000                                      
Gill                                 72000                                      
Singh                                48000                                      
Goyal                                54000                                      

LAST_NAME                      AVG(SALARY)                                      
------------------------------ -----------                                      
Gupta                                64000                                      
Rao                                  62000                                      
Malik                                58000                                      

14 rows selected.

SQL> desc bonus;
ERROR:
ORA-04043: object bonus does not exist 


SQL> desc employee4_details;
ERROR:
ORA-04043: object employee4_details does not exist 


SQL> DESC employee4;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPID                                     NOT NULL NUMBER
 FIRST_NAME                                         VARCHAR2(30)
 LAST_NAME                                          VARCHAR2(30)
 SALARY                                             NUMBER(10)
 BONUS                                              NUMBER(10)

SQL> SELECT bonus FROM employee4;

     BONUS                                                                      
----------                                                                      
      5000                                                                      
      6000                                                                      
      7000                                                                      
      5500                                                                      
      8000                                                                      
      6500                                                                      
      7200                                                                      
      5800                                                                      
      6900                                                                      
      5400                                                                      
      7000                                                                      

     BONUS                                                                      
----------                                                                      
      6200                                                                      
      7800                                                                      
      6600                                                                      
      8200                                                                      

15 rows selected.

SQL> CREATE TABLE dept (
  2      dept_id NUMBER PRIMARY KEY,
  3      empid NUMBER,
  4      dept_name VARCHAR2(30)
  5  );

Table created.

SQL> INSERT INTO dept VALUES (1, 1, 'IT');

1 row created.

SQL> INSERT INTO dept VALUES (2, 2, 'HR');

1 row created.

SQL> INSERT INTO dept VALUES (3, 3, 'Finance');

1 row created.

SQL> INSERT INTO dept VALUES (4, 4, 'Marketing');

1 row created.

SQL> INSERT INTO dept VALUES (5, 5, 'IT');

1 row created.

SQL> SELECT * FROM;
SELECT * FROM
            *
ERROR at line 1:
ORA-00903: invalid table name 


SQL> SELECT * FROM dept;

   DEPT_ID      EMPID DEPT_NAME                                                 
---------- ---------- ------------------------------                            
         1          1 IT                                                        
         2          2 HR                                                        
         3          3 Finance                                                   
         4          4 Marketing                                                 
         5          5 IT                                                        

SQL> SELECT e.empid, e.first_name, e.last_name, d.dept_name
  2  FROM employee4 e
  3  LEFT JOIN dept d
  4  ON e.empid = d.empid;

     EMPID FIRST_NAME                     LAST_NAME                             
---------- ------------------------------ ------------------------------        
DEPT_NAME                                                                       
------------------------------                                                  
         1 Amit                           Sharma                                
IT                                                                              
                                                                                
         2 Neha                           Verma                                 
HR                                                                              
                                                                                
         3 Rohit                          Gupta                                 
Finance                                                                         
                                                                                

     EMPID FIRST_NAME                     LAST_NAME                             
---------- ------------------------------ ------------------------------        
DEPT_NAME                                                                       
------------------------------                                                  
         4 Priya                          Singh                                 
Marketing                                                                       
                                                                                
         5 Ankit                          Mehta                                 
IT                                                                              
                                                                                
         8 Pooja                          Nair                                  
                                                                                
                                                                                

     EMPID FIRST_NAME                     LAST_NAME                             
---------- ------------------------------ ------------------------------        
DEPT_NAME                                                                       
------------------------------                                                  
        15 Karan                          Gill                                  
                                                                                
                                                                                
        12 Sneha                          Goyal                                 
                                                                                
                                                                                
        10 Rina                           Das                                   
                                                                                
                                                                                

     EMPID FIRST_NAME                     LAST_NAME                             
---------- ------------------------------ ------------------------------        
DEPT_NAME                                                                       
------------------------------                                                  
         7 Suresh                         Rao                                   
                                                                                
                                                                                
        14 Ritu                           Goenka                                
                                                                                
                                                                                
         9 Vikas                          Malik                                 
                                                                                
                                                                                

     EMPID FIRST_NAME                     LAST_NAME                             
---------- ------------------------------ ------------------------------        
DEPT_NAME                                                                       
------------------------------                                                  
        13 Manoj                          Gupta                                 
                                                                                
                                                                                
        11 Arjun                          Gandhi                                
                                                                                
                                                                                
         6 Kavya                          Iyer                                  
                                                                                
                                                                                

15 rows selected.

SQL> SELECT e.empid, e.first_name, e.last_name, d.dept_name
  2  FROM employee4 e
  3  INNER JOIN dept d
  4  ON e.empid = d.empid;

     EMPID FIRST_NAME                     LAST_NAME                             
---------- ------------------------------ ------------------------------        
DEPT_NAME                                                                       
------------------------------                                                  
         1 Amit                           Sharma                                
IT                                                                              
                                                                                
         2 Neha                           Verma                                 
HR                                                                              
                                                                                
         3 Rohit                          Gupta                                 
Finance                                                                         
                                                                                

     EMPID FIRST_NAME                     LAST_NAME                             
---------- ------------------------------ ------------------------------        
DEPT_NAME                                                                       
------------------------------                                                  
         4 Priya                          Singh                                 
Marketing                                                                       
                                                                                
         5 Ankit                          Mehta                                 
IT                                                                              
                                                                                

SQL> SELECT e.empid, e.first_name, e.last_name, d.dept_name
  2  FROM employee4 e
  3  RIGHT JOIN dept d
  4  ON e.empid = d.empid;

     EMPID FIRST_NAME                     LAST_NAME                             
---------- ------------------------------ ------------------------------        
DEPT_NAME                                                                       
------------------------------                                                  
         1 Amit                           Sharma                                
IT                                                                              
                                                                                
         2 Neha                           Verma                                 
HR                                                                              
                                                                                
         3 Rohit                          Gupta                                 
Finance                                                                         
                                                                                

     EMPID FIRST_NAME                     LAST_NAME                             
---------- ------------------------------ ------------------------------        
DEPT_NAME                                                                       
------------------------------                                                  
         4 Priya                          Singh                                 
Marketing                                                                       
                                                                                
         5 Ankit                          Mehta                                 
IT                                                                              
                                                                                

SQL> SELECT e.empid, e.first_name, e.last_name, d.dept_name
  2  FROM employee4 e
  3  FULL JOIN dept d
  4  ON e.empid = d.empid;

     EMPID FIRST_NAME                     LAST_NAME                             
---------- ------------------------------ ------------------------------        
DEPT_NAME                                                                       
------------------------------                                                  
         1 Amit                           Sharma                                
IT                                                                              
                                                                                
         2 Neha                           Verma                                 
HR                                                                              
                                                                                
         3 Rohit                          Gupta                                 
Finance                                                                         
                                                                                

     EMPID FIRST_NAME                     LAST_NAME                             
---------- ------------------------------ ------------------------------        
DEPT_NAME                                                                       
------------------------------                                                  
         4 Priya                          Singh                                 
Marketing                                                                       
                                                                                
         5 Ankit                          Mehta                                 
IT                                                                              
                                                                                
         6 Kavya                          Iyer                                  
                                                                                
                                                                                

     EMPID FIRST_NAME                     LAST_NAME                             
---------- ------------------------------ ------------------------------        
DEPT_NAME                                                                       
------------------------------                                                  
         7 Suresh                         Rao                                   
                                                                                
                                                                                
         8 Pooja                          Nair                                  
                                                                                
                                                                                
         9 Vikas                          Malik                                 
                                                                                
                                                                                

     EMPID FIRST_NAME                     LAST_NAME                             
---------- ------------------------------ ------------------------------        
DEPT_NAME                                                                       
------------------------------                                                  
        10 Rina                           Das                                   
                                                                                
                                                                                
        11 Arjun                          Gandhi                                
                                                                                
                                                                                
        12 Sneha                          Goyal                                 
                                                                                
                                                                                

     EMPID FIRST_NAME                     LAST_NAME                             
---------- ------------------------------ ------------------------------        
DEPT_NAME                                                                       
------------------------------                                                  
        13 Manoj                          Gupta                                 
                                                                                
                                                                                
        14 Ritu                           Goenka                                
                                                                                
                                                                                
        15 Karan                          Gill                                  
                                                                                
                                                                                

15 rows selected.

SQL> CREATE TABLE product (
  2      id NUMBER PRIMARY KEY,
  3      name VARCHAR2(50),
  4      descr VARCHAR2(100),
  5      status VARCHAR2(20),
  6      created_date DATE,
  7      created_by VARCHAR2(30),
  8      last_modified_date DATE,
  9      last_modified_by VARCHAR2(30),
 10      cost NUMBER(10,2),
 11      injected_date DATE
 12  );

Table created.

SQL> CREATE TABLE job (
  2      id NUMBER PRIMARY KEY,
  3      name VARCHAR2(50),
  4      title VARCHAR2(50),
  5      salary NUMBER(10,2),
  6      bonus NUMBER(10,2),
  7      injected_date DATE
  8  );

Table created.

SQL> INSERT INTO product VALUES
  2  (1,'Laptop','Gaming Laptop','Active',DATE '2023-01-10','Indiana D',DATE '2023-03-12','Michigan R',55000,DATE '2023-01-10');

1 row created.

SQL> 
SQL> INSERT INTO product VALUES
  2  (2,'Phone','Smart Phone','Active',DATE '2023-02-05','Ohio D',DATE '2023-04-01','Illinois M',30000,DATE '2023-02-05');

1 row created.

SQL> 
SQL> INSERT INTO product VALUES
  2  (3,'Tablet','Android Tablet','Inactive',DATE '2022-11-20','Indiana D',DATE '2023-01-15','Michigan R',20000,DATE '2022-11-20');

1 row created.

SQL> 
SQL> INSERT INTO product VALUES
  2  (4,'Monitor','LED Monitor','Active',DATE '2023-03-01','Texas A',DATE '2023-03-20','Illinois M',12000,DATE '2023-03-01');

1 row created.

SQL> 
SQL> INSERT INTO product VALUES
  2  (5,'Keyboard','Mechanical Keyboard','Active',DATE '2022-12-10','Ohio D',DATE '2023-02-18','Florida B',4000,DATE '2022-12-10');

1 row created.

SQL> INSERT INTO job VALUES
  2  (1,'Dev','Software Developer',50000,5000,DATE '2023-01-01');

1 row created.

SQL> 
SQL> INSERT INTO job VALUES
  2  (2,'Tester','QA Engineer',40000,NULL,DATE '2023-01-05');

1 row created.

SQL> 
SQL> INSERT INTO job VALUES
  2  (3,'Manager','Project Manager',70000,8000,DATE '2023-02-01');

1 row created.

SQL> 
SQL> INSERT INTO job VALUES
  2  (4,'Analyst','Business Analyst',45000,NULL,DATE '2023-02-10');

1 row created.

SQL> 
SQL> INSERT INTO job VALUES
  2  (5,'HR','HR Executive',35000,3000,DATE '2023-03-01');

1 row created.

SQL> SELECT * FROM product;

        ID NAME                                                                 
---------- --------------------------------------------------                   
DESCR                                                                           
--------------------------------------------------------------------------------
STATUS               CREATED_D CREATED_BY                     LAST_MODI         
-------------------- --------- ------------------------------ ---------         
LAST_MODIFIED_BY                     COST INJECTED_                             
------------------------------ ---------- ---------                             
         1 Laptop                                                               
Gaming Laptop                                                                   
Active               10-JAN-23 Indiana D                      12-MAR-23         
Michigan R                          55000 10-JAN-23                             
                                                                                

        ID NAME                                                                 
---------- --------------------------------------------------                   
DESCR                                                                           
--------------------------------------------------------------------------------
STATUS               CREATED_D CREATED_BY                     LAST_MODI         
-------------------- --------- ------------------------------ ---------         
LAST_MODIFIED_BY                     COST INJECTED_                             
------------------------------ ---------- ---------                             
         2 Phone                                                                
Smart Phone                                                                     
Active               05-FEB-23 Ohio D                         01-APR-23         
Illinois M                          30000 05-FEB-23                             
                                                                                

        ID NAME                                                                 
---------- --------------------------------------------------                   
DESCR                                                                           
--------------------------------------------------------------------------------
STATUS               CREATED_D CREATED_BY                     LAST_MODI         
-------------------- --------- ------------------------------ ---------         
LAST_MODIFIED_BY                     COST INJECTED_                             
------------------------------ ---------- ---------                             
         3 Tablet                                                               
Android Tablet                                                                  
Inactive             20-NOV-22 Indiana D                      15-JAN-23         
Michigan R                          20000 20-NOV-22                             
                                                                                

        ID NAME                                                                 
---------- --------------------------------------------------                   
DESCR                                                                           
--------------------------------------------------------------------------------
STATUS               CREATED_D CREATED_BY                     LAST_MODI         
-------------------- --------- ------------------------------ ---------         
LAST_MODIFIED_BY                     COST INJECTED_                             
------------------------------ ---------- ---------                             
         4 Monitor                                                              
LED Monitor                                                                     
Active               01-MAR-23 Texas A                        20-MAR-23         
Illinois M                          12000 01-MAR-23                             
                                                                                

        ID NAME                                                                 
---------- --------------------------------------------------                   
DESCR                                                                           
--------------------------------------------------------------------------------
STATUS               CREATED_D CREATED_BY                     LAST_MODI         
-------------------- --------- ------------------------------ ---------         
LAST_MODIFIED_BY                     COST INJECTED_                             
------------------------------ ---------- ---------                             
         5 Keyboard                                                             
Mechanical Keyboard                                                             
Active               10-DEC-22 Ohio D                         18-FEB-23         
Florida B                            4000 10-DEC-22                             
                                                                                

SQL> SELECT * FROM job;

        ID NAME                                                                 
---------- --------------------------------------------------                   
TITLE                                                  SALARY      BONUS        
-------------------------------------------------- ---------- ----------        
INJECTED_                                                                       
---------                                                                       
         1 Dev                                                                  
Software Developer                                      50000       5000        
01-JAN-23                                                                       
                                                                                
         2 Tester                                                               
QA Engineer                                             40000                   
05-JAN-23                                                                       

        ID NAME                                                                 
---------- --------------------------------------------------                   
TITLE                                                  SALARY      BONUS        
-------------------------------------------------- ---------- ----------        
INJECTED_                                                                       
---------                                                                       
                                                                                
         3 Manager                                                              
Project Manager                                         70000       8000        
01-FEB-23                                                                       
                                                                                
         4 Analyst                                                              
Business Analyst                                        45000                   

        ID NAME                                                                 
---------- --------------------------------------------------                   
TITLE                                                  SALARY      BONUS        
-------------------------------------------------- ---------- ----------        
INJECTED_                                                                       
---------                                                                       
10-FEB-23                                                                       
                                                                                
         5 HR                                                                   
HR Executive                                            35000       3000        
01-MAR-23                                                                       
                                                                                

SQL> SELECT created_by,
  2         MAX(cost) AS max_cost,
  3         MIN(cost) AS min_cost
  4  FROM product
  5  GROUP BY created_by;

CREATED_BY                       MAX_COST   MIN_COST                            
------------------------------ ---------- ----------                            
Ohio D                              30000       4000                            
Indiana D                           55000      20000                            
Texas A                             12000      12000                            

SQL> SELECT last_modified_by,
  2         SUM(cost) AS total_cost,
  3         AVG(cost) AS avg_cost
  4  FROM product
  5  GROUP BY last_modified_by;

LAST_MODIFIED_BY               TOTAL_COST   AVG_COST                            
------------------------------ ---------- ----------                            
Michigan R                          75000      37500                            
Florida B                            4000       4000                            
Illinois M                          42000      21000                            

SQL> SELECT created_by, COUNT(*) AS total_products
  2  FROM product
  3  WHERE created_by IN ('Indiana D','Ohio D')
  4  GROUP BY created_by;

CREATED_BY                     TOTAL_PRODUCTS                                   
------------------------------ --------------                                   
Ohio D                                      2                                   
Indiana D                                   2                                   

SQL> SELECT last_modified_by, COUNT(*) AS total_updated
  2  FROM product
  3  WHERE last_modified_by IN ('Michigan R','Illinois M')
  4  GROUP BY last_modified_by;

LAST_MODIFIED_BY               TOTAL_UPDATED                                    
------------------------------ -------------                                    
Michigan R                                 2                                    
Illinois M                                 2                                    

SQL> SELECT SUM(salary) FROM JOB;

SUM(SALARY)                                                                     
-----------                                                                     
     240000                                                                     

SQL> SELECT SUM(salary) FROM JOB;

SUM(SALARY)                                                                     
-----------                                                                     
     240000                                                                     

SQL> SELECT AVG(salary)
  2  FROM JOB
  3  WHERE bonus IS NOT NULL;

AVG(SALARY)                                                                     
-----------                                                                     
 51666.6667                                                                     

SQL> SELECT AVG(cost)
  2          MAX(cost)
  3           MIN(cost)
  4  FROM product;
        MAX(cost)
           *
ERROR at line 2:
ORA-00923: FROM keyword not found where expected 


SQL> SELECT AVG(cost) AS avg_cost,
  2         MAX(cost) AS max_cost,
  3         MIN(cost) AS min_cost
  4  FROM product;

  AVG_COST   MAX_COST   MIN_COST                                                
---------- ---------- ----------                                                
     24200      55000       4000                                                

SQL> SELECT COUNT(*)
  2  FROM job
  3  WHERE bonus IS NULL;

  COUNT(*)                                                                      
----------                                                                      
         2                                                                      

SQL> SELECT id,
  2         EXTRACT(YEAR FROM created_date),
  3         EXTRACT(MONTH FROM created_date),
  4         EXTRACT(YEAR FROM last_modified_date),
  5         EXTRACT(MONTH FROM last_modified_date)
  6  FROM product;

        ID EXTRACT(YEARFROMCREATED_DATE) EXTRACT(MONTHFROMCREATED_DATE)         
---------- ----------------------------- ------------------------------         
EXTRACT(YEARFROMLAST_MODIFIED_DATE) EXTRACT(MONTHFROMLAST_MODIFIED_DATE)        
----------------------------------- ------------------------------------        
         1                          2023                              1         
                               2023                                    3        
                                                                                
         2                          2023                              2         
                               2023                                    4        
                                                                                
         3                          2022                             11         
                               2023                                    1        
                                                                                

        ID EXTRACT(YEARFROMCREATED_DATE) EXTRACT(MONTHFROMCREATED_DATE)         
---------- ----------------------------- ------------------------------         
EXTRACT(YEARFROMLAST_MODIFIED_DATE) EXTRACT(MONTHFROMLAST_MODIFIED_DATE)        
----------------------------------- ------------------------------------        
         4                          2023                              3         
                               2023                                    3        
                                                                                
         5                          2022                             12         
                               2023                                    2        
                                                                                

SQL> SELECT name, title,
  2  CASE
  3    WHEN salary > 100000 THEN 'High'
  4    WHEN salary BETWEEN 50000 AND 100000 THEN 'Medium'
  5    ELSE 'Low'
  6  END
  7  FROM job;

NAME                                                                            
--------------------------------------------------                              
TITLE                                              CASEWH                       
-------------------------------------------------- ------                       
Dev                                                                             
Software Developer                                 Medium                       
                                                                                
Tester                                                                          
QA Engineer                                        Low                          
                                                                                
Manager                                                                         
Project Manager                                    Medium                       
                                                                                

NAME                                                                            
--------------------------------------------------                              
TITLE                                              CASEWH                       
-------------------------------------------------- ------                       
Analyst                                                                         
Business Analyst                                   Low                          
                                                                                
HR                                                                              
HR Executive                                       Low                          
                                                                                

SQL> SELECT *
  2  FROM product
  3  WHERE EXTRACT(MONTH FROM created_date) = 5;

no rows selected

SQL> SELECT *
  2  FROM product
  3  WHERE EXTRACT(YEAR FROM created_date) = EXTRACT(YEAR FROM SYSDATE);

no rows selected

SQL> SELECT POWER(2,10)
  2  FROM dual;

POWER(2,10)                                                                     
-----------                                                                     
       1024                                                                     

SQL> SELECT salary, CEIL(salary), FLOOR(salary)
  2  FROM job;

    SALARY CEIL(SALARY) FLOOR(SALARY)                                           
---------- ------------ -------------                                           
     50000        50000         50000                                           
     40000        40000         40000                                           
     70000        70000         70000                                           
     45000        45000         45000                                           
     35000        35000         35000                                           

SQL> SELECT AVG(bonus)
  2  FROM job;

AVG(BONUS)                                                                      
----------                                                                      
5333.33333                                                                      

SQL> SELECT COUNT(DISTINCT title)
  2  FROM job;

COUNT(DISTINCTTITLE)                                                            
--------------------                                                            
                   5                                                            

SQL> SELECT name, descr,
  2  TO_CHAR(created_date,'DD Month YYYY')
  3  FROM product;

NAME                                                                            
--------------------------------------------------                              
DESCR                                                                           
--------------------------------------------------------------------------------
TO_CHAR(CREATED_DATE,'DDMONTHYYYY')                                             
--------------------------------------------                                    
Laptop                                                                          
Gaming Laptop                                                                   
10 January   2023                                                               
                                                                                
Phone                                                                           
Smart Phone                                                                     
05 February  2023                                                               

NAME                                                                            
--------------------------------------------------                              
DESCR                                                                           
--------------------------------------------------------------------------------
TO_CHAR(CREATED_DATE,'DDMONTHYYYY')                                             
--------------------------------------------                                    
                                                                                
Tablet                                                                          
Android Tablet                                                                  
20 November  2022                                                               
                                                                                
Monitor                                                                         
LED Monitor                                                                     

NAME                                                                            
--------------------------------------------------                              
DESCR                                                                           
--------------------------------------------------------------------------------
TO_CHAR(CREATED_DATE,'DDMONTHYYYY')                                             
--------------------------------------------                                    
01 March     2023                                                               
                                                                                
Keyboard                                                                        
Mechanical Keyboard                                                             
10 December  2022                                                               
                                                                                

SQL> SELECT name, descr
  2  FROM product
  3  ORDER BY LENGTH(descr);

NAME                                                                            
--------------------------------------------------                              
DESCR                                                                           
--------------------------------------------------------------------------------
Phone                                                                           
Smart Phone                                                                     
                                                                                
Monitor                                                                         
LED Monitor                                                                     
                                                                                
Laptop                                                                          
Gaming Laptop                                                                   
                                                                                

NAME                                                                            
--------------------------------------------------                              
DESCR                                                                           
--------------------------------------------------------------------------------
Tablet                                                                          
Android Tablet                                                                  
                                                                                
Keyboard                                                                        
Mechanical Keyboard                                                             
                                                                                

SQL> SELECT LOWER(name), UPPER(descr)
  2  FROM product;

LOWER(NAME)                                                                     
--------------------------------------------------                              
UPPER(DESCR)                                                                    
--------------------------------------------------------------------------------
laptop                                                                          
GAMING LAPTOP                                                                   
                                                                                
phone                                                                           
SMART PHONE                                                                     
                                                                                
tablet                                                                          
ANDROID TABLET                                                                  
                                                                                

LOWER(NAME)                                                                     
--------------------------------------------------                              
UPPER(DESCR)                                                                    
--------------------------------------------------------------------------------
monitor                                                                         
LED MONITOR                                                                     
                                                                                
keyboard                                                                        
MECHANICAL KEYBOARD                                                             
                                                                                

SQL> SELECT name || ' ' || descr || ' ' || created_date || ' ' || last_modified_date
  2  FROM product
  3  WHERE status = 'Active';

NAME||''||DESCR||''||CREATED_DATE||''||LAST_MODIFIED_DATE                       
--------------------------------------------------------------------------------
Laptop Gaming Laptop 10-JAN-23 12-MAR-23                                        
Phone Smart Phone 05-FEB-23 01-APR-23                                           
Monitor LED Monitor 01-MAR-23 20-MAR-23                                         
Keyboard Mechanical Keyboard 10-DEC-22 18-FEB-23                                

SQL> CREATE TABLE employee (
  2    id NUMBER PRIMARY KEY,
  3    first_name VARCHAR2(30),
  4    last_name VARCHAR2(30),
  5    hire_date DATE,
  6    supervisor_id NUMBER
  7  );
CREATE TABLE employee (
             *
ERROR at line 1:
ORA-00955: name is already used by an existing object 


SQL> CREATE TABLE employee (
  2    id NUMBER PRIMARY KEY,
  3    first_name VARCHAR2(30),
  4    last_name VARCHAR2(30),
  5    hire_date DATE,
  6    supervisor_id NUMBER
  7  );
CREATE TABLE employee (
             *
ERROR at line 1:
ORA-00955: name is already used by an existing object 


SQL> CREATE TABLE employee5 (
  2    id NUMBER PRIMARY KEY,
  3    first_name VARCHAR2(30),
  4    last_name VARCHAR2(30),
  5    hire_date DATE,
  6    supervisor_id NUMBER
  7  );

Table created.

SQL> CREATE TABLE job5 (
  2    id NUMBER PRIMARY KEY,
  3    title VARCHAR2(50),
  4    salary NUMBER,
  5    bonus NUMBER
  6  );

Table created.

SQL> CREATE TABLE employee_pay (
  2    employee_id NUMBER,
  3    job_id NUMBER
  4  );

Table created.

SQL> CREATE TABLE school (
  2    id NUMBER PRIMARY KEY,
  3    name VARCHAR2(50)
  4  );

Table created.

SQL> CREATE TABLE employee_alignment (
  2    employee_id NUMBER,
  3    school_id NUMBER
  4  );

Table created.

SQL> SELECT e.first_name || ' ' || e.last_name AS full_name, s.school_name
  2  FROM employee e
  3  JOIN employee_school es ON e.emp_id = es.emp_id
  4  JOIN school s ON es.school_id = s.school_id;
JOIN employee_school es ON e.emp_id = es.emp_id
     *
ERROR at line 3:
ORA-00942: table or view does not exist 


SQL> SPOOL OFF;
