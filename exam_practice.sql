SELECT * FROM course WHERE course_id LIKE '%101'

SELECT * FROM course WHERE dept_name = 'Comp. Science'AND credits = 3

CREATE TABLE department(
	dept_name VARCHAR(100),
	building VARCHAR(120) NOT NULL,
	budget NUMERIC(12,2) NOT NULL,
	num_staff INT,
	PRIMARY KEY(dept_name)
)

// INSERT VALUE TO TABLE
INSERT INTO department(dept_name,building,budget,num_staff)
VALUES('cse','ma wazed',12.20,10),
('cse','ma wazed',12.20,10),
('cse','ma wazed',12.20,10)


//adding a COLUMN TO the TABLE

ALTER TABLE department ADD dept_code VARCHAR(6) NOT NULL;

// adding COLUMN AFTER a SPECIFIC COLUMN 
ALTER TABLE department ADD dep_code VARCHAR(6) NOT NULL AFTER dept_name;

// removing a COLUMN
ALTER TABLE department DROP  dept_code

// MODIFY a COLUMN
ALTER TABLE department MODIFY dept_code VARCHAR(10)

//deleting the whole TABLE WITH structure
DROP TABLE department

// deleting ONLY DATA (keep TABLE structure)
DELETE FROM department;
OR 
TRUNCATE department;

//INSERT NEW DATA FROM another TABLE
INSERT INTO TABLE2(employeeId,employeeName)
SELECT id,firstName FROM TABLE1 WHERE CONDITION;


// UPDATE TABLE QUERY
UPDATE instructor 
SET salary = salary*1.05
WHERE salary<(SELECT AVG(salary) FROM instructor);

// UPDATE TABLE QUERY whith case statement
UPDATE instructor 
SET salary = case
	when salary<=100000 then salary*1.05
	ELSE salary*1.03
END 

// ordering result
SELECT * FROM TABLE_NAME 
[WHERE CONDITION];
[ORDER BY 
	COLUMN1 [ASC|DESC],
	COLUMN2 [ASC|DESC],
	...]
	
SELECT * FROM instructor 
ORDER BY dept_name DESC, salary ASC;

//Limiting NUMBER OR ROW IN output
SELECT * 
FROM TABLE_NAME
[LIMIT n]

SELECT *
FROM TABLE NAME 
[LIMIT m,n]

// The NOT IN(...) operator
SELECT *
FROM instructor
WHERE NAME NOT  IN ('pranto','Zahid');

SELECT *
FROM instructor
WHERE id IN (SELECT id FROM instructor WHERE id<500);

// The BETWEEN Operator
SELECT sname
FROM instructor
WHERE salary<=10000 AND salary>=5000;

this can be writen WITH BETWEEN operator

SELECT sname 
FROM instructor
WHERE salary BETWEEN 5000 AND 10000;	

// IS NULL operator
SELECT * FROM instructor
WHERE salary <=> NULL 

SELECT * FROM instructor
WHERE salary IS NULL

//Like Operator
% - The percent sign represent zero, one or multiple characters <br>
_ - The underscore represents a single CHARACTER
SELECT * FROM instructor 
WHERE id LIKE '%5_'

//Find the average salary of the instructors in the CSE department
SELECT AVG(salary)
FROM instructor
WHERE dept_name = 'CSE'

//Find the number of departments in the instructor relation
SELECT COUNT(DISTINCT dept_name)
FROM instructor

//Find the number of tuples in the instructor relation
SELECT COUNT(*) AS num_row
FROM instructor

//Aggregate functions Group by

SELECT dept_name,AVG(salary) AS avg_salary
FROM instructor
GROUP BY dept_name;

//Find the number of instructors in each department
SELECT dept_name,COUNT(id) AS num_of_teacher
FROM instructor 
GROUP BY dept_name;



