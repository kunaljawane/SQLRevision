/*

op 3 salaries in each department
Consider the EMP table:
EMP_ID	NAME	DEPT_ID	SALARY
1	Amit	10	100,000
2	Priya	10	90,000
3	Rahul	10	90,000
4	Neha	10	80,000
5	Karan	10	70,000
6	Sneha	20	85,000
7	Varun	20	75,000
8	Meera	20	65,000
9	Rohan	20	65,000
Task: Write an Oracle SQL query to return employees whose salaries fall within the top 3 distinct salary levels in each department.
Expected result includes:
- Department 10: salaries 100,000, 90,000, and 80,000.
- Department 20: salaries 85,000, 75,000, and 65,000.
Both employees earning 90,000 in department 10 and both employees earning 65,000 in department 20 must be included.
Hint: You've already used the right window f

*/

select * from 
(
    select e.*,dense_rank() over(partition by dept_id order by salary desc) as rnk from emp e
)
where rnk in (1,2,3) order by dept_id;