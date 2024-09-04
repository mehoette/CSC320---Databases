SELECT * FROM banking.customers;

SELECT ContactName FROM banking.customers;

SELECT ContactName FROM banking.customers WHERE CustomerID = 3;

SELECT ContactName FROM banking.customers WHERE CustomerID = 3 OR CustomerID = 2;

SELECT ContactName FROM banking.customers WHERE CustomerID > 2;

SELECT ContactName FROM banking.customers WHERE ContactName LIKE "%o";

SELECT * FROM banking.customers WHERE Country = 'Germany';
