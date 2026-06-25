USE BankingDB;
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    AccountCreationDate DATE
);
SHOW DATABASES;
DESC Customers;
CREATE TABLE Accounts (
    AccountID INT PRIMARY KEY,
    CustomerID INT,
    AccountType VARCHAR(20),
    Balance DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID) );
    CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY,
    AccountID INT,
    TransactionDate DATE,
    Amount DECIMAL(10,2),
    TransactionType VARCHAR(20),
    FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID) );
    
    CREATE TABLE Branches (
	BranchID INT PRIMARY KEY,
    BranchName VARCHAR(100),
    BranchAddress VARCHAR(200),
    BranchPhone VARCHAR(15)
);

CREATE TABLE AccountBranches (
    AccountID INT,
    BranchID INT,
    AssignmentDate DATE,
    FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID),
    FOREIGN KEY (BranchID) REFERENCES Branches(BranchID)
);

CREATE TABLE Loans (
    LoanID INT PRIMARY KEY,
    CustomerID INT,
    LoanAmount DECIMAL(10,2),
    InterestRate DECIMAL(5,2),
    StartDate DATE,
    EndDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

DESC Customers;
ALTER TABLE Customers
MODIFY Phone VARCHAR(20);
USE BankingDB;
DESC Customers;
ALTER TABLE Customers
MODIFY Phone VARCHAR(20);
DESC Customers;
ALTER TABLE Customers
ADD DateOfBirth DATE;
DESC Customers;
ALTER TABLE Customers
MODIFY Phone VARCHAR(20);
ALTER TABLE Accounts
ADD CONSTRAINT chk_MinBalance
CHECK (Balance >= 1000);
DESC Accounts;
DROP TABLE AccountBranches;
USE BankingDB;
CREATE TABLE AccountBranches (
    AccountID INT,
    BranchID INT,
    AssignmentDate DATE,
    FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID),
    FOREIGN KEY (BranchID) REFERENCES Branches(BranchID)
);

ALTER TABLE Customers
ADD CONSTRAINT uq_Email UNIQUE (Email);
DESC customers;

INSERT INTO Customers
(CustomerID, Firstname, Lastname, Email, Phone, AccountcreationDate, DateofBirth)
VALUES
(102, 'Sneha', 'Kulkarni', 'sneha.kulkarni@gamil.com', '91234567891','2025-06-02', '1995-11-25');



INSERT INTO Accounts
(AccountID, CustomerID, AccountType, Balance)
VALUES
(201, 101, 'Savings', 25000);
INSERT INTO Accounts
(AccountID, CustomerID, AccountType, Balance)
VALUES
(202, 102, 'Current', 40000);


INSERT INTO Transactions
(TransactionID, AccountID, TransactionDate, Amount, TransactionType)
VALUES
(301, 201, '2025-06-01', 5000, 'Credit'),
(302, 202, '2025-06-02', 2000, 'Debit');

INSERT INTO Branches
(BranchID, BranchName, BranchAddress, BranchPhone)
VALUES
(401, 'Andheri Branch', 'Mumbai Andheri East', '9871111111'),
(402, 'Borivali Branch', 'Mumbai Borivali East', '9872222222');

#ACCOUNT BRANCHES
INSERT INTO AccountBranches
(AccountID, BranchID, AssignmentDate)
VALUES
(201, 401, '2025-05-01'),
(202, 402, '2025-05-02');

SELECT * FROM AccountBranches;
Select * From Branches;
select * from Accounts;

#update
UPDATE Customers
SET Phone = '9769441617'
WHERE CustomerID = 102;
Select * from Customers;

UPDATE Customers
SET Phone = '9999999999'
Where CustomerID = 101;
select * from Customers Where CustomerID = 101;

UPDATE Customers
SET Email = 'priya.patil@gmail.com'
Where CustomerID = 102;

#DELETE
DELETE FROM Transactions
Where TransactionID = 302;
select * from Transactions;


DELETE FROM Transactions
Where AccountID = 202;

select * from Transactions;

DELETE FROM AccountBranches
Where AccountID = 202;
select * from AccountBranches;

DELETE FROM Accounts
Where AccountID = 202;
select * from Accounts;



Delete from Transactions
where TransactionID = 302;






DELETE FROM Accounts
where AccountID = 202;

DELETE FROM Customers
where CustomerID = 102;
select * from Transactions;
select * from Accounts;

