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
 
use BankingDB;

insert into Customers
 (CustomerID , FirstName , LastName , Email , AccountCreationDate , DateOfBirth)
Values
('109','Atharva','Kharade','Kharadeatharva@gmail.com','2026-06-21','2004-07-14');

SELECT * FROM Customers
WHERE Phone IS NULL;

SELECT *
FROM Customers
WHERE Email IS NOT NULL;

SELECT AccountID,Balance,
CASE
WHEN Balance >= 50000 then 'Premium Account'
WHEN Balance >= 25000 then 'Standard Account'
ELSE 'Basic Account'
END as AccountCategory
FROM Accounts;

SELECT AccountID,Balance,
RANK() OVER (ORDER BY Balance desc) AS BalanceRank
FROM Accounts;

SELECT TransactionID,
       Amount,
       SUM(Amount) OVER (ORDER BY TransactionDate) AS RunningTotal
FROM Transactions;

SELECT TransactionID,
       Amount,
       AVG(Amount) OVER () AS AverageTransaction
FROM Transactions;

