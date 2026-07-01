Use BankingDB;


SELECT
TransactionID,
CustomerID,
TransactionType,
Amount
FROM Transactions_2
WHERE Amount > 
(SELECT AVG(Amount)
FROM Transactions_2);



SELECT
t.TransactionID,
t.CustomerID,
(SELECT CONCAT(c.FirstName, ' ', c.LastName)
FROM Customers_2 c
WHERE c.CustomerID = t.CustomerID) AS CustomerName,
(SELECT c.BranchName
FROM Customers_2 c
WHERE c.CustomerID = t.CustomerID) AS BranchName,
t.TransactionType,
t.Amount
FROM Transactions_2 t
ORDER BY BranchName, t.CustomerID;


ALTER TABLE Customers_2
ADD COLUMN BranchName VARCHAR(100);

insert into Customers_2 
(CustomerID, FirstName, LastName, Email, Phone, AccountCreationDate, DateOfBirth,BranchName)
Values
(109,'Atharva','Kharade','kharade.@gmail.com','1234567891','2025-10-12','2004-07-14','Dadar');

insert into Customers_2 
(CustomerID, FirstName, LastName, Email, Phone, AccountCreationDate, DateOfBirth,BranchName)
Values
(110, 'Shlok', 'Khandagale','shlok@gmail.com','9769441612', '2025-12-01', '2006-09-01','Ghatkopar');

select * from Customers_2;

INSERT INTO Transactions_2
(TransactionID, AccountID, CustomerID, TransactionDate, Amount, TransactionType)
VALUES

(311, 201, 110, '2025-05-01',  5000.00, 'Deposit'),
(312, 202, 111, '2025-05-02',  11000.00, 'Withdrawal');


UPDATE Transactions_2
SET
    AccountID = 209,
    CustomerID = 109
WHERE TransactionID = 311;

UPDATE Transactions_2
SET
    AccountID = 210,
    CustomerID = 110
WHERE TransactionID = 312;

select * from Transactions_2;
