/*

Consider this EMPLOYEE table:
ID	NAME	DEPARTMENT_ID	SALARY
1	Amit	10	50,000
2	Priya	10	90,000
3	Rahul	20	60,000
4	Neha	20	80,000
5	Karan	30	40,000
Task: Write an Oracle SQL query to find departments whose average salary is greater than 60,000, considering only employees earning at least 50,000.
Return department_id and average_salary.
Your query needs to apply both conditions correctly: one to individual employees and the other to department-level averages.

*/

select deptId , avg(salary) from emp where salary>=50000
group by deptId
Having avg(salary)>60000;