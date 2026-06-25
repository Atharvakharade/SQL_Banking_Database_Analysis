Use BankingDB;

SELECT sum(Balance)  AS Total_Balance from Accounts;


SELECT sum(Balance)  AS Total_Balance from Accounts
Where AccountType = "Savings";

SELECT AVG(Balance) AS Average_BAlance from Accounts;

Select max(Balance) AS Highest_Balance From Accounts;

Select min(Balance) AS Lowest_Balance From Accounts;

 Select COUNT(*) AS Total_Customer From Customers;
 
 Select AccountType, SUM(Balance) AS Total_Balance From Accounts Group by AccountType;
 
 select AccountType, max(Balance) AS Total_Balance from Accounts Group by AccountType;
 
  select AccountType, min(Balance) AS Total_Balance from Accounts Group by AccountType;
  
  select AccountType, SUM(Balance) AS Total_Balance From Accounts
  group by AccountType
  having SUM(Balance) >= 25000;
  
 
 
 
 
 select * from Accounts;
 
