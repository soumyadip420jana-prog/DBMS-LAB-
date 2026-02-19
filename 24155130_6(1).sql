SQL> CREATE TABLE st5(
  2  RollNo INT PRIMARY KEY,
  3  
SQL> 
SQL> CREATE TABLE STUDENT (
  2      ROLLNO NUMBER PRIMARY KEY,
  3      NAME VARCHAR2(50)
  4  );

Table created.

SQL> CREATE TABLE COURSES (
  2      CID VARCHAR2(10) PRIMARY KEY,
  3      CNAME VARCHAR2(50),
  4      CREDITS NUMBER
  5  );

Table created.

SQL> CREATE TABLE REGISTRATION (
  2      ROLLNO NUMBER,
  3      CID VARCHAR2(10),
  4      GRADE NUMBER,
  5      PRIMARY KEY (ROLLNO, CID),
  6      FOREIGN KEY (ROLLNO) REFERENCES STUDENT(ROLLNO),
  7      FOREIGN KEY (CID) REFERENCES COURSES(CID)
  8  );

Table created.

SQL> INSERT INTO STUDENT VALUES (1, 'abc');

1 row created.

SQL> INSERT INTO STUDENT VALUES (2, 'pqr');

1 row created.

SQL> INSERT INTO STUDENT VALUES (3, 'abc');

1 row created.

SQL> INSERT INTO STUDENT VALUES (4, 'xyz');

1 row created.

SQL> INSERT INTO COURSES VALUES ('C101', 'DBMS', 3);

1 row created.

SQL> INSERT INTO COURSES VALUES ('C102', 'DS', 4);

1 row created.

SQL> INSERT INTO COURSES VALUES ('C103', 'OS', 4);

1 row created.

SQL> INSERT INTO COURSES VALUES ('C104', 'CA', 4);

1 row created.

SQL> INSERT INTO REGISTRATION VALUES (1, 'C101', 8);

1 row created.

SQL> INSERT INTO REGISTRATION VALUES (1, 'C103', 9);

1 row created.

SQL> INSERT INTO REGISTRATION VALUES (2, 'C104', 10);

1 row created.

SQL> INSERT INTO REGISTRATION VALUES (2, 'C103', 9);

1 row created.

SQL> INSERT INTO REGISTRATION VALUES (3, 'C101', 8);

1 row created.

SQL> INSERT INTO REGISTRATION VALUES (3, 'C103', 7);

1 row created.

SQL> INSERT INTO REGISTRATION VALUES (3, 'C104', 8);

1 row created.

SQL> SELECT * FROM STUDENT;

    ROLLNO NAME                                                                 
---------- --------------------------------------------------                   
         1 abc                                                                  
         2 pqr                                                                  
         3 abc                                                                  
         4 xyz                                                                  

SQL> SELECT * FROM COURSES;

CID        CNAME                                                 CREDITS        
---------- -------------------------------------------------- ----------        
C101       DBMS                                                        3        
C102       DS                                                          4        
C103       OS                                                          4        
C104       CA                                                          4        

SQL> SELECT * FROM REGISTRATION;

    ROLLNO CID             GRADE                                                
---------- ---------- ----------                                                
         1 C101                8                                                
         1 C103                9                                                
         2 C104               10                                                
         2 C103                9                                                
         3 C101                8                                                
         3 C103                7                                                
         3 C104                8                                                

7 rows selected.

SQL> SELECT S.ROLLNO,S.NAME,S.AGE
  2  FROM STUDENT AS S,REGISTATION AS R,
  3  WHERE R.CID ='C101' AND R.ROLLNO=S.ROLLNO;
FROM STUDENT AS S,REGISTATION AS R,
             *
ERROR at line 2:
ORA-00933: SQL command not properly ended 


SQL> SELECT S.ROLLNO, S.NAME
  2  FROM STUDENT S, REGISTRATION R
  3  WHERE R.CID = 'C101'
  4  AND R.ROLLNO = S.ROLLNO;

    ROLLNO NAME                                                                 
---------- --------------------------------------------------                   
         1 abc                                                                  
         3 abc                                                                  

SQL> SELECT S.ROLLNO, S.NAME, R.CID, R.GRADE
  2  FROM STUDENT S
  3  RIGHT JOIN REGISTRATION R
  4  ON S.ROLLNO = R.ROLLNO;

    ROLLNO NAME                                               CID               
---------- -------------------------------------------------- ----------        
     GRADE                                                                      
----------                                                                      
         1 abc                                                C103              
         9                                                                      
                                                                                
         1 abc                                                C101              
         8                                                                      
                                                                                
         2 pqr                                                C103              
         9                                                                      
                                                                                

    ROLLNO NAME                                               CID               
---------- -------------------------------------------------- ----------        
     GRADE                                                                      
----------                                                                      
         2 pqr                                                C104              
        10                                                                      
                                                                                
         3 abc                                                C104              
         8                                                                      
                                                                                
         3 abc                                                C103              
         7                                                                      
                                                                                

    ROLLNO NAME                                               CID               
---------- -------------------------------------------------- ----------        
     GRADE                                                                      
----------                                                                      
         3 abc                                                C101              
         8                                                                      
                                                                                

7 rows selected.

SQL> SELECT S.ROLLNO, S.NAME, R.CID, R.GRADE
  2  FROM STUDENT S
  3  LEFT JOIN REGISTRATION R
  4  ON S.ROLLNO = R.ROLLNO;

    ROLLNO NAME                                               CID               
---------- -------------------------------------------------- ----------        
     GRADE                                                                      
----------                                                                      
         1 abc                                                C101              
         8                                                                      
                                                                                
         1 abc                                                C103              
         9                                                                      
                                                                                
         2 pqr                                                C104              
        10                                                                      
                                                                                

    ROLLNO NAME                                               CID               
---------- -------------------------------------------------- ----------        
     GRADE                                                                      
----------                                                                      
         2 pqr                                                C103              
         9                                                                      
                                                                                
         3 abc                                                C101              
         8                                                                      
                                                                                
         3 abc                                                C103              
         7                                                                      
                                                                                

    ROLLNO NAME                                               CID               
---------- -------------------------------------------------- ----------        
     GRADE                                                                      
----------                                                                      
         3 abc                                                C104              
         8                                                                      
                                                                                
         4 xyz                                                                  
                                                                                
                                                                                

8 rows selected.

SQL> SELECT S.ROLLNO, S.NAME, R.CID, R.GRADE
  2  FROM STUDENT S
  3  FULL OUTER JOIN REGISTRATION R
  4  ON S.ROLLNO = R.ROLLNO;

    ROLLNO NAME                                               CID               
---------- -------------------------------------------------- ----------        
     GRADE                                                                      
----------                                                                      
         1 abc                                                C101              
         8                                                                      
                                                                                
         1 abc                                                C103              
         9                                                                      
                                                                                
         2 pqr                                                C104              
        10                                                                      
                                                                                

    ROLLNO NAME                                               CID               
---------- -------------------------------------------------- ----------        
     GRADE                                                                      
----------                                                                      
         2 pqr                                                C103              
         9                                                                      
                                                                                
         3 abc                                                C101              
         8                                                                      
                                                                                
         3 abc                                                C103              
         7                                                                      
                                                                                

    ROLLNO NAME                                               CID               
---------- -------------------------------------------------- ----------        
     GRADE                                                                      
----------                                                                      
         3 abc                                                C104              
         8                                                                      
                                                                                
         4 xyz                                                                  
                                                                                
                                                                                

8 rows selected.

SQL> spool off;
