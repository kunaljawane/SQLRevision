/*

Question 10 of 15 Delete duplicate emails
Given the EMP table:
EMP_ID	NAME	EMAIL
1	Amit	amit@example.com
2	Amit J	amit@example.com
3	Priya	priya@example.com
4	Rahul	rahul@example.com
5	Rahul K	rahul@example.com
Goal: Delete duplicate rows while keeping the row with the smallest EMP_ID for each email.

*/


delete from emp where emp_id not in 
(
    select min(emp_id) from emp group by Email
);
