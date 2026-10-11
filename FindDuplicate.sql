/*


Question 2 of 15  Find duplicate records
Fundamentals
 Oracle SQL

Consider this table, EMPLOYEE:
ID	NAME	DEPARTMENT_ID
1	Amit	10
2	Priya	20
3	Amit	10
4	Rahul	10
5	Priya	30
6	Amit	10
Your task: Write an Oracle SQL query to find duplicate combinations of NAME and
DEPARTMENT_ID, showing only combinations that occur more than once.


*/

select name , deptId , count(*) as duplicateCount from emp
group by name , deptId
having count(*)>1;