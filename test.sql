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
END;
DELIMITTER ;

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

-- Create a procedure to insert new drug
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

