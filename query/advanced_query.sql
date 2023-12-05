-- Show StaffID, Name, HireDate and Quantity Sold by staffs who has been working for more than 6 months
SELECT  a.`StaffID`, CONCAT(a.`FirstName`, " ", a.`LastName`) AS Name, a.`HireDate`,
        SUM(b.`Quantity`) AS "Quantity Sold"
        
FROM staff a, orders b
WHERE a.`StaffID` = b.`StaffID` AND (DATEDIFF(NOW(), a.`HireDate`)/30) > 6 
GROUP BY a.`StaffID`;

-- List the most sold drug
SELECT `DrugID`, COUNT(`DrugID`) AS "Purchased time", SUM(`Quantity`) AS "Total sold" 
FROM orders
GROUP BY `DrugID`
ORDER BY SUM(`Quantity`) DESC;

-- List the amount of drugs sold by quarter (for example: 4th quarter of 2022)
SELECT 	a.`DrugID`,
		COALESCE (SUM(b.`Quantity`), 0) AS "Total Sells In The Quarter"
FROM drugs AS a LEFT JOIN orders AS b
ON a.`DrugID` = b.`DrugID` AND (b.`OrderDate` > "2022-10-01" AND b.`OrderDate` < "2022-12-31")
GROUP BY a.`DrugID`
ORDER BY COALESCE (SUM(b.`Quantity`), 0) DESC;

-- List the amount of drugs sold by year (for example: 2022)
SELECT 	a.`DrugID`,
		COALESCE (SUM(b.`Quantity`), 0) AS "Total Sells In The Year"
FROM drugs AS a LEFT JOIN orders AS b
ON a.`DrugID` = b.`DrugID` AND (YEAR(b.`OrderDate`) = 2022)
GROUP BY a.`DrugID`
ORDER BY COALESCE (SUM(b.`Quantity`), 0) DESC;