-- Search for customers by address, phone number, purchased value, and preferred drug subjects
SELECT
    C.`CustomerID`,
    CONCAT(C.`FirstName`, ' ', C.`LastName`) AS CustomerName,
    C.`Customer_Address` AS Address,
    C.`Phone` AS PhoneNumber,
    SUM(D.`SellingPrice` * O.`Quantity`) AS PurchasedValue,
    GROUP_CONCAT(DISTINCT D.`DrugName` ORDER BY D.`DrugName` ASC SEPARATOR ', ') AS PreferredDrugSubjects
FROM `Customer` AS C
JOIN `Orders` AS O ON C.`CustomerID` = O.`CustomerID`
JOIN `Drugs` AS D ON O.`DrugID` = D.`DrugID`
WHERE O.`Order_status` <> 'Cancelled'
GROUP BY
    C.`CustomerID`, C.`FirstName`, C.`LastName`, C.`Customer_Address`, C.`Phone`
ORDER BY Address, PhoneNumber, PurchasedValue DESC;

-- Identify customers who purchase the most during a specific time frame
SELECT
    C.`CustomerID`,
    CONCAT(C.`FirstName`, ' ', C.`LastName`) AS CustomerName,
    C.`Customer_Address` AS Address,
    C.`Phone` AS PhoneNumber,
    SUM(D.`SellingPrice` * O.`Quantity`) AS TotalPurchasedValue
FROM `Customer` AS C
JOIN `Orders` AS O ON C.`CustomerID` = O.`CustomerID`
JOIN `Drugs` AS D ON O.`DrugID` = D.`DrugID`
WHERE O.`OrderDate` BETWEEN '2023-01-01' AND '2023-12-31' AND O.`Order_status` <> 'Cancelled'
GROUP BY
    C.`CustomerID`, C.`FirstName`, C.`LastName`, C.`Customer_Address`, C.`Phone`
ORDER BY TotalPurchasedValue DESC
LIMIT 5;

-- Identify customers who bought drugs related to the subject "Tranqoquil" and the number of drugs they purchased
SELECT
    C.`CustomerID`,
    CONCAT(C.`FirstName`, ' ', C.`LastName`) AS CustomerName,
    C.`Customer_Address` AS Address,
    C.`Phone` AS PhoneNumber,
    D.`DrugName` AS PurchasedDrug,
    COUNT(*) AS NumberOfDrugsPurchased
FROM `Customer` AS C
JOIN `Orders` AS O ON C.`CustomerID` = O.`CustomerID`
JOIN `Drugs` AS D ON O.`DrugID` = D.`DrugID`
WHERE D.`DrugName` = 'Tranqoquil' AND O.`Order_status` <> 'Cancelled'
GROUP BY
    C.`CustomerID`, C.`FirstName`, C.`LastName`, C.`Customer_Address`, C.`Phone`, D.`DrugName`
ORDER BY NumberOfDrugsPurchased DESC;

-- Show StaffID, Name, HireDate and Quantity Sold by staffs who has been working for more than 6 months
SELECT  a.`StaffID`, CONCAT(a.`FirstName`, " ", a.`LastName`) AS Name, a.`HireDate`,
		DATEDIFF(NOW(), a.`HireDate`)/30 AS "Duration (Month)",
        SUM(b.`Quantity`) AS "Quantity Sold"
FROM staff a, orders b
WHERE a.`StaffID` = b.`StaffID` AND (DATEDIFF(NOW(), a.`HireDate`)/30) > 6 
GROUP BY a.`StaffID`;

-- List the most sold drug
SELECT orders.`DrugID`, drugs.`DrugName`, COUNT(orders.`DrugID`) AS "Purchased time", SUM(orders.`Quantity`) AS "Total sold" 
FROM orders
JOIN drugs ON orders.`DrugID` = drugs.`DrugID`
WHERE orders.`Order_status` <> 'Cancelled'
GROUP BY `DrugID`
ORDER BY SUM(`Quantity`) DESC;

-- List the amount of drugs sold by quarter (for example: 4th quarter of 2022)
SELECT 	a.`DrugID`, a.`DrugName`,
		COALESCE (SUM(b.`Quantity`), 0) AS "Total Sells In The Quarter"
FROM drugs AS a LEFT JOIN orders AS b
ON a.`DrugID` = b.`DrugID` AND (b.`OrderDate` > "2022-10-01" AND b.`OrderDate` < "2022-12-31")
WHERE b.`Order_status` <> 'Cancelled'
GROUP BY a.`DrugID`
ORDER BY COALESCE (SUM(b.`Quantity`), 0) DESC;

-- List the amount of drugs sold by year (for example: 2022)
SELECT 	a.`DrugID`, a.`DrugName`,
		COALESCE (SUM(b.`Quantity`), 0) AS "Total Sells In The Year"
FROM drugs AS a LEFT JOIN orders AS b
ON a.`DrugID` = b.`DrugID` AND (YEAR(b.`OrderDate`) = 2022)
WHERE b.`Order_status` <> 'Cancelled'
GROUP BY a.`DrugID`
ORDER BY COALESCE (SUM(b.`Quantity`), 0) DESC;

-- Create procedure to retrieve dugs in a price range
DELIMITER //
CREATE PROCEDURE GetDrugsInPriceRange(
    IN minPrice DECIMAL(10, 2),
    IN maxPrice DECIMAL(10, 2)
)
BEGIN
    SELECT *
    FROM Drugs
    WHERE PurchasePrice BETWEEN minPrice AND maxPrice;
END //
DELIMITER ;
CALL GetDrugsInPriceRange(40.00, 80.00);

-- Create a view to keep track of the orders and the total money the customer have to pay for their drugs.
DROP VIEW IF EXISTS CustomerOrderView;
CREATE VIEW CustomerOrderView AS
SELECT
    O.CustomerID,
    O.OrderID,
    CONCAT(C.FirstName, ' ' ,C.LastName) AS CustomerName,
    O.DrugID,
    D.DrugName,
    O.Quantity,
    O.OrderDate,
    O.Order_Status,
    (O.Quantity * D.SellingPrice) AS TotalPayment
FROM
    Orders O
    JOIN Customer C ON O.CustomerID = C.CustomerID
    JOIN Drugs D ON O.DrugID = D.DrugID;
SELECT * FROM CustomerOrderView;