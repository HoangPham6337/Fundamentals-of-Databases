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
('D011', 'VisionClear', 'VC223344', '2024-08-08', 'Controlled Humidity', '2023-05-22', 110, 70.00, 100.00, 'M011'),
('D012', 'ImmunoGuard', 'IG556677', '2024-11-25', 'Refrigerated', '2023-11-01', 200, 95.00, 140.00, 'M012'),
('D013', 'PainEase', 'PE889900', '2024-07-18', 'Cool and Dry', '2023-11-01', 80, 50.00, 75.00, 'M013'),
('D014', 'SleepSure', 'SS112233', '2024-10-01', 'Room Temperature', '2023-11-01', 140, 45.00, 70.00, 'M014'),
('D015', 'DigestiPro', 'DP334455', '2024-09-20', 'Controlled Humidity', '2023-11-01', 170, 60.00, 90.00, 'M015'),
('D016', 'ClarityBlend', 'CB667788', '2024-08-12', 'Refrigerated', '2023-11-01', 120, 75.00, 110.00, 'M016'),
('D017', 'EnergyBurst', 'EB990011', '2024-11-10', 'Cool and Dry', '2023-10-22', 190, 55.00, 85.00, 'M017'),
('D018', 'JointFlex', 'JF223344', '2024-07-28', 'Room Temperature', '2023-10-22', 100, 65.00, 100.00, 'M018'),
('D019', 'SkinRevive', 'SR556677', '2024-10-05', 'Controlled Humidity', '2023-10-22', 150, 80.00, 120.00, 'M019'),
('D020', 'FocusBoost', 'FB889900', '2024-09-01', 'Refrigerated', '2023-10-22', 220, 90.00, 130.00, 'M020');

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

-- Insert data into the Manufacturer table
INSERT INTO Manufacturer VALUES
('M001', 'Pfizer', '123 Main Street, City A', '555-123-4567', 'www.pfizer.com'),
('M002', 'Johnson & Johnson', '456 Oak Avenue, City B', '555-234-5678', 'www.jnj.com'),
('M003', 'Novartis', '789 Elm Lane, City C', '555-345-6789', 'www.novartis.com'),
('M004', 'Roche', '321 Pine Road, City D', '555-456-7890', 'www.roche.com'),
('M005', 'Merck', '567 Birch Drive, City E', '555-567-8901', 'www.merck.com'),
('M006', 'GlaxoSmithKline', '890 Cedar Street, City F', '555-678-9012', 'www.gsk.com'),
('M007', 'AstraZeneca', '234 Maple Avenue, City G', '555-789-0123', 'www.astrazeneca.com'),
('M008', 'Sanofi', '567 Oak Lane, City H', '555-890-1234', 'www.sanofi.com'),
('M009', 'Eli Lilly', '901 Pine Drive, City I', '555-901-2345', 'www.lilly.com'),
('M010', 'AbbVie', '123 Elm Road, City J', '555-012-3456', 'www.abbvie.com'),
('M011', 'Bristol Myers', '345 Cedar Avenue, City K', '555-123-4567', 'www.bms.com'),
('M012', 'Bayer', '678 Maple Lane, City L', '555-234-5678', 'www.bayer.com'),
('M013', 'Moderna', '901 Birch Street, City M', '555-345-6789', 'www.moderna.com'),
('M014', 'Pfizer', '234 Pine Drive, City N', '555-456-7890', 'www.pfizer.com'),
('M015', 'Johnson & Johnson', '567 Elm Avenue, City O', '555-567-8901', 'www.jnj.com'),
('M016', 'Novartis', '890 Oak Road, City P', '555-678-9012', 'www.novartis.com'),
('M017', 'Roche', '123 Cedar Lane, City Q', '555-789-0123', 'www.roche.com'),
('M018', 'Merck', '345 Maple Drive, City R', '555-890-1234', 'www.merck.com'),
('M019', 'GlaxoSmithKline', '678 Pine Avenue, City S', '555-901-2345', 'www.gsk.com'),
('M020', 'AstraZeneca', '901 Elm Road, City T', '555-012-3456', 'www.astrazeneca.com');

-- Insert data into the Customer table
INSERT INTO Customer VALUES
('C001', 'James', 'Johnson', '555-123-4567', '123 Main Street, City A', 'james.johnson@gmail.com'),
('C002', 'Olivia', 'Smith', '555-234-5678', '456 Oak Avenue, City B', 'olivia.smith@gmail.com'),
('C003', 'Ethan', 'Davis', '555-345-6789', '789 Elm Lane, City C', 'ethan.davis@gmail.com'),
('C004', 'Emma', 'Miller', '555-456-7890', '321 Pine Road, City D', 'emma.miller@gmail.com'),
('C005', 'Liam', 'Taylor', '555-567-8901', '567 Birch Drive, City E', 'liam.taylor@gmail.com'),
('C006', 'Ava', 'White', '555-678-9012', '890 Cedar Street, City F', 'ava.white@gmail.com'),
('C007', 'Noah', 'Anderson', '555-789-0123', '234 Maple Avenue, City G', 'noah.anderson@gmail.com'),
('C008', 'Sophia', 'Garcia', '555-890-1234', '567 Oak Lane, City H', 'sophia.garcia@gmail.com'),
('C009', 'Mason', 'Martin', '555-901-2345', '901 Pine Drive, City I', 'mason.martin@gmail.com'),
('C010', 'Mia', 'Hall', '555-012-3456', '123 Elm Road, City J', 'mia.hall@gmail.com');

-- Insert data into the Staff table
INSERT INTO Staff VALUES
('PS01', 'John', 'Smith', '2023-01-15', '555-123-4567', '123 Main Street, City A', 'john.smith@emailprovider.com'),
('PS02', 'Emily', 'Johnson', '2023-02-28', '555-234-5678', '456 Oak Avenue, City B', 'emily.johnson@emailprovider.com'),
('PS03', 'Michael', 'Davis', '2023-03-12', '555-345-6789', '789 Elm Lane, City C', 'michael.davis@emailprovider.com'),
('PS04', 'Olivia', 'Taylor', '2023-04-05', '555-456-7890', '321 Pine Road, City D', 'olivia.taylor@emailprovider.com'),
('PS05', 'Ethan', 'Miller', '2023-05-20', '555-567-8901', '567 Birch Drive, City E', 'ethan.miller@emailprovider.com'),
('PS06', 'Emma', 'White', '2023-06-08', '555-678-9012', '890 Cedar Street, City F', 'emma.white@emailprovider.com'),
('PS07', 'Liam', 'Anderson', '2023-07-03', '555-789-0123', '234 Maple Avenue, City G', 'liam.anderson@emailprovider.com'),
('PS08', 'Ava', 'Garcia', '2023-08-17', '555-890-1234', '567 Oak Lane, City H', 'ava.garcia@emailprovider.com'),
('PS09', 'Noah', 'Martin', '2023-09-22', '555-901-2345', '901 Pine Drive, City I', 'noah.martin@emailprovider.com'),
('PS10', 'Sophia', 'Hall', '2023-10-10', '555-012-3456', '123 Elm Road, City J', 'sophia.hall@emailprovider.com');

-- Insert data into the Supplier table
INSERT INTO Supplier VALUES
('S001', 'Pfizer', '123 Main Street, City A', 'www.pfizer-supplier.com', '555-123-4567'),
('S002', 'Johnson & Johnson', '456 Oak Avenue, City B', 'www.jnj-supplier.com', '555-234-5678'),
('S003', 'Novartis', '789 Elm Lane, City C', 'www.novartis-supplier.com', '555-345-6789'),
('S004', 'Roche', '321 Pine Road, City D', 'www.roche-supplier.com', '555-456-7890'),
('S005', 'Merck', '567 Birch Drive, City E', 'www.merck-supplier.com', '555-567-8901');

-- Insert data into the Shipper table
INSERT INTO Shipper VALUES
('S01', 'David', 'Harris', '555-123-4567', '123 Main Street, City A', 'david.harris@gmail.com'),
('S02', 'Olivia', 'Wilson', '555-234-5678', '456 Oak Avenue, City B', 'olivia.wilson@gmail.com'),
('S03', 'Ethan', 'Turner', '555-345-6789', '789 Elm Lane, City C', 'ethan.turner@gmail.com'),
('S04', 'Emma', 'Parker', '555-456-7890', '321 Pine Road, City D', 'emma.parker@gmail.com'),
('S05', 'Liam', 'Cooper', '555-567-8901', '567 Birch Drive, City E', 'liam.cooper@gmail.com'),
('S06', 'Ava', 'Hayes', '555-678-9012', '890 Cedar Street, City F', 'ava.hayes@gmail.com'),
('S07', 'Noah', 'Griffin', '555-789-0123', '234 Maple Avenue, City G', 'noah.griffin@gmail.com'),
('S08', 'Sophia', 'Harrison', '555-890-1234', '567 Oak Lane, City H', 'sophia.harrison@gmail.com'),
('S09', 'Mason', 'Porter', '555-901-2345', '901 Pine Drive, City I', 'mason.porter@gmail.com'),
('S10', 'Mia', 'Bennett', '555-012-3456', '123 Elm Road, City J', 'mia.bennett@gmail.com');