-- Show StaffID, Name, HireDate and Quantity Sold by staffs who has been working for more than 6 months
SELECT  a.`StaffID`, CONCAT(a.`FirstName`, " ", a.`LastName`) AS Name, a.`HireDate`,
        SUM(b.`Quantity`) AS "Quantity Sold"
        
FROM staff a, orders b
WHERE a.`StaffID` = b.`StaffID` AND (DATEDIFF(NOW(), a.`HireDate`)/30) > 6 
GROUP BY a.`StaffID`;