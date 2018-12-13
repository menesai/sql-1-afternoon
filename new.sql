
CREATE TABLE Person ( ID INTEGER PRIMARY KEY AUTOINCREMENT, Name string, Age integer, Height integer, City string, FavoriteColor string );



INSERT INTO Person ( Name, Age, Height, City, FavoriteColor ) VALUES
( "Klay Thompson", 29, 72, "Cali", "White" )
( "Kyire Irving", 28, 72, "Boston", "Green" )
( "Chris Paul", 25, 50, "Houston", "Red" )
( "Kevin Durant", 32, 80, "Cali", "Yellow" )
( "James Harden", 27, 72, "Houston", "Red" );

SELECT * FROM Person ORDER BY Height DESC; 

SELECT * FROM Person ORDER BY Height ASC;

SELECT * FROM Person ORDER BY Age DESC;

SELECT * FROM Person WHERE > 20;

SELECT * FROM Person WHERE = 18;

SELECT * FROM Person WHERE Age > 20 OR Age < 30;

SELECT * FROM Person WHERE Age != 27;

SELECT * FROM Person WHERE FavoriteColor != 'Red';

SELECT * FROM Person WHERE FavoriteColor  != 'Blue' AND FavoriteColor != 'Red';

SELECT * FROM Person WHERE FavoriteColor = 'Orange' AND FavoriteColor = 'Green';

SELECT * FROM Person WHERE FavoriteColor IN ('Orange', 'Green', 'Blue');

SELECT * FROM Person WHERE FavoriteColor IN ('Yellow', 'Purple');



CREATE TABLE Orders (PersonId integer, ProductName string, ProductPrice float, Quantity integer);

INSERT INTO Orders ( PersonId, ProductName, ProductPrice, Quantity)
VALUES
(0, 'Phone', 350.00, 400);
(1, 'Bike', 100.00, 200);
(2, 'Laptop', 800.00, 800);
(3, 'House', 900.00, 900);
(4, 'TV', 100.00, 800);

SELECT * FROM Orders;

SELECT SUM(Quantity) FROM Orders;

SELECT SUM(ProductPrice * Quantity) FROM Orders;

SELECT SUM(PersonId * Quantity) FROM Orders WHERE PersonId = 0;



INSERT INTO Artists (Name)
VALUES 
('J.Cole');
('Kendrick Lamar');
('Jay Rock');

SELECT * FROM Artists ORDER BY Name ASC LIMIT 5;

SELECT * FROM Artists WHERE Name LIKE 'Black%';

SELECT * FROM Artists WHERE Name LIKE '%Black%';


SELECT FirstName, LastName, FROM Employee WHERE City ="Calgary";
SELECT FirstName, LastName, Max(BirthDate) FROM Employee;
SELECT FirstName, LastName, MIn(BirthDate) FROM Employee;
SELECT * FROM Employee WHERE ReportsTo = 2;
SELECT COUNT(*) FROM Employee WHERE City = 'Lethbridge';



SELECT COUNT(*) FROM Invoice WHERE BillingCountry = 'USA';
SELECT Max(total) FROM Invoice;
SELECT Min(total) FROM Invoice;
SELECT * FROM Invoice WHERE Total > 5;
SELECT * FROM Invoice WHERE Total < 5;
SELECT COUNT(*) FROM Invoice WHERE BillingState in ('CA', 'TX', 'AZ');
SELECT AVG(total) FROM INVOICE;








