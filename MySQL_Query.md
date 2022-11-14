## Create Table
```
CREATE TABLE department(
	dept_name VARCHAR(100),
	building VARCHAR(120) NOT NULL,
	budget NUMERIC(12,2) NOT NULL,
	num_staff INT,
	PRIMARY KEY(dept_name)
)
```
## Insert into table
```
INSERT INTO department(dept_name,building,budget,num_staff)
VALUES('cse','ma wazed',12.20,10),
('cse','ma wazed',12.20,10),
('cse','ma wazed',12.20,10)
```
## Adding a column to the existing table 
```
ALTER TABLE department ADD dept_code VARCHAR(6) NOT NULL;
```
## Adding a column to the existing table after a specific column
```
ALTER TABLE department ADD dep_code VARCHAR(6) NOT NULL AFTER dept_name;
```
## Remove a column from the table
```
ALTER TABLE department DROP  dept_code
```
## Modify an existing column
```
ALTER TABLE department MODIFY dept_code VARCHAR(10)
```
## Delete a table with structure
```
DROP TABLE department;
```
## Delete a table but only data
```
DELETE FROM department;
OR 
TRUNCATE department;
```
## Insert into table from another table
```
INSERT INTO TABLE2(employeeId,employeeName)
SELECT id,firstName FROM TABLE1 WHERE CONDITION;
```
## Update Table
```
UPDATE instructor 
SET salary = salary*1.05
WHERE salary<(SELECT AVG(salary) FROM instructor);
```
## Update table with case statement
```
UPDATE instructor 
SET salary = case
	when salary<=100000 then salary*1.05
	ELSE salary*1.03
END
```
## Ordering Result
here by giving third bracket it means optional
```
SELECT * FROM TABLE_NAME 
[WHERE CONDITION];
[ORDER BY    
    COLUMN1 [ASC|DESC],
	COLUMN2 [ASC|DESC],
	...];
	
SELECT * FROM instructor 
ORDER BY dept_name DESC, salary ASC;    
``` 
## Limiting Number or Row in output
``` 
SELECT * 
FROM TABLE_NAME
[LIMIT n]

SELECT *
FROM TABLE NAME 
[LIMIT m,n]
```
here, m is the number of row to skip
and n is the number of row to show.

## The not in(...) operator
```
SELECT *
FROM instructor
WHERE NAME NOT IN ('pranto','Zahid');

SELECT *
FROM instructor
WHERE id IN (SELECT id FROM instructor WHERE id<500);
```
## The Between Operator
```
The BETWEEN Operator
SELECT sname
FROM instructor
WHERE salary<=10000 AND salary>=5000;
```
this can be writen with BETWEEN operator also
```
SELECT sname 
FROM instructor
WHERE salary BETWEEN 5000 AND 10000;	
```
## IS NULL Operator
```
SELECT * FROM instructor
WHERE salary <=> NULL 

SELECT * FROM instructor
WHERE salary IS NULL
```
## Like Operator
% - The percent sign represent zero, one or multiple characters <br>
_ - The underscore represents a single character
```
SELECT * FROM instructor 
WHERE id LIKE '%5_'
```

## Aggregate Functions
* Find the average salary of the instructors in the CSE department
```
SELECT AVG(salary)
FROM instructor
WHERE dept_name = 'CSE'
```
* Find the number of departments in the instructor relation
```
SELECT COUNT(DISTINCT dept_name)
FROM instructor
```
* Find the number of tuples in the instructor relation
```
SELECT COUNT(*) AS num_row
FROM instructor
```
If we count number of row by dep_name or any other attributes and if there exists any null values then count functions will simply ignore that value. That's why we need to count touples with * notation.

## Aggregate functions Group by
```
SELECT dept_name,AVG(salary) AS avg_salary
FROM instructor
GROUP BY dept_name;
```
* Find the number of instructors in each department
```
SELECT dept_name,COUNT(id) AS num_of_teacher
FROM instructor 
GROUP BY dept_name;
```

