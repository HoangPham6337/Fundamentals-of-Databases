DELIMITER //

CREATE TRIGGER AfterOrderUpdateQuantity
AFTER INSERT ON Orders
FOR EACH ROW
BEGIN
    DECLARE newQuantity INT;

    -- Calculate the new quantity
    SET newQuantity = (
        SELECT Quantity - NEW.Quantity
        FROM Drugs
        WHERE DrugID = NEW.DrugID
    );

    -- Update the quantity in the Drugs table
    UPDATE Drugs
    SET Quantity = newQuantity
    WHERE DrugID = NEW.DrugID;

    -- Update OrderDate and Status in the Orders table
    UPDATE Orders
    SET OrderDate = IFNULL(NEW.OrderDate, CURRENT_TIMESTAMP),
        Status = IFNULL(NEW.Status, 'Pending')
    WHERE DrugID = NEW.DrugID AND CustomerID = NEW.CustomerID;
END //

DELIMITER ;

DROP TRIGGER IF EXISTS AfterOrderUpdateQuantity;

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

    -- Update the quantity in the Drugs table
    UPDATE Drugs
    SET Quantity = newQuantity
    WHERE DrugID = NEW.DrugID;

    -- Update OrderDate and Status for the new row
    SET NEW.OrderDate = IFNULL(NEW.OrderDate, CURRENT_TIMESTAMP),
        NEW.Status = IFNULL(NEW.Status, 'Pending');
END //

DELIMITER ;