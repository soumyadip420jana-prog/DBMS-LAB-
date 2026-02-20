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

Table created.

SQL> CREATE TABLE SCHOOL (
  2      ID INT PRIMARY KEY,
  3      NAME VARCHAR(100),
  4      INJECTED_DATE DATE
  5  );

Table created.

SQL> CREATE TABLE EMPLOYEE_ALIGNMENT (
  2      EMPLOYEE_ID INT,
  3      SCHOOL_ID INT,
  4      INJECTED_DATE DATE,
  5      PRIMARY KEY (EMPLOYEE_ID, SCHOOL_ID),
  6      FOREIGN KEY (EMPLOYEE_ID) REFERENCES EMPLOYEE(ID),
  7      FOREIGN KEY (SCHOOL_ID) REFERENCES SCHOOL(ID)
  8  );

Table created.

SQL> CREATE TABLE JOB (
  2      ID INT PRIMARY KEY,
  3      NAME VARCHAR(100),
  4      TITLE VARCHAR(100),
  5      SALARY DECIMAL(10,2),
  6      BONUS DECIMAL(10,2),
  7      INJECTED_DATE DATE
  8  );

Table created.

SQL> CREATE TABLE EMPLOYEE_PAY (
  2      EMPLOYEE_ID INT,
  3      JOB_ID INT,
  4      INJECTED_DATE DATE,
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

SQL> INSERT INTO SCHOOL VALUES (4, 'Civil Engineering', SYSDATE);

1 row created.

SQL> INSERT INTO SCHOOL VALUES (5, 'Information Technology', SYSDATE);

1 row created.

SQL> INSERT INTO JOB VALUES (1, 'Teaching', 'Professor', 90000, NULL, SYSDATE);

1 row created.

SQL> INSERT INTO JOB VALUES (2, 'Teaching', 'Associate Professor', 70000, 5000, SYSDATE);

1 row created.

SQL> INSERT INTO JOB VALUES (3, 'Teaching', 'Assistant Professor', 50000, 3000, SYSDATE);

1 row created.

SQL> INSERT INTO JOB VALUES (4, 'Admin', 'HOD', 100000, 10000, SYSDATE);

1 row created.

SQL> INSERT INTO JOB VALUES (5, 'Technical', 'Lab Instructor', 40000, NULL, SYSDATE);

1 row created.

SQL> INSERT INTO EMPLOYEE VALUES (1,'Smith','John','A','Robert','Mary','M',DATE '2015-06-01','NY Street','New York','NY','10001','1111111111','101',NULL,SYSDATE);

1 row created.

SQL> 
SQL> INSERT INTO EMPLOYEE VALUES (2,'Brown','David','B','Thomas','Linda','M',DATE '2016-07-10','LA Street','Los Angeles','CA','90001','2222222222','102',1,SYSDATE);

1 row created.

SQL> 
SQL> INSERT INTO EMPLOYEE VALUES (3,'Taylor','James','C','Michael','Anna','M',DATE '2017-08-15','Chicago Road','Chicago','IL','60007','3333333333','103',1,SYSDATE);

1 row created.

SQL> 
SQL> INSERT INTO EMPLOYEE VALUES (4,'Wilson','Daniel','D','Joseph','Emma','M',DATE '2018-09-20','Houston Ave','Houston','TX','77001','4444444444','104',2,SYSDATE);

1 row created.

SQL> 
SQL> INSERT INTO EMPLOYEE VALUES (5,'Moore','Chris','E','David','Olivia','M',DATE '2019-05-11','Phoenix Blvd','Phoenix','AZ','85001','5555555555','105',2,SYSDATE);

1 row created.

SQL> 
SQL> INSERT INTO EMPLOYEE VALUES (6,'Lee','Sophia','F','Mark','Sophia','F',DATE '2020-04-22','Dallas Street','Dallas','TX','75001','6666666666','106',3,SYSDATE);

1 row created.

SQL> 
SQL> INSERT INTO EMPLOYEE VALUES (7,'Clark','Emma','G','Paul','Grace','F',DATE '2021-01-18','Austin Road','Austin','TX','73301','7777777777','107',3,SYSDATE);

1 row created.

SQL> 
SQL> INSERT INTO EMPLOYEE VALUES (8,'Hall','Olivia','H','John','Sarah','F',DATE '2022-02-25','Miami Ave','Miami','FL','33101','8888888888','108',4,SYSDATE);

1 row created.

SQL> 
SQL> INSERT INTO EMPLOYEE VALUES (9,'Allen','Liam','I','Henry','Julia','M',DATE '2023-03-12','Seattle St','Seattle','WA','98101','9999999999','109',4,SYSDATE);

1 row created.

SQL> 
SQL> INSERT INTO EMPLOYEE VALUES (10,'Young','Noah','J','Edward','Lucy','M',DATE '2024-01-05','Boston Rd','Boston','MA','02101','1234567890','110',5,SYSDATE);

1 row created.

SQL> INSERT INTO EMPLOYEE_ALIGNMENT VALUES (1,1,SYSDATE);

1 row created.

SQL> INSERT INTO EMPLOYEE_ALIGNMENT VALUES (2,1,SYSDATE);

1 row created.

SQL> INSERT INTO EMPLOYEE_ALIGNMENT VALUES (3,2,SYSDATE);

1 row created.

SQL> INSERT INTO EMPLOYEE_ALIGNMENT VALUES (4,2,SYSDATE);

1 row created.

SQL> INSERT INTO EMPLOYEE_ALIGNMENT VALUES (5,3,SYSDATE);

1 row created.

SQL> INSERT INTO EMPLOYEE_ALIGNMENT VALUES (6,3,SYSDATE);

1 row created.

SQL> INSERT INTO EMPLOYEE_ALIGNMENT VALUES (7,4,SYSDATE);

1 row created.

SQL> INSERT INTO EMPLOYEE_ALIGNMENT VALUES (8,4,SYSDATE);

1 row created.

SQL> INSERT INTO EMPLOYEE_ALIGNMENT VALUES (9,5,SYSDATE);

1 row created.

SQL> INSERT INTO EMPLOYEE_ALIGNMENT VALUES (10,1,SYSDATE);

1 row created.

SQL> INSERT INTO EMPLOYEE_PAY VALUES (1,1,SYSDATE);

1 row created.

SQL> INSERT INTO EMPLOYEE_PAY VALUES (2,2,SYSDATE);

1 row created.

SQL> INSERT INTO EMPLOYEE_PAY VALUES (3,3,SYSDATE);

1 row created.

SQL> INSERT INTO EMPLOYEE_PAY VALUES (4,1,SYSDATE);

1 row created.

SQL> INSERT INTO EMPLOYEE_PAY VALUES (5,2,SYSDATE);

1 row created.

SQL> INSERT INTO EMPLOYEE_PAY VALUES (6,3,SYSDATE);

1 row created.

SQL> INSERT INTO EMPLOYEE_PAY VALUES (7,4,SYSDATE);

1 row created.

SQL> INSERT INTO EMPLOYEE_PAY VALUES (8,5,SYSDATE);

1 row created.

SQL> INSERT INTO EMPLOYEE_PAY VALUES (9,1,SYSDATE);

1 row created.

SQL> INSERT INTO EMPLOYEE_PAY VALUES (10,2,SYSDATE);

1 row created.

SQL> SELECT e.FIRST_NAME,e.LAST_NAME,s.NAME
  2  FROM EMPLOYEE e
  3  JOIN EMPLOYEE_ALIGNMENT ea ON e.ID=ea.EMPLOYEE_ID
  4  JOIN SCLOOL s ON ea.EMPLOYEE_ID=s.ID;
JOIN SCLOOL s ON ea.EMPLOYEE_ID=s.ID
     *
ERROR at line 4:
ORA-00942: table or view does not exist 


SQL> SELECT e.FIRST_NAME, e.LAST_NAME, s.NAME
  2  FROM EMPLOYEE e
  3  JOIN EMPLOYEE_ALIGNMENT ea ON e.ID = ea.EMPLOYEE_ID
  4  JOIN SCHOOL s ON ea.SCHOOL_ID = s.ID;

FIRST_NAME                                                                      
--------------------------------------------------                              
LAST_NAME                                                                       
--------------------------------------------------                              
NAME                                                                            
--------------------------------------------------------------------------------
John                                                                            
Smith                                                                           
Computer Engineering                                                            
                                                                                
David                                                                           
Brown                                                                           
Computer Engineering                                                            

FIRST_NAME                                                                      
--------------------------------------------------                              
LAST_NAME                                                                       
--------------------------------------------------                              
NAME                                                                            
--------------------------------------------------------------------------------
                                                                                
Noah                                                                            
Young                                                                           
Computer Engineering                                                            
                                                                                
James                                                                           
Taylor                                                                          

FIRST_NAME                                                                      
--------------------------------------------------                              
LAST_NAME                                                                       
--------------------------------------------------                              
NAME                                                                            
--------------------------------------------------------------------------------
Electronic Engineering                                                          
                                                                                
Daniel                                                                          
Wilson                                                                          
Electronic Engineering                                                          
                                                                                
Chris                                                                           

FIRST_NAME                                                                      
--------------------------------------------------                              
LAST_NAME                                                                       
--------------------------------------------------                              
NAME                                                                            
--------------------------------------------------------------------------------
Moore                                                                           
Mechanical Engineering                                                          
                                                                                
Sophia                                                                          
Lee                                                                             
Mechanical Engineering                                                          
                                                                                

FIRST_NAME                                                                      
--------------------------------------------------                              
LAST_NAME                                                                       
--------------------------------------------------                              
NAME                                                                            
--------------------------------------------------------------------------------
Emma                                                                            
Clark                                                                           
Civil Engineering                                                               
                                                                                
Olivia                                                                          
Hall                                                                            
Civil Engineering                                                               

FIRST_NAME                                                                      
--------------------------------------------------                              
LAST_NAME                                                                       
--------------------------------------------------                              
NAME                                                                            
--------------------------------------------------------------------------------
                                                                                
Liam                                                                            
Allen                                                                           
Information Technology                                                          
                                                                                

10 rows selected.

SQL> SELECT e.FIRST_NAME, e.LAST_NAME, j.TITLE,j.SALARY
  2  FROM EMPLOYEE e
  3  JOIN JOB j ON e.ID=J.ID;

FIRST_NAME                                                                      
--------------------------------------------------                              
LAST_NAME                                                                       
--------------------------------------------------                              
TITLE                                                                           
--------------------------------------------------------------------------------
    SALARY                                                                      
----------                                                                      
John                                                                            
Smith                                                                           
Professor                                                                       
     90000                                                                      
                                                                                

FIRST_NAME                                                                      
--------------------------------------------------                              
LAST_NAME                                                                       
--------------------------------------------------                              
TITLE                                                                           
--------------------------------------------------------------------------------
    SALARY                                                                      
----------                                                                      
David                                                                           
Brown                                                                           
Associate Professor                                                             
     70000                                                                      
                                                                                

FIRST_NAME                                                                      
--------------------------------------------------                              
LAST_NAME                                                                       
--------------------------------------------------                              
TITLE                                                                           
--------------------------------------------------------------------------------
    SALARY                                                                      
----------                                                                      
James                                                                           
Taylor                                                                          
Assistant Professor                                                             
     50000                                                                      
                                                                                

FIRST_NAME                                                                      
--------------------------------------------------                              
LAST_NAME                                                                       
--------------------------------------------------                              
TITLE                                                                           
--------------------------------------------------------------------------------
    SALARY                                                                      
----------                                                                      
Daniel                                                                          
Wilson                                                                          
HOD                                                                             
    100000                                                                      
                                                                                

FIRST_NAME                                                                      
--------------------------------------------------                              
LAST_NAME                                                                       
--------------------------------------------------                              
TITLE                                                                           
--------------------------------------------------------------------------------
    SALARY                                                                      
----------                                                                      
Chris                                                                           
Moore                                                                           
Lab Instructor                                                                  
     40000                                                                      
                                                                                

SQL> SELECT e.FIRST_NAME, e.LAST_NAME,
  2         j.NAME, j.TITLE,
  3         j.SALARY + j.BONUS AS TOTAL_SALARY
  4  FROM EMPLOYEE e
  5  JOIN EMPLOYEE_PAY ep ON e.ID = ep.EMPLOYEE_ID
  6  JOIN JOB j ON ep.JOB_ID = j.ID
  7  WHERE j.BONUS IS NOT NULL;

FIRST_NAME                                                                      
--------------------------------------------------                              
LAST_NAME                                                                       
--------------------------------------------------                              
NAME                                                                            
--------------------------------------------------------------------------------
TITLE                                                                           
--------------------------------------------------------------------------------
TOTAL_SALARY                                                                    
------------                                                                    
David                                                                           
Brown                                                                           
Teaching                                                                        

FIRST_NAME                                                                      
--------------------------------------------------                              
LAST_NAME                                                                       
--------------------------------------------------                              
NAME                                                                            
--------------------------------------------------------------------------------
TITLE                                                                           
--------------------------------------------------------------------------------
TOTAL_SALARY                                                                    
------------                                                                    
Associate Professor                                                             
       75000                                                                    
                                                                                

FIRST_NAME                                                                      
--------------------------------------------------                              
LAST_NAME                                                                       
--------------------------------------------------                              
NAME                                                                            
--------------------------------------------------------------------------------
TITLE                                                                           
--------------------------------------------------------------------------------
TOTAL_SALARY                                                                    
------------                                                                    
Chris                                                                           
Moore                                                                           
Teaching                                                                        

FIRST_NAME                                                                      
--------------------------------------------------                              
LAST_NAME                                                                       
--------------------------------------------------                              
NAME                                                                            
--------------------------------------------------------------------------------
TITLE                                                                           
--------------------------------------------------------------------------------
TOTAL_SALARY                                                                    
------------                                                                    
Associate Professor                                                             
       75000                                                                    
                                                                                

FIRST_NAME                                                                      
--------------------------------------------------                              
LAST_NAME                                                                       
--------------------------------------------------                              
NAME                                                                            
--------------------------------------------------------------------------------
TITLE                                                                           
--------------------------------------------------------------------------------
TOTAL_SALARY                                                                    
------------                                                                    
Noah                                                                            
Young                                                                           
Teaching                                                                        

FIRST_NAME                                                                      
--------------------------------------------------                              
LAST_NAME                                                                       
--------------------------------------------------                              
NAME                                                                            
--------------------------------------------------------------------------------
TITLE                                                                           
--------------------------------------------------------------------------------
TOTAL_SALARY                                                                    
------------                                                                    
Associate Professor                                                             
       75000                                                                    
                                                                                

FIRST_NAME                                                                      
--------------------------------------------------                              
LAST_NAME                                                                       
--------------------------------------------------                              
NAME                                                                            
--------------------------------------------------------------------------------
TITLE                                                                           
--------------------------------------------------------------------------------
TOTAL_SALARY                                                                    
------------                                                                    
James                                                                           
Taylor                                                                          
Teaching                                                                        

FIRST_NAME                                                                      
--------------------------------------------------                              
LAST_NAME                                                                       
--------------------------------------------------                              
NAME                                                                            
--------------------------------------------------------------------------------
TITLE                                                                           
--------------------------------------------------------------------------------
TOTAL_SALARY                                                                    
------------                                                                    
Assistant Professor                                                             
       53000                                                                    
                                                                                

FIRST_NAME                                                                      
--------------------------------------------------                              
LAST_NAME                                                                       
--------------------------------------------------                              
NAME                                                                            
--------------------------------------------------------------------------------
TITLE                                                                           
--------------------------------------------------------------------------------
TOTAL_SALARY                                                                    
------------                                                                    
Sophia                                                                          
Lee                                                                             
Teaching                                                                        

FIRST_NAME                                                                      
--------------------------------------------------                              
LAST_NAME                                                                       
--------------------------------------------------                              
NAME                                                                            
--------------------------------------------------------------------------------
TITLE                                                                           
--------------------------------------------------------------------------------
TOTAL_SALARY                                                                    
------------                                                                    
Assistant Professor                                                             
       53000                                                                    
                                                                                

FIRST_NAME                                                                      
--------------------------------------------------                              
LAST_NAME                                                                       
--------------------------------------------------                              
NAME                                                                            
--------------------------------------------------------------------------------
TITLE                                                                           
--------------------------------------------------------------------------------
TOTAL_SALARY                                                                    
------------                                                                    
Emma                                                                            
Clark                                                                           
Admin                                                                           

FIRST_NAME                                                                      
--------------------------------------------------                              
LAST_NAME                                                                       
--------------------------------------------------                              
NAME                                                                            
--------------------------------------------------------------------------------
TITLE                                                                           
--------------------------------------------------------------------------------
TOTAL_SALARY                                                                    
------------                                                                    
HOD                                                                             
      110000                                                                    
                                                                                

6 rows selected.

SQL> SELECT DISTINCT s.FIRST_NAME, s.LAST_NAME
  2  FROM EMPLOYEE e
  3  JOIN EMPLOYEE s ON e.SUPERVISOR_ID = s.ID;

FIRST_NAME                                                                      
--------------------------------------------------                              
LAST_NAME                                                                       
--------------------------------------------------                              
David                                                                           
Brown                                                                           
                                                                                
James                                                                           
Taylor                                                                          
                                                                                
Daniel                                                                          
Wilson                                                                          
                                                                                

FIRST_NAME                                                                      
--------------------------------------------------                              
LAST_NAME                                                                       
--------------------------------------------------                              
Chris                                                                           
Moore                                                                           
                                                                                
John                                                                            
Smith                                                                           
                                                                                

SQL> SELECT s.ID, s.FIRST_NAME, s.LAST_NAME,
  2         COUNT(e.ID) AS TOTAL_SUPERVISEE
  3  FROM EMPLOYEE e
  4  JOIN EMPLOYEE s ON e.SUPERVISOR_ID = s.ID
  5  GROUP BY s.ID, s.FIRST_NAME, s.LAST_NAME;

        ID FIRST_NAME                                                           
---------- --------------------------------------------------                   
LAST_NAME                                          TOTAL_SUPERVISEE             
-------------------------------------------------- ----------------             
         3 James                                                                
Taylor                                                            2             
                                                                                
         4 Daniel                                                               
Wilson                                                            2             
                                                                                
         5 Chris                                                                
Moore                                                             1             
                                                                                

        ID FIRST_NAME                                                           
---------- --------------------------------------------------                   
LAST_NAME                                          TOTAL_SUPERVISEE             
-------------------------------------------------- ----------------             
         1 John                                                                 
Smith                                                             2             
                                                                                
         2 David                                                                
Brown                                                             2             
                                                                                

SQL> SELECT sc.NAME, s.ID, s.FIRST_NAME, s.LAST_NAME,
  2         COUNT(e.ID) AS TOTAL_SUPERVISEE
  3  FROM EMPLOYEE e
  4  JOIN EMPLOYEE s ON e.SUPERVISOR_ID = s.ID
  5  JOIN EMPLOYEE_ALIGNMENT ea ON e.ID = ea.EMPLOYEE_ID
  6  JOIN SCHOOL sc ON ea.SCHOOL_ID = sc.ID
  7  GROUP BY sc.NAME, s.ID, s.FIRST_NAME, s.LAST_NAME;

NAME                                                                            
--------------------------------------------------------------------------------
        ID FIRST_NAME                                                           
---------- --------------------------------------------------                   
LAST_NAME                                          TOTAL_SUPERVISEE             
-------------------------------------------------- ----------------             
Electronic Engineering                                                          
         1 John                                                                 
Smith                                                             1             
                                                                                
Computer Engineering                                                            
         1 John                                                                 
Smith                                                             1             

NAME                                                                            
--------------------------------------------------------------------------------
        ID FIRST_NAME                                                           
---------- --------------------------------------------------                   
LAST_NAME                                          TOTAL_SUPERVISEE             
-------------------------------------------------- ----------------             
                                                                                
Information Technology                                                          
         4 Daniel                                                               
Wilson                                                            1             
                                                                                
Mechanical Engineering                                                          
         3 James                                                                

NAME                                                                            
--------------------------------------------------------------------------------
        ID FIRST_NAME                                                           
---------- --------------------------------------------------                   
LAST_NAME                                          TOTAL_SUPERVISEE             
-------------------------------------------------- ----------------             
Taylor                                                            1             
                                                                                
Computer Engineering                                                            
         5 Chris                                                                
Moore                                                             1             
                                                                                
Civil Engineering                                                               

NAME                                                                            
--------------------------------------------------------------------------------
        ID FIRST_NAME                                                           
---------- --------------------------------------------------                   
LAST_NAME                                          TOTAL_SUPERVISEE             
-------------------------------------------------- ----------------             
         3 James                                                                
Taylor                                                            1             
                                                                                
Electronic Engineering                                                          
         2 David                                                                
Brown                                                             1             
                                                                                

NAME                                                                            
--------------------------------------------------------------------------------
        ID FIRST_NAME                                                           
---------- --------------------------------------------------                   
LAST_NAME                                          TOTAL_SUPERVISEE             
-------------------------------------------------- ----------------             
Mechanical Engineering                                                          
         2 David                                                                
Brown                                                             1             
                                                                                
Civil Engineering                                                               
         4 Daniel                                                               
Wilson                                                            1             

NAME                                                                            
--------------------------------------------------------------------------------
        ID FIRST_NAME                                                           
---------- --------------------------------------------------                   
LAST_NAME                                          TOTAL_SUPERVISEE             
-------------------------------------------------- ----------------             
                                                                                

9 rows selected.

SQL> SELECT e.FIRST_NAME, e.LAST_NAME
  2  FROM EMPLOYEE e
  3  JOIN EMPLOYEE_PAY ep ON e.ID = ep.EMPLOYEE_ID
  4  JOIN JOB j ON ep.JOB_ID = j.ID
  5  JOIN EMPLOYEE_ALIGNMENT ea ON e.ID = ea.EMPLOYEE_ID
  6  JOIN SCHOOL s ON ea.SCHOOL_ID = s.ID
  7  WHERE j.TITLE = 'Associate Professor'
  8  AND (s.NAME = 'Computer Engineering'
  9       OR s.NAME = 'Electronic Engineering');

FIRST_NAME                                                                      
--------------------------------------------------                              
LAST_NAME                                                                       
--------------------------------------------------                              
David                                                                           
Brown                                                                           
                                                                                
Noah                                                                            
Young                                                                           
                                                                                

SQL> SELECT e.FIRST_NAME, e.LAST_NAME
  2  FROM EMPLOYEE e
  3  JOIN EMPLOYEE_PAY ep ON e.ID = ep.EMPLOYEE_ID
  4  JOIN JOB j ON ep.JOB_ID = j.ID
  5  JOIN EMPLOYEE_ALIGNMENT ea ON e.ID = ea.EMPLOYEE_ID
  6  JOIN SCHOOL s ON ea.SCHOOL_ID = s.ID
  7  WHERE j.TITLE = 'Professor'
  8  AND (s.NAME = 'Computer Engineering'
  9       OR s.NAME = 'Mechanical Engineering')
 10  AND j.BONUS IS NULL;

FIRST_NAME                                                                      
--------------------------------------------------                              
LAST_NAME                                                                       
--------------------------------------------------                              
John                                                                            
Smith                                                                           
                                                                                

SQL> SELECT s.NAME, j.TITLE,
  2         AVG(j.SALARY),
  3         COUNT(e.ID)
  4  FROM EMPLOYEE e
  5  JOIN EMPLOYEE_PAY ep ON e.ID = ep.EMPLOYEE_ID
  6  JOIN JOB j ON ep.JOB_ID = j.ID
  7  JOIN EMPLOYEE_ALIGNMENT ea ON e.ID = ea.EMPLOYEE_ID
  8  JOIN SCHOOL s ON ea.SCHOOL_ID = s.ID
  9  GROUP BY s.NAME, j.TITLE;

NAME                                                                            
--------------------------------------------------------------------------------
TITLE                                                                           
--------------------------------------------------------------------------------
AVG(J.SALARY) COUNT(E.ID)                                                       
------------- -----------                                                       
Civil Engineering                                                               
Lab Instructor                                                                  
        40000           1                                                       
                                                                                
Mechanical Engineering                                                          
Associate Professor                                                             
        70000           1                                                       

NAME                                                                            
--------------------------------------------------------------------------------
TITLE                                                                           
--------------------------------------------------------------------------------
AVG(J.SALARY) COUNT(E.ID)                                                       
------------- -----------                                                       
                                                                                
Mechanical Engineering                                                          
Assistant Professor                                                             
        50000           1                                                       
                                                                                
Electronic Engineering                                                          
Assistant Professor                                                             

NAME                                                                            
--------------------------------------------------------------------------------
TITLE                                                                           
--------------------------------------------------------------------------------
AVG(J.SALARY) COUNT(E.ID)                                                       
------------- -----------                                                       
        50000           1                                                       
                                                                                
Information Technology                                                          
Professor                                                                       
        90000           1                                                       
                                                                                
Electronic Engineering                                                          

NAME                                                                            
--------------------------------------------------------------------------------
TITLE                                                                           
--------------------------------------------------------------------------------
AVG(J.SALARY) COUNT(E.ID)                                                       
------------- -----------                                                       
Professor                                                                       
        90000           1                                                       
                                                                                
Computer Engineering                                                            
Professor                                                                       
        90000           1                                                       
                                                                                

NAME                                                                            
--------------------------------------------------------------------------------
TITLE                                                                           
--------------------------------------------------------------------------------
AVG(J.SALARY) COUNT(E.ID)                                                       
------------- -----------                                                       
Civil Engineering                                                               
HOD                                                                             
       100000           1                                                       
                                                                                
Computer Engineering                                                            
Associate Professor                                                             
        70000           2                                                       

NAME                                                                            
--------------------------------------------------------------------------------
TITLE                                                                           
--------------------------------------------------------------------------------
AVG(J.SALARY) COUNT(E.ID)                                                       
------------- -----------                                                       
                                                                                

9 rows selected.

SQL> SELECT e2.FIRST_NAME, e2.LAST_NAME
  2  FROM EMPLOYEE e1
  3  JOIN EMPLOYEE_ALIGNMENT ea1 ON e1.ID = ea1.EMPLOYEE_ID
  4  JOIN EMPLOYEE_ALIGNMENT ea2 ON ea1.SCHOOL_ID = ea2.SCHOOL_ID
  5  JOIN EMPLOYEE e2 ON ea2.EMPLOYEE_ID = e2.ID
  6  WHERE e1.FIRST_NAME = 'John'
  7  AND e1.LAST_NAME = 'Smith'
  8  AND e2.ID <> e1.ID;

FIRST_NAME                                                                      
--------------------------------------------------                              
LAST_NAME                                                                       
--------------------------------------------------                              
David                                                                           
Brown                                                                           
                                                                                
Noah                                                                            
Young                                                                           
                                                                                

SQL> SELECT j.TITLE, COUNT(e.ID)
  2  FROM EMPLOYEE e
  3  JOIN EMPLOYEE_PAY ep ON e.ID = ep.EMPLOYEE_ID
  4  JOIN JOB j ON ep.JOB_ID = j.ID
  5  JOIN EMPLOYEE_ALIGNMENT ea ON e.ID = ea.EMPLOYEE_ID
  6  JOIN SCHOOL s ON ea.SCHOOL_ID = s.ID
  7  WHERE (j.SALARY + NVL(j.BONUS,0)) > 100000
  8  AND s.NAME <> 'Computer Engineering'
  9  GROUP BY j.TITLE;

TITLE                                                                           
--------------------------------------------------------------------------------
COUNT(E.ID)                                                                     
-----------                                                                     
HOD                                                                             
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

SQL> SELECT s.NAME, COUNT(e.ID)
  2  FROM EMPLOYEE e
  3  JOIN EMPLOYEE_ALIGNMENT ea ON e.ID = ea.EMPLOYEE_ID
  4  JOIN SCHOOL s ON ea.SCHOOL_ID = s.ID
  5  WHERE EXTRACT(YEAR FROM e.HIRE_DATE) = EXTRACT(YEAR FROM SYSDATE)-1
  6  GROUP BY s.NAME;

no rows selected

SQL> SELECT CUONT(*)
  2  FROM(
  3  SELECT EMPLOYEE_ID
  4  FROM EMPLOYEE_ALIGNMENT
  5  GROUP BY EMPLOYEE_ID
  6  HAVING COUNT(SCHOOL_ID)>1
  7  );
SELECT CUONT(*)
             *
ERROR at line 1:
ORA-00936: missing expression 


SQL> SELECT s.NAME, COUNT(e.ID)
  2  FROM EMPLOYEE e
  3  JOIN EMPLOYEE_PAY ep ON e.ID = ep.EMPLOYEE_ID
  4  JOIN JOB j ON ep.JOB_ID = j.ID
  5  JOIN EMPLOYEE_ALIGNMENT ea ON e.ID = ea.EMPLOYEE_ID
  6  JOIN SCHOOL s ON ea.SCHOOL_ID = s.ID
  7  WHERE j.TITLE = 'Professor'
  8  AND e.HIRE_DATE >= ADD_MONTHS(TRUNC(SYSDATE,'MM'), -1)
  9  AND e.HIRE_DATE < TRUNC(SYSDATE,'MM')
 10  GROUP BY s.NAME;

no rows selected

SQL> SELECT COUNT(*)
  2  FROM(
  3      SELECT EMPLOYEE_ID
  4  FROM EMPLOYEE_ALIGNMENT
  5  GROUP BY EMPLOYEE_ID
  6  HAVING COUNT(SCHOOL_ID)>1
  7  );

  COUNT(*)                                                                      
----------                                                                      
         0                                                                      

SQL> SELECT s.NAME, e.FIRST_NAME, e.LAST_NAME
  2  FROM EMPLOYEE e
  3  JOIN EMPLOYEE_PAY ep ON e.ID = ep.EMPLOYEE_ID
  4  JOIN JOB j ON ep.JOB_ID = j.ID
  5  JOIN EMPLOYEE_ALIGNMENT ea ON e.ID = ea.EMPLOYEE_ID
  6  JOIN SCHOOL s ON ea.SCHOOL_ID = s.ID
  7  WHERE (j.TITLE = 'Professor' OR j.TITLE = 'Associate Professor')
  8  AND MONTHS_BETWEEN(SYSDATE, e.HIRE_DATE)/12 > 4;

NAME                                                                            
--------------------------------------------------------------------------------
FIRST_NAME                                                                      
--------------------------------------------------                              
LAST_NAME                                                                       
--------------------------------------------------                              
Computer Engineering                                                            
John                                                                            
Smith                                                                           
                                                                                
Electronic Engineering                                                          
Daniel                                                                          
Wilson                                                                          

NAME                                                                            
--------------------------------------------------------------------------------
FIRST_NAME                                                                      
--------------------------------------------------                              
LAST_NAME                                                                       
--------------------------------------------------                              
                                                                                
Computer Engineering                                                            
David                                                                           
Brown                                                                           
                                                                                
Mechanical Engineering                                                          
Chris                                                                           

NAME                                                                            
--------------------------------------------------------------------------------
FIRST_NAME                                                                      
--------------------------------------------------                              
LAST_NAME                                                                       
--------------------------------------------------                              
Moore                                                                           
                                                                                

SQL> CREATE TABLE PROFESSOR_CE (
  2      ID NUMBER,
  3      LAST_NAME VARCHAR2(50),
  4      FIRST_NAME VARCHAR2(50)
  5  );

Table created.

SQL> INSERT INTO PROFESSOR_CE
  2  SELECT e.ID, e.LAST_NAME, e.FIRST_NAME
  3  FROM EMPLOYEE e
  4  JOIN EMPLOYEE_PAY ep ON e.ID = ep.EMPLOYEE_ID
  5  JOIN JOB j ON ep.JOB_ID = j.ID
  6  JOIN EMPLOYEE_ALIGNMENT ea ON e.ID = ea.EMPLOYEE_ID
  7  JOIN SCHOOL s ON ea.SCHOOL_ID = s.ID
  8  WHERE j.TITLE = 'Professor'
  9  AND s.NAME = 'Computer Engineering';

1 row created.

SQL> SELECT e.FIRST_NAME, e.LAST_NAME
  2  FROM EMPLOYEE e
  3  JOIN EMPLOYEE_ALIGNMENT ea ON e.ID = ea.EMPLOYEE_ID
  4  JOIN SCHOOL s ON ea.SCHOOL_ID = s.ID
  5  WHERE s.NAME = 'Computer Engineering'
  6  
SQL> UNION
SP2-0042: unknown command "UNION" - rest of line ignored.
SQL> 
SQL> SELECT e.FIRST_NAME, e.LAST_NAME
  2  FROM EMPLOYEE e
  3  JOIN EMPLOYEE_ALIGNMENT ea ON e.ID = ea.EMPLOYEE_ID
  4  JOIN SCHOOL s ON ea.SCHOOL_ID = s.ID
  5  WHERE s.NAME = 'Civil Engineering';

FIRST_NAME                                                                      
--------------------------------------------------                              
LAST_NAME                                                                       
--------------------------------------------------                              
Emma                                                                            
Clark                                                                           
                                                                                
Olivia                                                                          
Hall                                                                            
                                                                                

SQL> CREATE TABLE EMP_24012017 AS
  2  SELECT * FROM EMPLOYEE;

Table created.

SQL> INSERT INTO EMP_24012017
  2  SELECT e.*
  3  FROM EMPLOYEE e
  4  JOIN EMPLOYEE_ALIGNMENT ea ON e.ID = ea.EMPLOYEE_ID
  5  JOIN SCHOOL s ON ea.SCHOOL_ID = s.ID
  6  WHERE s.NAME = 'Computer Engineering';

3 rows created.

SQL> CREATE SEQUENCE dummy_seq
  2  START WITH 1
  3  INCREMENT BY 1
  4  NOCACHE
  5  NOCYCLE;

Sequence created.

SQL> SPOOL OFF;
