use BankingDB;


INSERT INTO Customers
(CustomerID, Firstname, Lastname, Email, Phone, AccountcreationDate, DateofBirth)
VALUES
(103, 'Amit', 'Joshi', 'amit.joshi@gmail.com', '9123456780', '2025-06-01', '1995-03-15'),
(104, 'Priya', 'Patil', 'priya.patil@gamil.com', '9988776655','2025-05-03', '2000-09-20'),
(105, 'Rohit', 'Verma', 'rohit.verma@gmail.com', '9345678912', '2025-06-03', '1997-08-10'),
(106, 'Neha', 'Singh', 'neha.singh@gmail.com', '9456789123', '2025-06-04', '2001-02-18'),
(107, 'Karan', 'Mehta', 'karan.mehta@gmail.com', '9567891234', '2025-06-05', '1996-06-30');


INSERT INTO Accounts
(AccountID, CustomerID, AccountType, Balance)
VALUES
(203, 103, 'Savings', 30000),
(204, 104, 'Current', 45000),
(205, 105, 'Savings', 20000),
(206, 106, 'Current', 50000),
(207, 107, 'Savings', 35000);

INSERT INTO Transactions
(TransactionID, AccountID, TransactionDate, Amount, TransactionType)
VALUES
(303, 202, '2025-06-03', 10000, 'Credit'),
(304, 202, '2025-06-04', 3000, 'Debit'),
(305, 201, '2025-06-05', 1500, 'Debit');


INSERT INTO Branches
(BranchID, BranchName, BranchAddress, BranchPhone)
VALUES
(403, 'Thane Branch', 'Thane West', '9873333333'),
(404, 'Pune Branch', 'Pune shivajinagar', '9874444444'),
(405, 'Navi Mumbai Branch', 'Vashi ', '9875555555');

INSERT INTO AccountBranches
(AccountID, BranchID, AssignmentDate)
VALUES
(203, 403, '2025-05-03'),
(204, 404, '2025-05-04'),
(205, 405, '2025-05-05');





DELETE FROM Transactions
Where TransactionID = 302;

DELETE FROM Transactions
Where AccountID = 202;

DELETE FROM Transactions
Where AccountID = 202;

DELETE FROM Accounts
Where AccountID = 202;

DELETE FROM Loans
WHERE CustomerID = 102;

DELETE FROM Customers
where CustomerID = 102;

select * from Accounts;






