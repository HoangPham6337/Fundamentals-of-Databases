DROP TRIGGER IF EXISTS BeforeOrderUpdateQuantity;
DELIMITER //
CREATE TRIGGER BeforeOrderUpdateQuantity
BEFORE INSERT ON Orders
FOR EACH ROW
BEGIN
    DECLARE newQuantity INT;

    -- Calculate the new quantity
    SET newQuantity = (
        SELECT Quantity - NEW.Quantity
        FROM Drugs
        WHERE DrugID = NEW.DrugID
    );
	-- Check if there is enough stock
	IF newQuantity >= 0 THEN
		-- Update the quantity in the Drugs table
		UPDATE Drugs
		SET Quantity = newQuantity
		WHERE DrugID = NEW.DrugID;

		-- Update OrderDate and Status for the new row
		SET NEW.OrderDate = IFNULL(NEW.OrderDate, CURRENT_TIMESTAMP),
			NEW.Order_Status= IFNULL(NEW.Order_Status, 'Pending');
	ELSE
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = "Insufficient stock for the order";
	END IF;
END //
DELIMITER ;

-- Return the quantity of an order back to the Drugs table when the order's statis is set to "Cancelled"
DELIMITER //
CREATE TRIGGER after_update_order_status
AFTER UPDATE ON orders
FOR EACH ROW
BEGIN
	IF NEW.`Order_Status` = "Cancelled" THEN
		UPDATE drugs
        SET Quantity = Quantity + OLD.`Quantity`
        WHERE DrugID = OLD.`DrugID`;
	END IF;
END //
DELIMITER ;

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

-- Create a procedure to update staff hire date
DELIMITER //
CREATE PROCEDURE UpdateStaffHireDate(IN p_StaffID VARCHAR(4), IN p_NewHireDate DATE)
BEGIN
    DECLARE staffExists INT;
    SELECT COUNT(*) INTO staffExists FROM Staff WHERE StaffID = p_StaffID;
    IF staffExists > 0 THEN UPDATE Staff SET HireDate = p_NewHireDate WHERE StaffID = p_StaffID;
    ELSE SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Staff ID does not exist. Please provide a valid ID.';
    END IF;
END //
DELIMITER ;
CALL UpdateStaffHireDate('PS01', '2022-01-20');

-- Create a procedure to insert new drug
DELIMITER //
CREATE PROCEDURE InsertNewDrug(
    IN p_DrugID VARCHAR(4),
    IN p_DrugName VARCHAR(50),
    IN p_BatchNumber VARCHAR(20),
    IN p_ExpiryDate DATE,
    IN p_StorageCondition VARCHAR(20),
    IN p_ArrivalDate DATE,
    IN p_Quantity INT,
    IN p_PurchasePrice DECIMAL(10, 2),
    IN p_SellingPrice DECIMAL(10, 2),
    IN p_ManufacturerID VARCHAR(4)
)
BEGIN
    -- Check if the drug ID already exists
    IF (SELECT COUNT(*) FROM Drugs WHERE DrugID = p_DrugID) > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Drug ID already exists. Please choose a different ID.';
    ELSE
        -- Insert the new drug
        INSERT INTO Drugs (
            DrugID, DrugName, BatchNumber, ExpiryDate, StorageCondition,
            ArrivalDate, Quantity, PurchasePrice, SellingPrice, ManufacturerID
        ) VALUES (
            p_DrugID, p_DrugName, p_BatchNumber, p_ExpiryDate, p_StorageCondition,
            p_ArrivalDate, p_Quantity, p_PurchasePrice, p_SellingPrice, p_ManufacturerID
        );
    END IF;
END//
DELIMITER ;
CALL InsertNewDrug('D021', 'NewDrug', 'TQ123456', '2024-12-31', 'Room Temperature', '2023-12-08', 50, 25.00, 40.00, 'M010');

-- Create a procedure to delete drugs in database
DELIMITER //
CREATE PROCEDURE DeleteDrug(
    IN p_DrugID VARCHAR(4)
)
BEGIN
    DECLARE drugExists INT;
    SELECT COUNT(*) INTO drugExists 
    FROM Drugs WHERE DrugID = p_DrugID;
    IF drugExists > 0 THEN DELETE FROM Drugs WHERE DrugID = p_DrugID;
    ELSE SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Drug ID does not exist. Please provide a valid ID.';
    END IF;
END //
DELIMITER ;
CALL DeleteDrug('D001');
