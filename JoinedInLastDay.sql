/*

Employees who joined in the last 30 days
Consider an Oracle EMP table with these columns:
- EMP_ID
- NAME
- JOINING_DATE (an Oracle DATE column)
Task: Write an Oracle SQL query to find employees who joined within the last 30 days from today.
Requirements:
- Use Oracle date syntax.
- Include employees who joined exactly 30 days ago.
- Exclude future joining dates.

*/

select * from emp 
where sysdate-JOINING_DATE <=30 and JOINING_DATE <= sysdate;