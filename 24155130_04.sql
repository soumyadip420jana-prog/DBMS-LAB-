SQL> CREATE TABLE ST(
  2  ROLL INTERGER NOT NULL,
  3  name VARCHAR(30),
  4  cgpa NUMBER(5,2));
ROLL INTERGER NOT NULL,
     *
ERROR at line 2:
ORA-00902: invalid datatype 


SQL> CREATE TABLE ST (
  2    ROLL INTEGER NOT NULL,
  3    name VARCHAR2(30),
  4    cgpa NUMBER(5,2)
  5  );

Table created.

SQL> INSERT INTO ST
  2  VALUES (1, 'Amit', 8.5);

1 row created.

SQL> SELECT * FROM st;

      ROLL NAME                                 CGPA                            
---------- ------------------------------ ----------                            
         1 Amit                                  8.5                            

SQL> INSERT INTO ST
  2  VALUES(138,'Hunu',10);

1 row created.

SQL> SELECT * FROM st;

      ROLL NAME                                 CGPA                            
---------- ------------------------------ ----------                            
         1 Amit                                  8.5                            
       138 Hunu                                   10                            

SQL> SELECT * FROM ST;

      ROLL NAME                                 CGPA                            
---------- ------------------------------ ----------                            
         1 Amit                                  8.5                            
       138 Hunu                                   10                            

SQL> DESCRIBE ST;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLL                                      NOT NULL NUMBER(38)
 NAME                                               VARCHAR2(30)
 CGPA                                               NUMBER(5,2)

SQL> CREATE TABLE ST1(
  2  ROLL INTEGER,
  3  NAME VARCHAR(20),
  4  Contact INTEGER
  5  );

Table created.

SQL> INSERT INTO ST1
  2  VALUE(1,'Amit Sharma',98765543210);
VALUE(1,'Amit Sharma',98765543210)
      *
ERROR at line 2:
ORA-00928: missing SELECT keyword 


SQL> INSERT INTO ST1
  2  VALUES(1,'Amit Sharma',98765543210);

1 row created.

SQL> SELECT ROLL*FROM ST1;
SELECT ROLL*FROM ST1
            *
ERROR at line 1:
ORA-00936: missing expression 


SQL> SELECT ROLL FROM ST1;

      ROLL                                                                      
----------                                                                      
         1                                                                      

SQL> SELECT ROLL,NAME FROM ST1;

      ROLL NAME                                                                 
---------- --------------------                                                 
         1 Amit Sharma                                                          

SQL> SELECT *FROM ST1;

      ROLL NAME                    CONTACT                                      
---------- -------------------- ----------                                      
         1 Amit Sharma          9.8766E+10                                      

SQL> DROP TABLE ST1;

Table dropped.

SQL> CREATE TABLE ST1 (
  2    Roll_No NUMBER(3) NOT NULL,
  3    Name VARCHAR2(30) NOT NULL,
  4    Contact NUMBER(10) NOT NULL
  5  );

Table created.

SQL> INSERT INTO STUDENT VALUES (1, 'Amit Sharma', 9876543210);
INSERT INTO STUDENT VALUES (1, 'Amit Sharma', 9876543210)
            *
ERROR at line 1:
ORA-00947: not enough values 


SQL> INSERT INTO STUDENT VALUES (2, 'Neha Verma', 9123456780);
INSERT INTO STUDENT VALUES (2, 'Neha Verma', 9123456780)
            *
ERROR at line 1:
ORA-00947: not enough values 


SQL> INSERT INTO STUDENT VALUES (3, 'Rahul Singh', 9988776655);
INSERT INTO STUDENT VALUES (3, 'Rahul Singh', 9988776655)
            *
ERROR at line 1:
ORA-00947: not enough values 


SQL> INSERT INTO STUDENT VALUES (4, 'Priya Gupta', 9090909090);
INSERT INTO STUDENT VALUES (4, 'Priya Gupta', 9090909090)
            *
ERROR at line 1:
ORA-00947: not enough values 


SQL> INSERT INTO STUDENT VALUES (5, 'Ankit Kumar', 9012345678);
INSERT INTO STUDENT VALUES (5, 'Ankit Kumar', 9012345678)
            *
ERROR at line 1:
ORA-00947: not enough values 


SQL> INSERT INTO ST1
  2  VALUES (1, 'Amit Sharma', 9876543210);

1 row created.

SQL> INSERT INTO ST1
  2  VALUES (2, 'Neha Verma', 9123456780);

1 row created.

SQL> INSERT INTO ST1
  2  VALUES (3, 'Rahul Singh', 9988776655);

1 row created.

SQL> INSERT INTO ST1
  2  VALUES (4, 'Priya Gupta', 9090909090);

1 row created.

SQL> INSERT INTO ST1
  2  VALUES (5, 'Ankit Kumar', 9012345678);

1 row created.

SQL> SELECT * FROM ST1;

   ROLL_NO NAME                              CONTACT                            
---------- ------------------------------ ----------                            
         1 Amit Sharma                    9876543210                            
         2 Neha Verma                     9123456780                            
         3 Rahul Singh                    9988776655                            
         4 Priya Gupta                    9090909090                            
         5 Ankit Kumar                    9012345678                            

SQL> SELECT * FROM ST1 WHERE ROLL_NO=2;

   ROLL_NO NAME                              CONTACT                            
---------- ------------------------------ ----------                            
         2 Neha Verma                     9123456780                            

SQL> SELECT COUNT(*)FROM ST1;

  COUNT(*)                                                                      
----------                                                                      
         5                                                                      

SQL> SELECT MAX(ROLL_NO)FROM ST1;

MAX(ROLL_NO)                                                                    
------------                                                                    
           5                                                                    

SQL> CREATE TABLE COURSE (
  2    Course_ID VARCHAR2(5) NOT NULL,
  3    Course_Name VARCHAR2(40) NOT NULL,
  4    Credit NUMBER(1) NOT NULL
  5  );

Table created.

SQL> INSERT INTO COURSE
  2  VALUES ('C101', 'Database Systems', 4);

1 row created.

SQL> INSERT INTO COURSE
  2  VALUES ('C102', 'Operating Systems', 3);

1 row created.

SQL> INSERT INTO COURSE
  2  VALUES ('C103', 'Computer Networks', 3);

1 row created.

SQL> INSERT INTO COURSE
  2  VALUES ('C104', 'Software Engineering', 4);

1 row created.

SQL> insert into course
  2  values('C105','Data Structure',4);

1 row created.

SQL> SELECT * FROM COURSE;

COURS COURSE_NAME                                  CREDIT                       
----- ---------------------------------------- ----------                       
C101  Database Systems                                  4                       
C102  Operating Systems                                 3                       
C103  Computer Networks                                 3                       
C104  Software Engineering                              4                       
C105  Data Structure                                    4                       

SQL> SELECT SUM(CREDIT) FROM COURSE;

SUM(CREDIT)                                                                     
-----------                                                                     
         18                                                                     

SQL> SELECT MAX(CREDIT) FROM COURSE;

MAX(CREDIT)                                                                     
-----------                                                                     
          4                                                                     

SQL> SELECT AVG(CREDIT) FROM COURSE;

AVG(CREDIT)                                                                     
-----------                                                                     
        3.6                                                                     

SQL> SPOOL OFF;
