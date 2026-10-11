/*

Running total of bank transactions
Imagine you're working on Oracle FLEXCUBE transaction data.
Your table is TRANSACTIONS:
TXN_ID	ACCOUNT_ID	TXN_DATE	AMOUNT
1	101	01-Oct-2026	500
2	101	02-Oct-2026	-100
3	101	03-Oct-2026	300
4	202	01-Oct-2026	1,000
5	202	02-Oct-2026	-200
Task: Write an Oracle SQL query to calculate the running total of transactions for each account, ordered by transaction date.
Expected result:
TXN_ID	ACCOUNT_ID	AMOUNT	RUNNING_TOTAL
1	101	500	500
2	101	-100	400
3	101	300	700
4	202	1,000	1,000
5	202	-200	800
Requirements:
- Running totals must reset for each account.
- Negative amounts must reduce the total.
- Use Oracle SQL window functions.
Hint: Think about SUM() with OVER(), PARTITION BY, and ORDER BY.
Your turn, buddy  write the query.

*/

SELECT txn_id,
       account_id,
       amount,
       SUM(amount) OVER (
           PARTITION BY account_id
           ORDER BY txn_date, txn_id
           ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
       ) AS running_total
FROM transactions
ORDER BY account_id, txn_date, txn_id;