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

