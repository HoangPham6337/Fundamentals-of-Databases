SELECT * FROM `BatchDetails`;
SELECT * FROM `Customer`;
SELECT * FROM `Drugs`;
SELECT * FROM `Manufacturer`;
SELECT * FROM `Shipper`;
SELECT * FROM `Staff`;
SELECT * FROM `Supplier`;
SELECT * FROM `Orders`;

-- Check Drug's stock -> Testing adding to orders
SELECT `DrugID`, `DrugName`, `Quantity`
FROM drugs;
SELECT * FROM orders;