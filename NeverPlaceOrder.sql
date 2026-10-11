/*


Customers who never placed an order
Consider these tables:
CUSTOMERS
CUSTOMER_ID	NAME
1	Amit
2	Priya
3	Rahul
4	Neha
ORDERS
ORDER_ID	CUSTOMER_ID
101	1
102	3
103	1
Task: Write an Oracle SQL query to find customers who have never placed an order.
Expected output:
CUSTOMER_ID	NAME
2	Priya
4	Neha
You can use either LEFT JOIN or NOT EXISTS.
Your turn: Write your query. I'll review the logic, syntax, and edge cases before we move to Question 10.

*/

--using left join 

select a.* , b.ORDER_ID from 
customers a left join ORDERS b 
on a.CUSTOMER_ID=b.CUSTOMER_ID 
where b.ORDER_ID is null;

--using not exists 

select * from customer where CUSTOMER_ID not in (select customer_id from order)