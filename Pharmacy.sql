DROP DATABASE IF EXISTS Pharmacy;
CREATE DATABASE IF NOT EXISTS Pharmacy;
USE Pharmacy;

-- Create the Drug table
CREATE TABLE Drugs(
    DrugID VARCHAR(4) NOT NULL,
    DrugName VARCHAR(50) NOT NULL,
    BatchNumber VARCHAR(20),
    ExpiryDate DATE,
    StorageCondition VARCHAR(20),
    ArrivalDate DATE,
    Quantity INT,
    PurchasePrice DECIMAL(10, 2),
    SellingPrice DECIMAL(10, 2),
    ManufacturerID VARCHAR(4)
);

-- Create the Manufacturer table
CREATE TABLE Manufacturer (
    ManufacturerID VARCHAR(4),
    CompanyName VARCHAR(50),
    Address VARCHAR(100),
    PhoneNumber VARCHAR(15),
    Website VARCHAR(50)
);

-- Create the BatchDetails table
CREATE TABLE BatchDetails (
    BatchNumber VARCHAR(20),
    SupplierID VARCHAR(4),
    ShippingDatetime DATE,
    DeparturePort VARCHAR(20),
    DestinationPort VARCHAR(20)
);

-- Create the Customer table
CREATE TABLE Customer (
    CustomerID VARCHAR(4),
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Phone VARCHAR(15),
    Address VARCHAR(100),
    Email VARCHAR(30)
);

-- Create the Staff table
CREATE TABLE Staff (
    StaffID VARCHAR(4),
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    HireDate DATE,
    Phone VARCHAR(15),
    Address VARCHAR(100),
    Email VARCHAR(100)
);

-- Create the Supplier table
CREATE TABLE Supplier (
    SupplierID VARCHAR(4),
    CompanyName VARCHAR(50),
    HeadOffice VARCHAR(100),
    Website VARCHAR(50),
    Hotline VARCHAR(15)
);

-- Create the Shipper table
CREATE TABLE Shipper (
    ShipperID VARCHAR(4),
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Phone VARCHAR(15),
    Address VARCHAR(100),
    Email VARCHAR(100)
);