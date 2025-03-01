-- Insert data into the Manufacturer table
INSERT INTO Manufacturer VALUES
('M001', 'Pfizer', '456 Broadway, New York, NY', '555-123-4567', 'www.pfizer.com'),
('M002', 'Johnson & Johnson', '789 Madison Avenue, New York, NY', '555-234-5678', 'www.jnj.com'),
('M003', 'Novartis', '321 5th Avenue, New York, NY', '555-345-6789', 'www.novartis.com'),
('M004', 'Roche', '567 Lexington Avenue, New York, NY', '555-456-7890', 'www.roche.com'),
('M005', 'Merck', '890 Park Avenue, New York, NY', '555-567-8901', 'www.merck.com'),
('M006', 'GlaxoSmithKline', '234 7th Avenue, New York, NY', '555-678-9012', 'www.gsk.com'),
('M007', 'AstraZeneca', '567 Broadway, New York, NY', '555-789-0123', 'www.astrazeneca.com'),
('M008', 'Sanofi', '901 Madison Avenue, New York, NY', '555-890-1234', 'www.sanofi.com'),
('M009', 'Eli Lilly', '123 6th Avenue, New York, NY', '555-901-2345', 'www.lilly.com'),
('M010', 'AbbVie', '456 Park Avenue South, New York, NY', '555-012-3456', 'www.abbvie.com');


-- Insert data into the Supplier table
INSERT INTO Supplier VALUES
('S001', 'Pfizer', '123 Queens Street, Queens, NY', 'www.pfizer-supplier.com', '555-123-4567'),
('S002', 'Johnson & Johnson', '456 Queens Avenue, Queens, NY', 'www.jnj-supplier.com', '555-234-5678'),
('S003', 'Novartis', '789 Queens Lane, Queens, NY', 'www.novartis-supplier.com', '555-345-6789'),
('S004', 'Roche', '321 Queens Road, Queens, NY', 'www.roche-supplier.com', '555-456-7890'),
('S005', 'Merck', '567 Queens Drive, Queens, NY', 'www.merck-supplier.com', '555-567-8901');

-- Insert data into the BatchDetails table
INSERT INTO BatchDetails VALUES
('TQ123456', 'S001', '2023-11-18', 'Los Angeles', 'New York'),
('RV789012', 'S002', '2023-11-18', 'San Francisco', 'New York'),
('ZT654321', 'S003', '2023-11-18', 'Seattle', 'New York'),
('AG112233', 'S004', '2023-11-18', 'New York', 'New York'),
('NS445566', 'S005', '2023-11-18', 'Miami', 'New York'),
('CR778899', 'S001', '2023-05-20', 'Houston', 'New York'),
('DF001122', 'S002', '2023-05-20', 'Chicago', 'New York'),
('RM334455', 'S003', '2023-05-20', 'Boston', 'New York'),
('GS667788', 'S004', '2023-05-20', 'Atlanta', 'New York'),
('OF990011', 'S005', '2023-05-20', 'Miami', 'New York'),
('VC223344', 'S001', '2023-05-20', 'Los Angeles', 'New York'),
('IG556677', 'S002', '2023-10-29', 'Houston', 'New York'),
('PE889900', 'S003', '2023-10-29', 'San Francisco', 'New York'),
('SS112233', 'S004', '2023-10-29', 'Boston', 'New York'),
('DP334455', 'S005', '2023-10-29', 'Atlanta', 'New York'),
('CB667788', 'S001', '2023-10-29', 'Chicago', 'New York'),
('EB990011', 'S002', '2023-10-15', 'Seattle', 'New York'),
('JF223344', 'S003', '2023-10-15', 'New York', 'New York'),
('SR556677', 'S004', '2023-10-15', 'Miami', 'New York'),
('FB889900', 'S005', '2023-10-15', 'Los Angeles', 'New York');

-- Insert data into the Drugs table
INSERT INTO Drugs VALUES
('D001', 'Tranqoquil', 'TQ123456', '2024-08-01', 'Cool and Dry', '2023-11-20', 100, 50.00, 75.00, 'M001'),
('D002', 'Revitalix', 'RV789012', '2024-10-15', 'Room Temperature', '2023-11-20', 150, 40.00, 60.00, 'M002'),
('D003', 'Zenthrax', 'ZT654321', '2024-09-05', 'Refrigerated', '2023-11-20', 75, 80.00, 120.00, 'M003'),
('D004', 'AllergiGuard', 'AG112233', '2024-07-12', 'Controlled Humidity', '2023-11-20', 200, 30.00, 45.00, 'M004'),
('D005', 'NeuroSync', 'NS445566', '2024-11-30', 'Cool and Dry', '2023-11-20', 120, 90.00, 150.00, 'M005'),
('D006', 'CardioRelief', 'CR778899', '2024-08-20', 'Room Temperature', '2023-05-22', 180, 65.00, 100.00, 'M006'),
('D007', 'DermaFlex', 'DF001122', '2024-09-28', 'Controlled Humidity', '2023-05-22', 90, 55.00, 80.00, 'M007'),
('D008', 'RespiraMax', 'RM334455', '2024-07-05', 'Refrigerated', '2023-05-22', 250, 75.00, 110.00, 'M008'),
('D009', 'GastroShield', 'GS667788', '2024-10-10', 'Cool and Dry', '2023-05-22', 130, 40.00, 60.00, 'M009'),
('D010', 'OsteoFortis', 'OF990011', '2024-09-15', 'Room Temperature', '2023-05-22', 160, 85.00, 130.00, 'M010'),
('D011', 'VisionClear', 'VC223344', '2024-08-08', 'Controlled Humidity', '2023-05-22', 110, 70.00, 100.00, 'M001'),
('D012', 'ImmunoGuard', 'IG556677', '2024-11-25', 'Refrigerated', '2023-11-01', 200, 95.00, 140.00, 'M002'),
('D013', 'PainEase', 'PE889900', '2024-07-18', 'Cool and Dry', '2023-11-01', 80, 50.00, 75.00, 'M001'),
('D014', 'SleepSure', 'SS112233', '2024-10-01', 'Room Temperature', '2023-11-01', 140, 45.00, 70.00, 'M004'),
('D015', 'DigestiPro', 'DP334455', '2024-09-20', 'Controlled Humidity', '2023-11-01', 170, 60.00, 90.00, 'M005'),
('D016', 'ClarityBlend', 'CB667788', '2024-08-12', 'Refrigerated', '2023-11-01', 120, 75.00, 110.00, 'M006'),
('D017', 'EnergyBurst', 'EB990011', '2024-11-10', 'Cool and Dry', '2023-10-22', 190, 55.00, 85.00, 'M007'),
('D018', 'JointFlex', 'JF223344', '2024-07-28', 'Room Temperature', '2023-10-22', 100, 65.00, 100.00, 'M008'),
('D019', 'SkinRevive', 'SR556677', '2024-10-05', 'Controlled Humidity', '2023-10-22', 150, 80.00, 120.00, 'M009'),
('D020', 'FocusBoost', 'FB889900', '2024-09-01', 'Refrigerated', '2023-10-22', 220, 90.00, 130.00, 'M002');

-- Insert data into the Customer table
INSERT INTO Customer VALUES
('C001', 'James', 'Johnson', '555-123-4567', '123 Brooklyn Street, Brooklyn, NY', 'james.johnson@gmail.com'),
('C002', 'Olivia', 'Smith', '555-234-5678', '456 Oak Avenue, Brooklyn, NY', 'olivia.smith@gmail.com'),
('C003', 'Ethan', 'Davis', '555-345-6789', '789 Elm Lane, Brooklyn, NY', 'ethan.davis@gmail.com'),
('C004', 'Emma', 'Miller', '555-456-7890', '321 Pine Road, Brooklyn, NY', 'emma.miller@gmail.com'),
('C005', 'Liam', 'Taylor', '555-567-8901', '567 Birch Drive, Brooklyn, NY', 'liam.taylor@gmail.com'),
('C006', 'Ava', 'White', '555-678-9012', '890 Cedar Street, Brooklyn, NY', 'ava.white@gmail.com'),
('C007', 'Noah', 'Anderson', '555-789-0123', '234 Maple Avenue, Brooklyn, NY', 'noah.anderson@gmail.com'),
('C008', 'Sophia', 'Garcia', '555-890-1234', '567 Oak Lane, Brooklyn, NY', 'sophia.garcia@gmail.com'),
('C009', 'Mason', 'Martin', '555-901-2345', '901 Pine Drive, Brooklyn, NY', 'mason.martin@gmail.com'),
('C010', 'Mia', 'Hall', '555-012-3456', '123 Elm Road, Brooklyn, NY', 'mia.hall@gmail.com');

-- Insert data into the Staff table
INSERT INTO Staff VALUES
('PS01', 'John', 'Smith', '2023-01-15', '555-123-4567', '123 Staten Island Street, Staten Island, NY', 'john.smith@emailprovider.com', 'Active', NULL),
('PS02', 'Emily', 'Johnson', '2023-02-28', '555-234-5678', '456 Staten Island Avenue, Staten Island, NY', 'emily.johnson@emailprovider.com', 'Active', NULL),
('PS03', 'Michael', 'Davis', '2023-03-12', '555-345-6789', '789 Staten Island Lane, Staten Island, NY', 'michael.davis@emailprovider.com', 'Inactive', '2023-06-13'),
('PS04', 'Olivia', 'Taylor', '2023-04-05', '555-456-7890', '321 Staten Island Road, Staten Island, NY', 'olivia.taylor@emailprovider.com', 'Active', NULL),
('PS05', 'Ethan', 'Miller', '2023-05-20', '555-567-8901', '567 Staten Island Drive, Staten Island, NY', 'ethan.miller@emailprovider.com', 'Active', NULL),
('PS06', 'Emma', 'White', '2023-06-08', '555-678-9012', '890 Staten Island Street, Staten Island, NY', 'emma.white@emailprovider.com', 'Inactive', '2023-08-28'),
('PS07', 'Liam', 'Anderson', '2023-07-03', '555-789-0123', '234 Staten Island Avenue, Staten Island, NY', 'liam.anderson@emailprovider.com', 'Active', NULL),
('PS08', 'Ava', 'Garcia', '2023-08-17', '555-890-1234', '567 Staten Island Lane, Staten Island, NY', 'ava.garcia@emailprovider.com', 'Active', NULL),
('PS09', 'Noah', 'Martin', '2023-09-22', '555-901-2345', '901 Staten Island Drive, Staten Island, NY', 'noah.martin@emailprovider.com', 'Inactive', '2023-09-12'),
('PS10', 'Sophia', 'Hall', '2023-10-10', '555-012-3456', '123 Staten Island Road, Staten Island, NY', 'sophia.hall@emailprovider.com', 'Active', NULL);

-- Insert data into the Shipper table
INSERT INTO Shipper VALUES
('SH01', 'David', 'Harris', '555-123-4567', '123 Bronx Street, Bronx, NY', 'david.harris@gmail.com'),
('SH02', 'Olivia', 'Wilson', '555-234-5678', '456 Bronx Avenue, Bronx, NY', 'olivia.wilson@gmail.com'),
('SH03', 'Ethan', 'Turner', '555-345-6789', '789 Bronx Lane, Bronx, NY', 'ethan.turner@gmail.com'),
('SH04', 'Emma', 'Parker', '555-456-7890', '321 Bronx Road, Bronx, NY', 'emma.parker@gmail.com'),
('SH05', 'Liam', 'Cooper', '555-567-8901', '567 Bronx Drive, Bronx, NY', 'liam.cooper@gmail.com'),
('SH06', 'Ava', 'Hayes', '555-678-9012', '890 Bronx Street, Bronx, NY', 'ava.hayes@gmail.com'),
('SH07', 'Noah', 'Griffin', '555-789-0123', '234 Bronx Avenue, Bronx, NY', 'noah.griffin@gmail.com'),
('SH08', 'Sophia', 'Harrison', '555-890-1234', '567 Bronx Lane, Bronx, NY', 'sophia.harrison@gmail.com'),
('SH09', 'Mason', 'Porter', '555-901-2345', '901 Bronx Drive, Bronx, NY', 'mason.porter@gmail.com'),
('SH10', 'Mia', 'Bennett', '555-012-3456', '123 Bronx Road, Bronx, NY', 'mia.bennett@gmail.com');

-- Insert data into the Orders table
INSERT INTO Orders (`DrugID`, `CustomerID`, `StaffID`, `ShipperID`, `Quantity`, `OrderDate`) VALUES
('D001', 'C001', 'PS01', 'SH01', 20, '2022-11-04 08:30:00'),
('D002', 'C002', 'PS02', 'SH02', 63, '2022-10-05 12:45:00'),
('D003', 'C003', 'PS03', 'SH03', 30, '2022-09-06 15:20:00'),
('D004', 'C004', 'PS04', 'SH04', 10, '2021-12-07 09:10:00'),
('D005', 'C005', 'PS05', 'SH05', 20, '2022-04-08 14:55:00'),
('D006', 'C006', 'PS06', 'SH06', 90, '2022-05-09 11:30:00'),
('D007', 'C007', 'PS07', 'SH07', 45, '2022-06-10 18:00:00'),
('D008', 'C008', 'PS08', 'SH08', 10, '2022-11-11 10:20:00'),
('D009', 'C009', 'PS09', 'SH09', 23, '2021-02-12 16:40:00'),
('D007', 'C010', 'PS10', 'SH10', 10, '2022-04-13 20:15:00'),
('D010', 'C001', 'PS01', 'SH01', 40, '2021-06-14 13:25:00'),
('D002', 'C002', 'PS02', 'SH02', 21, '2022-11-15 09:55:00'),
('D003', 'C003', 'PS03', 'SH03', 24, '2022-12-16 14:30:00'),
('D005', 'C004', 'PS04', 'SH04', 70, '2021-12-17 17:45:00'),
('D003', 'C005', 'PS05', 'SH05', 20, '2022-12-18 22:00:00'),
('D004', 'C006', 'PS06', 'SH06', 11, '2021-12-19 11:10:00'),
('D002', 'C007', 'PS07', 'SH07', 23, '2022-12-20 08:50:00'),
('D001', 'C008', 'PS08', 'SH08', 26, '2022-12-21 19:30:00'),
('D001', 'C009', 'PS09', 'SH09', 14, '2023-12-22 14:15:00'),
('D020', 'C010', 'PS10', 'SH10', 50, '2023-12-01 16:20:00');

-- Update orders table, set some status to 'Cancelled' and 'Completed'
UPDATE orders
SET `Order_status` = "Cancelled"
WHERE `OrderID` IN (2, 4, 7, 9, 11);
UPDATE orders
SET `Order_status` = "Completed"
WHERE `OrderID` IN (1, 5, 6, 8, 15);