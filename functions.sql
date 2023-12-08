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