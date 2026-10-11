/*

Question 7 of 15 Highest-paid employee in each department
Consider this EMP table:
EMP_ID	NAME	DEPT_ID	SALARY
1	Amit	10	90,000
2	Priya	10	90,000
3	Rahul	10	70,000
4	Neha	20	80,000
5	Karan	20	60,000
6	Sneha	30	50,000
Task: Write an Oracle SQL query to return the highest-paid employee(s) in each department, including all employees tied for the highest salary.
Expected output:
NAME	DEPT_ID	SALARY
Amit	10	90,000
Priya	10	90,000
Neha	20	80,000
Sneha	30	50,000

*/

select name , dept_id , salary
from 
(
    select e.* , dense_rank() over (partition by dept_id order by salary desc) as rnk from emp e
    
)

where rnk=1;
