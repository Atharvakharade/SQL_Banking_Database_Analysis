Use BankingDB;

create view suspicious_Transactions As
select 
TransactionID,
CustomerId,
TransactionType,
Amount
From Transactions_2
where Amount > 25000;

select * from Transactions_2;

select * from suspicious_Transactions;

INSERT INTO Transactions_2
(TransactionID, AccountID, CustomerID, TransactionDate, Amount, TransactionType)
VALUES
(313, 201, 101, '2025-05-01',  66000.00, 'Deposit'),
(314, 202, 102, '2025-05-02',  61000.00, 'Withdrawal');


CREATE OR Replace VIEW suspicious_Transactions AS
SELECT
t.TransactionID,
CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName,
c.BranchName,
t.TransactionType,
t.Amount
FROM Transactions_2 t
INNER JOIN Customers_2 c
ON t.CustomerID = c.CustomerID
WHERE t.Amount > 25000;


 select * from suspicious_Transactions;
 
 
 SELECT
TransactionID,
CustomerName,
BranchName,
TransactionType,
Amount
FROM Suspicious_Transactions
ORDER BY Amount DESC;














