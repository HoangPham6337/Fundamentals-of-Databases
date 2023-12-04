DROP DATABASE IF EXISTS Pharmacy;
CREATE DATABASE IF NOT EXISTS Pharmacy;
USE Pharmacy;

-- Create the Manufacturer table
CREATE TABLE Manufacturer (
    ManufacturerID VARCHAR(4) PRIMARY KEY NOT NULL,
    CompanyName VARCHAR(50) DEFAULT NULL,
    Manufacturer_Address VARCHAR(100) DEFAULT NULL,
    PhoneNumber VARCHAR(15) DEFAULT NULL,
    Website VARCHAR(50) DEFAULT NULL
);

-- Create the Supplier table
CREATE TABLE Supplier (
    SupplierID VARCHAR(4) PRIMARY KEY NOT NULL,
    CompanyName VARCHAR(50) DEFAULT NULL,
    HeadOffice VARCHAR(100) DEFAULT NULL,
    Website VARCHAR(50) DEFAULT NULL,
    Hotline VARCHAR(15) DEFAULT NULL
);

-- Create the BatchDetails table
CREATE TABLE BatchDetails (
    BatchNumber VARCHAR(20) PRIMARY KEY NOT NULL,
    SupplierID VARCHAR(4) NOT NULL,
    ShippingDatetime DATE DEFAULT NULL,
    DeparturePort VARCHAR(20) DEFAULT NULL,
    DestinationPort VARCHAR(20) DEFAULT NULL,
    Foreign Key (SupplierID) REFERENCES Supplier(SupplierID)
);

-- Create the Drug table
CREATE TABLE Drugs(
    DrugID VARCHAR(4) PRIMARY KEY NOT NULL,
    DrugName VARCHAR(50) DEFAULT NULL,
    BatchNumber VARCHAR(20) NOT NULL,
    ExpiryDate DATE DEFAULT NULL,
    StorageCondition VARCHAR(20) DEFAULT NULL,
    ArrivalDate DATE DEFAULT NULL,
    Quantity INT DEFAULT NULL,
    PurchasePrice DECIMAL(10, 2) DEFAULT NULL,
    SellingPrice DECIMAL(10, 2) DEFAULT NULL,
    ManufacturerID VARCHAR(4) NOT NULL,
    FOREIGN KEY (ManufacturerID) REFERENCES Manufacturer(ManufacturerID),
    FOREIGN KEY (BatchNumber) REFERENCES BatchDetails(BatchNumber)
);

-- Create the Customer table
CREATE TABLE Customer (
    CustomerID VARCHAR(4) PRIMARY KEY NOT NULL,
    FirstName VARCHAR(50) DEFAULT NULL,
    LastName VARCHAR(50) DEFAULT NULL,
    Phone VARCHAR(15) DEFAULT NULL,
    Customer_Address VARCHAR(100) DEFAULT NULL,
    Email VARCHAR(30) DEFAULT NULL
);

-- Create the Staff table
CREATE TABLE Staff (
    StaffID VARCHAR(4) PRIMARY KEY NOT NULL,
    FirstName VARCHAR(50) DEFAULT NULL,
    LastName VARCHAR(50) DEFAULT NULL,
    HireDate DATE DEFAULT NULL,
    Phone VARCHAR(15) DEFAULT NULL,
    Staff_Address VARCHAR(100) DEFAULT NULL,
    Email VARCHAR(100) DEFAULT NULL,
    Staff_Status VARCHAR(20) DEFAULT 'Inactive',
    EndDate DATE DEFAULT NULL
);

-- Create the Shipper table
CREATE TABLE Shipper (
    ShipperID VARCHAR(4) PRIMARY KEY NOT NULL,
    FirstName VARCHAR(50) DEFAULT NULL,
    LastName VARCHAR(50) DEFAULT NULL,
    Phone VARCHAR(15) DEFAULT NULL,
    Shipper_Address VARCHAR(100) DEFAULT NULL,
    Email VARCHAR(100) DEFAULT NULL
);

CREATE TABLE Orders (
    DrugID VARCHAR(4) NOT NULL,
    CustomerID VARCHAR(4) NOT NULL,
    StaffID VARCHAR(4) NOT NULL,
    ShipperID VARCHAR(4) NOT NULL,
    Quantity INT DEFAULT 0,
    OrderDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Order_Status VARCHAR(20) DEFAULT 'Pending',
    Foreign Key (DrugID) REFERENCES Drugs(DrugID),
    Foreign Key (CustomerID) REFERENCES Customer(CustomerID),
    Foreign Key (StaffID) REFERENCES Staff(StaffID),
    Foreign Key (ShipperID) REFERENCES Shipper(ShipperID)
);