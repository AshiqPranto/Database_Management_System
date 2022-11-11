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


