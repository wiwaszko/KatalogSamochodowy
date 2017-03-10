BEGIN;

DROP TABLE IF EXISTS UserCars;
DROP TABLE IF EXISTS Car;
DROP TABLE IF EXISTS User;
DROP TABLE IF EXISTS Factory;
DROP TABLE IF EXISTS CompanyBrand;
DROP TABLE IF EXISTS Brand;
DROP TABLE IF EXISTS Company;

CREATE TABLE User (
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    lastName VARCHAR(20) NOT NULL,
    password VARCHAR(40) NOT NULL,
    email VARCHAR(50) NOT NULL,
    created TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE Factory (
    factoryName VARCHAR(20) PRIMARY KEY NOT NULL
);
CREATE TABLE Brand (
    brandName VARCHAR(20) PRIMARY KEY NOT NULL
);
CREATE TABLE Car (
	id INT AUTO_INCREMENT PRIMARY KEY,
    model VARCHAR(20) NOT NULL,
    engineCapacity VARCHAR(10) NOT NULL,
    enginePower VARCHAR(10) NOT NULL,
    fuel VARCHAR(10) NOT NULL,
    wheelDrive VARCHAR(20) NOT NULL,
    carDescription VARCHAR(200) NOT NULL,
    modelYear VARCHAR(10) NOT NULL,
    
    brandName VARCHAR(20),
    factoryName VARCHAR(20),
    INDEX (brandName),
    INDEX (factoryName),
    FOREIGN KEY (brandName) REFERENCES Brand(brandName) ON DELETE CASCADE,
    FOREIGN KEY (factoryName) REFERENCES Factory(factoryName)
);
CREATE TABLE UserCars (
	id INT AUTO_INCREMENT PRIMARY KEY,
    userID INT,
    carID INT,
    
    INDEX (userID),
    INDEX (carID),
    FOREIGN KEY (userID) REFERENCES User(id),
    FOREIGN KEY (carID) REFERENCES Car(id)
);
CREATE TABLE Company (
	id INT PRIMARY KEY AUTO_INCREMENT,
    numberOfEmployees INT,
    companyDescription VARCHAR(200) NOT NULL,
    history VARCHAR(150)
);
CREATE TABLE CompanyBrand (
	id INT PRIMARY KEY AUTO_INCREMENT,
    brandName VARCHAR(20),
    companyID INT,
    
    INDEX (brandName),
    INDEX (companyID),
    FOREIGN KEY (brandName) REFERENCES Brand(brandName),
    FOREIGN KEY (companyID) REFERENCES Company(id)
);

COMMIT;