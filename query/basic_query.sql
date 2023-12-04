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