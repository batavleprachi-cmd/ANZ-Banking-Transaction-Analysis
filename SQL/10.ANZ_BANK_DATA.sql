USE `anz bank data`;
#1 . Display all transactions.
SELECT *FROM bank_transactions;
#2 Display only customer ID, transaction date, amount, and transaction description.
SELECT customer_id, date, amount, txn_description FROM bank_transactions;
#3 Display the first 10 transactions.
 SELECT * FROM bank_transactions LIMIT 10;
 #4 Find transactions where the amount is greater than 1,000.
 SELECT * FROM bank_transactions WHERE amount > 1000;
 #5 Find transactions where the amount is less than 100.
 SELECT * FROM bank_transactions WHERE amount < 100;
 #6 Display transactions made by customers who are older than 40.
 SELECT * FROM bank_transactions WHERE age > 40;
 #7 Find transactions for a specific gender.
 SELECT * FROM bank_transactions WHERE gender = 'F';
 #8 Display transactions where the transaction description is 'PAY/SALARY'.
 SELECT *  FROM bank_transactions WHERE txn_description = 'PAY/SALARY';
 #9 Sorting and filtering:  Display the 10 highest transaction amounts.
 SELECT * FROM bank_transactions ORDER BY amount DESC LIMIT 10;
 #10 Display transactions from the state of New South Wales.
 SELECT *  FROM bank_transactions  WHERE merchant_state = 'NSW';
 #11 Find transactions made in either NSW or VIC.
 SELECT * FROM bank_transactions WHERE merchant_state IN ('NSW', 'VIC');
 #12 Count the total number of transactions.
 SELECT COUNT(*) AS total_transactions  FROM bank_transactions;
 # 13 Calculate the average transaction amount.
 SELECT AVG(amount) AS average_amount FROM bank_transactions;
 #14 . Find the highest and lowest transaction amounts.
 SELECT MAX(amount) AS highest_amount,  MIN(amount) AS lowest_amount FROM bank_transactions;
 #15 GROUP BY and HAVING: Count the number of transactions for each gender.
 SELECT  gender, COUNT(*) AS total_transactions FROM bank_transactions GROUP BY gender;
 # 16 Find customers whose average transaction amount is greater than 200.
 SELECT  customer_id, AVG(amount) AS average_amount FROM bank_transactions GROUP BY customer_id HAVING AVG(amount) > 200;
 
 
 
 
 





