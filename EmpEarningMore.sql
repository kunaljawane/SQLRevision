/*


Question 5 of 15  Employees earning more than their managers
Fundamentals
 Oracle SQL

Consider this EMP table:
EMP_ID	NAME	SALARY	MANAGER_ID
1	Amit	90,000	NULL
2	Priya	70,000	1
3	Rahul	95,000	1
4	Neha	80,000	2
5	Karan	60,000	2
Here, MANAGER_ID references the EMP_ID of another employee in the same table.
Task: Write an Oracle SQL query to find employees who earn more than their direct manager.
Expected output:
EMPLOYEE_NAME	EMPLOYEE_SALARY	MANAGER_NAME	MANAGER_SALARY
Rahul	95,000	Amit	90,000
Neha	80,000	Priya	70,000

*/

select  e.name as EMPLOYEE_NAME,
        e.salary as EMPLOYEE_SALARY,
        m.name as MANAGER_NAME,
        m.salary as MANAGER_SALARY
from emp e join emp m 
on e.manager_id = m.emp_id
where e.salary>m.salary;




