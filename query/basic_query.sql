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


