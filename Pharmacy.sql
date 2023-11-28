DROP DATABASE IF EXISTS Pharmacy;
CREATE DATABASE IF NOT EXISTS Pharmacy;
USE Pharmacy;

-- Create the Manufacturer table
CREATE TABLE Manufacturer (
    ManufacturerID VARCHAR(4) PRIMARY KEY NOT NULL,
    CompanyName VARCHAR(50),
    Address VARCHAR(100),
    PhoneNumber VARCHAR(15),
    Website VARCHAR(50)
);

-- Create the Supplier table
CREATE TABLE Supplier (
    SupplierID VARCHAR(4) PRIMARY KEY NOT NULL,
    CompanyName VARCHAR(50),
    HeadOffice VARCHAR(100),
    Website VARCHAR(50),
    Hotline VARCHAR(15)
);

-- Create the BatchDetails table
CREATE TABLE BatchDetails (
    BatchNumber VARCHAR(20) PRIMARY KEY NOT NULL,
    SupplierID VARCHAR(4) NOT NULL,
    ShippingDatetime DATE,
    DeparturePort VARCHAR(20),
    DestinationPort VARCHAR(20),
    Foreign Key (SupplierID) REFERENCES Supplier(SupplierID)
);

-- Create the Drug table
CREATE TABLE Drugs(
    DrugID VARCHAR(4) PRIMARY KEY NOT NULL,
    DrugName VARCHAR(50) NOT NULL,
    BatchNumber VARCHAR(20) NOT NULL,
    ExpiryDate DATE,
    StorageCondition VARCHAR(20),
    ArrivalDate DATE,
    Quantity INT,
    PurchasePrice DECIMAL(10, 2),
    SellingPrice DECIMAL(10, 2),
    ManufacturerID VARCHAR(4),
    Foreign KEY (ManufacturerID) REFERENCES Manufacturer(ManufacturerID),
    FOREIGN KEY (BatchNumber) REFERENCES BatchDetails(BatchNumber)
);

-- Create the Customer table
CREATE TABLE Customer (
    CustomerID VARCHAR(4) PRIMARY KEY NOT NULL,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Phone VARCHAR(15),
    Address VARCHAR(100),
    Email VARCHAR(30)
);

-- Create the Staff table
CREATE TABLE Staff (
    StaffID VARCHAR(4) PRIMARY KEY NOT NULL,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    HireDate DATE,
    Phone VARCHAR(15),
    Address VARCHAR(100),
    Email VARCHAR(100)
);

-- Create the Shipper table
CREATE TABLE Shipper (
    ShipperID VARCHAR(4) PRIMARY KEY NOT NULL,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Phone VARCHAR(15),
    Address VARCHAR(100),
    Email VARCHAR(100)
);

CREATE TABLE Orders (
    DrugID VARCHAR(4) NOT NULL,
    CustomerID VARCHAR(4) NOT NULL,
    StaffID VARCHAR(4) NOT NULL,
    ShipperID VARCHAR(4) NOT NULL,
    Quantity INT,
    OrderDate DATE,
    Status VARCHAR(20),
    Foreign Key (DrugID) REFERENCES Drugs(DrugID),
    Foreign Key (CustomerID) REFERENCES Drugs(DrugID),
    Foreign Key (StaffID) REFERENCES Staff(StaffID),
    Foreign Key (ShipperID) REFERENCES Shipper(ShipperID)
)