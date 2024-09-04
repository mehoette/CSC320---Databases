CREATE DATABASE banking;

CREATE TABLE banking.customers (
	CustomerID int,
	CustomerName varchar(255),
	ContactName varchar(255),
	Address varchar(255),
	City varchar(255),
	PostalCode varchar(255),
	Country varchar(255)
);

INSERT INTO banking.customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES(1, 'Alfreds Futterkiste', 'Maria Anders', 'Obere Str. 57', 'Berlin', '12209', 'Germany');

INSERT INTO banking.customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES(2, 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Avda. de la Constitución 2222', 'México D.F.', '05021', 'México');

INSERT INTO banking.customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES(3, 'Antonio Moreno Taquería', 'Antonio Moreno', 'Mataderos 2312', 'México D.F.', '05023', 'México');

INSERT INTO banking.customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES(4, 'Around the Horn', 'Thomas Hardy', '120 Hanover Sq.', 'London', 'WA1 1DP', 'UK');
INSERT INTO banking.customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES(5, 'Baking with Angela', 'Angela Cole', '1344 St. Gregory Ln', 'St. Charles', '63301', 'USA');

INSERT INTO banking.customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES(6, 'Papas Pizzeria', 'Papa Louis', '33 Pizza Blvd', 'Napoli', '80139', 'Italy');

INSERT INTO banking.customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES(7, 'Fix It Hardware Store', 'Samantha Stevens', '1501 N Poplar St', 'Casper', '82601', 'USA');

INSERT INTO banking.customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES(8, 'La Nouvelle Liberté', 'Joseph Freedom', '4802 Bd de la Liberté', 'Douala', '000000', 'Cameroon');

INSERT INTO banking.customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES(9, 'Fork by Mass', 'Johnny Forks', '2215 W Chesterfield St', 'Springfield', '65807', 'USA');

INSERT INTO banking.customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES(10, 'Bicycle Store', 'Spunk Davis', '334-1 Taepyeong-dong', 'Daejeon', '28210', 'South Korea');