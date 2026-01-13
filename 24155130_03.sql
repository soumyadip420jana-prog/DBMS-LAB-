SQL> ALTER TABLE Employee DROP EmpName
  2  ALTER TABLE Employee DROP COLLUMN  Salary;
ALTER TABLE Employee DROP EmpName
                          *
ERROR at line 1:
ORA-00905: missing keyword 


SQL> ALTER TABLE Employee DROP COLLUMN  EmpName;
ALTER TABLE Employee DROP COLLUMN  EmpName
                          *
ERROR at line 1:
ORA-00905: missing keyword 


SQL> ALTER TABLE Employee DROP COLUMN  EmpName;

Table altered.

SQL> describe Employee
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPID                                              NUMBER(5)
 GENDER                                             CHAR(1)
 SALARY                                             NUMBER(10,2)
 DEPT                                               VARCHAR2(20)
 JOININGDATE                                        DATE

SQL> DELETE FROM Employee;

10 rows deleted.

SQL> DROP TABLE Employee;

Table dropped.

SQL> CREATE TABLE student_24155130 (
  2      Roll NUMBER(5),
  3      Name VARCHAR2(20),
  4      City VARCHAR2(20),
  5      Age NUMBER(2),
  6      CGPA NUMBER(4,2)
  7  );

Table created.

SQL> INSERT INTO STUDENT VALUES (24155130,'Soumyadip','KGP',19,9.0);
INSERT INTO STUDENT VALUES (24155130,'Soumyadip','KGP',19,9.0)
            *
ERROR at line 1:
ORA-00913: too many values 


SQL> INSERT INTO STUDENT VALUES (24155130,'Soumyadip','KGP',19,9.0);
INSERT INTO STUDENT VALUES (24155130,'Soumyadip','KGP',19,9.0)
            *
ERROR at line 1:
ORA-00913: too many values 


SQL> INSERT INTO STUDENT
  2  VALUES (24155130, 'Soumyadip', 'KGP', 19, 9.0);
INSERT INTO STUDENT
            *
ERROR at line 1:
ORA-00913: too many values 


SQL> INSERT INTO student_24155130 VALUES(55130,'soumyadip',kgp,21,9.0);
INSERT INTO student_24155130 VALUES(55130,'soumyadip',kgp,21,9.0)
                                                      *
ERROR at line 1:
ORA-00984: column not allowed here 


SQL> INSERT INTO student_24155130 VALUES(55130,'soumyadip','kgp',21,9.0);

1 row created.

SQL> INSERT INTO student_24155130 VALUES (24153, 'Rohit', 'Patna', 20, 7.80);

1 row created.

SQL> INSERT INTO student_24155130 VALUES (24154, 'Anita', 'Bhubaneswar', 22, 9.20);

1 row created.

SQL> INSERT INTO student_24155130 VALUES (24155, 'Suman', 'Kolkata', 18, 8.00);

1 row created.

SQL> INSERT INTO student_24155130 VALUES (24156, 'Rita', 'Bhubaneswar', 19, 9.10);

1 row created.

SQL> INSERT INTO student_24155130 VALUES (24157, 'Arjun', 'Delhi', 23, 7.50);

1 row created.

SQL> INSERT INTO student_24155130 VALUES (24158, 'Asha', 'Patna', 20, 8.90);

1 row created.

SQL> INSERT INTO student_24155130 VALUES (24159, 'Manoj', 'Delhi', 21, 6.90);

1 row created.

SQL> INSERT INTO student_24155130 VALUES (24160, 'Ravi', 'Bhubaneswar', 19, 8.70);

1 row created.

SQL> INSERT INTO student_24155130 VALUES (24161, 'Neha', 'Kolkata', 20, 8.30);

1 row created.

SQL> 
SQL> COMMIT;

Commit complete.

SQL> SELECT Roll, Name, CGPA FROM student_24155130;

      ROLL NAME                       CGPA                                      
---------- -------------------- ----------                                      
     55130 soumyadip                     9                                      
     24153 Rohit                       7.8                                      
     24154 Anita                       9.2                                      
     24155 Suman                         8                                      
     24156 Rita                        9.1                                      
     24157 Arjun                       7.5                                      
     24158 Asha                        8.9                                      
     24159 Manoj                       6.9                                      
     24160 Ravi                        8.7                                      
     24161 Neha                        8.3                                      

10 rows selected.

SQL> SELECT DISTINCT Name FROM student_24155130;

NAME                                                                            
--------------------                                                            
Asha                                                                            
Rohit                                                                           
Anita                                                                           
Arjun                                                                           
Manoj                                                                           
Neha                                                                            
Suman                                                                           
Ravi                                                                            
Rita                                                                            
soumyadip                                                                       

10 rows selected.

SQL> SELECT Name, Age, Age + 3 AS "Age After 3 Years"
  2  FROM student_24155130;

NAME                        AGE Age After 3 Years                               
-------------------- ---------- -----------------                               
soumyadip                    21                24                               
Rohit                        20                23                               
Anita                        22                25                               
Suman                        18                21                               
Rita                         19                22                               
Arjun                        23                26                               
Asha                         20                23                               
Manoj                        21                24                               
Ravi                         19                22                               
Neha                         20                23                               

10 rows selected.

SQL> SELECT name,city AS address FROM student_24155130;

NAME                 ADDRESS                                                    
-------------------- --------------------                                       
soumyadip            kgp                                                        
Rohit                Patna                                                      
Anita                Bhubaneswar                                                
Suman                Kolkata                                                    
Rita                 Bhubaneswar                                                
Arjun                Delhi                                                      
Asha                 Patna                                                      
Manoj                Delhi                                                      
Ravi                 Bhubaneswar                                                
Neha                 Kolkata                                                    

10 rows selected.

SQL> SELECT Roll, Name, City
  2  FROM student_24155130
  3  WHERE City = ' Bhubaneswar';

no rows selected

SQL> SELECT Roll, Name, City
  2  FROM student_24155130
  3  WHERE City = 'Delhi';

      ROLL NAME                 CITY                                            
---------- -------------------- --------------------                            
     24157 Arjun                Delhi                                           
     24159 Manoj                Delhi                                           

SQL> SELECT Roll, Name, Age FROM student_24155130 WHERE CGPA = 9.0;

      ROLL NAME                        AGE                                      
---------- -------------------- ----------                                      
     55130 soumyadip                    21                                      

SQL> SELECT Roll, Name, Age FROM student_24155130 WHERE Age > 20;

      ROLL NAME                        AGE                                      
---------- -------------------- ----------                                      
     55130 soumyadip                    21                                      
     24154 Anita                        22                                      
     24157 Arjun                        23                                      
     24159 Manoj                        21                                      

SQL> SELECT Roll, Name, Age FROM student_24155130 WHERE Age < 20;

      ROLL NAME                        AGE                                      
---------- -------------------- ----------                                      
     24155 Suman                        18                                      
     24156 Rita                         19                                      
     24160 Ravi                         19                                      

SQL> SELECT Roll, Name, Age FROM student_24155130 WHERE Age >= 20;

      ROLL NAME                        AGE                                      
---------- -------------------- ----------                                      
     55130 soumyadip                    21                                      
     24153 Rohit                        20                                      
     24154 Anita                        22                                      
     24157 Arjun                        23                                      
     24158 Asha                         20                                      
     24159 Manoj                        21                                      
     24161 Neha                         20                                      

7 rows selected.

SQL> SELECT Roll, Name, Age FROM student_24155130 WHERE Age <= 20;

      ROLL NAME                        AGE                                      
---------- -------------------- ----------                                      
     24153 Rohit                        20                                      
     24155 Suman                        18                                      
     24156 Rita                         19                                      
     24158 Asha                         20                                      
     24160 Ravi                         19                                      
     24161 Neha                         20                                      

6 rows selected.

SQL> SELECT Roll, Name, Age FROM student_24155130 WHERE Name != 'Amit';

      ROLL NAME                        AGE                                      
---------- -------------------- ----------                                      
     55130 soumyadip                    21                                      
     24153 Rohit                        20                                      
     24154 Anita                        22                                      
     24155 Suman                        18                                      
     24156 Rita                         19                                      
     24157 Arjun                        23                                      
     24158 Asha                         20                                      
     24159 Manoj                        21                                      
     24160 Ravi                         19                                      
     24161 Neha                         20                                      

10 rows selected.

SQL> SELECT Roll, Name, Age
  2  FROM student_24155130
  3  WHERE Age > ANY (20,24,18);

      ROLL NAME                        AGE                                      
---------- -------------------- ----------                                      
     55130 soumyadip                    21                                      
     24153 Rohit                        20                                      
     24154 Anita                        22                                      
     24156 Rita                         19                                      
     24157 Arjun                        23                                      
     24158 Asha                         20                                      
     24159 Manoj                        21                                      
     24160 Ravi                         19                                      
     24161 Neha                         20                                      

9 rows selected.

SQL> SELECT Roll, Name, Age FROM student_24155130 WHERE Name LIKE 'A%';

      ROLL NAME                        AGE                                      
---------- -------------------- ----------                                      
     24154 Anita                        22                                      
     24157 Arjun                        23                                      
     24158 Asha                         20                                      

SQL> SELECT Roll, Name, Age FROM student_24155130 WHERE Name LIKE '%a';

      ROLL NAME                        AGE                                      
---------- -------------------- ----------                                      
     24154 Anita                        22                                      
     24156 Rita                         19                                      
     24158 Asha                         20                                      
     24161 Neha                         20                                      

SQL> SELECT Roll, Name, Age FROM student_24155130 WHERE Name LIKE '%r%';

      ROLL NAME                        AGE                                      
---------- -------------------- ----------                                      
     24157 Arjun                        23                                      

SQL> SELECT Roll, Name, Age FROM student_24155130 WHERE Name LIKE '_r%';

      ROLL NAME                        AGE                                      
---------- -------------------- ----------                                      
     24157 Arjun                        23                                      

SQL> SELECT Roll, Name, Age FROM student_24155130 WHERE Name LIKE 'A_';

no rows selected

SQL> SELECT Roll, Name, Age FROM student_24155130 WHERE Name LIKE 'A__%';

      ROLL NAME                        AGE                                      
---------- -------------------- ----------                                      
     24154 Anita                        22                                      
     24157 Arjun                        23                                      
     24158 Asha                         20                                      

SQL> SELECT Roll, Name, Age FROM student_24155130 WHERE Name LIKE 'A%o';

no rows selected

SQL> SELECT Name, City, Age
  2  FROM student_24155130
  3  WHERE Age BETWEEN 10 AND 20;

NAME                 CITY                        AGE                            
-------------------- -------------------- ----------                            
Rohit                Patna                        20                            
Suman                Kolkata                      18                            
Rita                 Bhubaneswar                  19                            
Asha                 Patna                        20                            
Ravi                 Bhubaneswar                  19                            
Neha                 Kolkata                      20                            

6 rows selected.

SQL> SELECT Name, City, Age
  2  FROM student_24155130
  3  WHERE City IN ('Bhubaneswar', 'Delhi', 'Patna');

NAME                 CITY                        AGE                            
-------------------- -------------------- ----------                            
Rohit                Patna                        20                            
Anita                Bhubaneswar                  22                            
Rita                 Bhubaneswar                  19                            
Arjun                Delhi                        23                            
Asha                 Patna                        20                            
Manoj                Delhi                        21                            
Ravi                 Bhubaneswar                  19                            

7 rows selected.

SQL> SELECT Name, City, Age
  2  FROM student_24155130
  3  ORDER BY City ASC;

NAME                 CITY                        AGE                            
-------------------- -------------------- ----------                            
Rita                 Bhubaneswar                  19                            
Ravi                 Bhubaneswar                  19                            
Anita                Bhubaneswar                  22                            
Arjun                Delhi                        23                            
Manoj                Delhi                        21                            
Suman                Kolkata                      18                            
Neha                 Kolkata                      20                            
Asha                 Patna                        20                            
Rohit                Patna                        20                            
soumyadip            kgp                          21                            

10 rows selected.

SQL> SELECT Name, City, Age
  2  FROM student_24155130
  3  ORDER BY CGPA DESC;

NAME                 CITY                        AGE                            
-------------------- -------------------- ----------                            
Anita                Bhubaneswar                  22                            
Rita                 Bhubaneswar                  19                            
soumyadip            kgp                          21                            
Asha                 Patna                        20                            
Ravi                 Bhubaneswar                  19                            
Neha                 Kolkata                      20                            
Suman                Kolkata                      18                            
Rohit                Patna                        20                            
Arjun                Delhi                        23                            
Manoj                Delhi                        21                            

10 rows selected.

SQL> SELECT Name, Age, CGPA
  2  FROM student_24155130
  3  ORDER BY CGPA ASC, Age ASC, Name ASC;

NAME                        AGE       CGPA                                      
-------------------- ---------- ----------                                      
Manoj                        21        6.9                                      
Arjun                        23        7.5                                      
Rohit                        20        7.8                                      
Suman                        18          8                                      
Neha                         20        8.3                                      
Ravi                         19        8.7                                      
Asha                         20        8.9                                      
soumyadip                    21          9                                      
Rita                         19        9.1                                      
Anita                        22        9.2                                      

10 rows selected.

SQL> SPOOL OFF;
