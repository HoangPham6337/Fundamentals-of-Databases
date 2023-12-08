SELECT * FROM `BatchDetails`;
SELECT * FROM `Customer`;
SELECT * FROM `Drugs`;
SELECT * FROM `Manufacturer`;
SELECT * FROM `Shipper`;
SELECT * FROM `Staff`;
SELECT * FROM `Supplier`;
SELECT * FROM `Orders`;
UPDATE orders
SET `Order_status` = "Cancelled"
WHERE `OrderID` = 1;