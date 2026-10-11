/*

Question 6 of 15  Find the third-highest distinct salary
Consider the EMP table:
EMP_ID	NAME	SALARY
1	Amit	90,000
2	Priya	70,000
3	Rahul	90,000
4	Neha	80,000
5	Karan	60,000
6	Sneha	70,000
Task: Write an Oracle SQL query to find the third-highest distinct salary.
Expected result:
THIRD_HIGHEST_SALARY
70,000


*/


--offset fetch first

select Distinct(salary) as THIRD_HIGHEST_SALARY from emp
order by salary desc 
offset 2 fetch first 1 row only;

--dense rank - count only once and dont skip count

select salary 
from(
    select salary , dense_rank() over (order by salary desc) as salRank from emp
)
 where salRank = 3;