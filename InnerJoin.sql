/*

Question 4 of 15 INNER JOIN vs LEFT JOIN
Consider these tables:
EMPLOYEE
ID	NAME	DEPT_ID
1	Amit	10
2	Priya	20
3	Rahul	NULL
4	Neha	30
DEPARTMENT
DEPT_ID	DEPT_NAME
10	IT
20	HR
40	Finance
Task: Write an Oracle SQL query to display all employees along with their department names, including employees who have no matching department.
Expected output:
NAME	DEPT_NAME
Amit	IT
Priya	HR
Rahul	NULL
Neha	NULL

*/

select a.name , b.dept_name 
from emp a Left join  dept b 
on a.dept_id = b.dept_id;