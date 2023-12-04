-- Find drugs with the quantity more than 70
SELECT `DrugID`, `DrugName`, `BatchNumber`, `Quantity` As "Quantity in stock"
FROM drugs
WHERE `Quantity` >= 70;

-- Calculate the differences between Purchase price and Selling price -> Profit per Drug
SELECT `DrugID`, `DrugName`, `BatchNumber`, `Quantity`, `SellingPrice` - `PurchasePrice` AS Profit
FROM drugs

-- List the drugs with their manufacturer
SELECT `DrugID`, `DrugName`, `BatchNumber`, drugs.`ManufacturerID`, `CompanyName`
FROM drugs INNER JOIN manufacturer
ON drugs.`ManufacturerID` = manufacturer.`ManufacturerID`;

-- List all the drugs of a manufacturer
SELECT A.`ManufacturerID`, `CompanyName`, `DrugID`, `DrugName`
FROM drugs AS A
INNER JOIN manufacturer AS B
ON A.`ManufacturerID` = B.`ManufacturerID`
WHERE A.`ManufacturerID` = 'M001';

-- Check all orders
SELECT * FROM orders;

-- Search for shipper data by name, contact information, and order status
SELECT S.`ShipperID`, CONCAT(S.`FirstName`, ' ', S.`LastName`) AS FullName, S.`Email`, S.`Phone`, O.`Order_Status`
FROM `shipper` AS S
INNER JOIN `orders` AS O
ON S.`ShipperID` = O.`ShipperID`;

-- Search for orders by order date and delivery status
SELECT O.`Quantity`, O.`OrderDate`, O.`Order_Status`, C.`Customer_Address`
FROM `Orders` AS O
INNER JOIN `Customer` AS C
ON O.`CustomerID` = C.`CustomerID`;

-- Filter orders by the quantity of drugs sold for a specific period of time
SELECT `DrugID`, `Quantity`, `OrderDate`
FROM orders
HAVING `OrderDate` > 2021-01-01
ORDER BY `Quantity` DESC;

--Ha starts here (first 2 parts)
--Drug search filters
--1) By name
SELECT *
FROM drugs
WHERE `DrugName` LIKE '%Tranqoquil%'; 
--2) By batch number
SELECT *
FROM drugs
WHERE `BatchNumber` = 'TQ123456';
--3) By manufacturer
SELECT *
FROM drugs AS A
INNER JOIN manufacturer AS B
ON A.`ManufacturerID` = B.`ManufacturerID`
WHERE B.`CompanyName` = 'Roche';
--4) By expiry date (search for drugs that are expired on the desired date or not yet expired)
SELECT *
FROM drugs 
WHERE `ExpiryDate` <='2024-10-15';
--5) By storage condition
SELECT * 
FROM drugs
WHERE `StorageCondition` LIKE "Cool and Dry";
--6) By arrival date
SELECT *
FROM drugs
WHERE `ArrivalDate` = '2023-11-20';
--7) By quantity in stock
SELECT *
FROM drugs
WHERE `Quantity` = '100';
--8) By highest / lowest ratings

--9) Identify trending drugs based on recent orders and ratings (let say trending in the past month)
SELECT drugs.`DrugID`, drugs.`DrugName`, SUM(orders.`Quantity`) as total_quantity
FROM orders
JOIN drugs ON orders.`DrugID` = drugs.`DrugID`
WHERE orders.`OrderDate` >= CURDATE() - INTERVAL 1 MONTH
GROUP BY drugs.`DrugID`
ORDER BY total_quantity DESC;
--Staff information filters
--1) Search by name
SELECT *
FROM staff
WHERE CONCAT(`FirstName`,' ', `LastName`) LIKE 'John Smith';
--2) Search by position
