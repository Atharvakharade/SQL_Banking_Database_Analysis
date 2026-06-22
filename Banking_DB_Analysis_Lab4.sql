#DQL Demonstartion#

use BankingDB;

select * from Customers;
select * from Accounts;
select * from Branches;
select * from Loans;
select * from Accountbranches;
select * from Transactions;

CREATE DATABASE SQL_PRACTISE;
use SQL_PRACTISE;

SELECT * FROM Accounts
WHERE AccountType ="Savings";

SELECT * FROM Accounts
WHERE Balance > 25000;

SELECT * FROM Transactions
WHERE Amount Between 5000 AND 20000;


SELECT *from Customers
WHERE CustomerID IN (101,102,103);

SELECT * FROM Customers
WHERE FirstName LIKE 'R%';

SELECT * FROM Customers
ORDER BY FirstName ASC;

SELECT * FROM  aCCOUNTS
ORDER BY Balance desc;

SELECT DISTINCT AccountType
FROM Accounts;

SELECT * FROM Accounts
ORDER BY Balance DESC limit 1
offset 2;

SELECT * FROM Transactions
LIMIT 5 OFFSET 2;

SELECT * FROM Transactions
order by Amount Desc;


