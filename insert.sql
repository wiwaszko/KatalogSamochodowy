BEGIN;
/*
TRUNCATE TABLE UserCars;


TRUNCATE TABLE Factory;
TRUNCATE TABLE CompanyBrand;
TRUNCATE TABLE Brand;
TRUNCATE TABLE Car;
TRUNCATE TABLE Company;
TRUNCATE TABLE User;*/

INSERT INTO User(name,lastName,password,email) VALUES ('Michael','Phelps',' ','email123@gmail.com');
INSERT INTO User (name,lastName,password,email) VALUES ('Natalie','Coughlin',' ','email123@gmail.com');
INSERT INTO User (name,lastName,password,email) VALUES ('Aleksey','Nemov',' ','email123@gmail.com');
INSERT INTO User (name,lastName,password,email) VALUES ('Missy','Franklin',' ','email123@gmail.com');
INSERT INTO User (name,lastName,password,email) VALUES ('Ryan','Lochte',' ','email123@gmail.com');
INSERT INTO User (name,lastName,password,email) VALUES ('Allison','Schmitt',' ','email123@gmail.com');
INSERT INTO User (name,lastName,password,email) VALUES ('Dara','Torres',' ','email123@gmail.com');

INSERT INTO Factory(factoryName) VALUES ('Rüsselsheim am Main');
INSERT INTO Factory(factoryName) VALUES ('Borno');
INSERT INTO Factory(factoryName) VALUES ('Eisenach');
INSERT INTO Factory(factoryName) VALUES ('Luton');
INSERT INTO Factory(factoryName) VALUES ('Antwerpia');

INSERT INTO Brand(brandName) VALUES ('Opel');
INSERT INTO Brand(brandName) VALUES ('Volkswagen');
INSERT INTO Brand(brandName) VALUES ('Mercedes');
INSERT INTO Brand(brandName) VALUES ('Škoda');
INSERT INTO Brand(brandName) VALUES ('Fiat');

INSERT INTO Car(model,engineCapacity,enginePower,fuel,wheelDrive,carDescription,modelYear,brandName,factoryName) VALUES ('Astra','2.0','150','benzyna','przód','Wyśmienite auto dla początkującego kierowcy.','2002','Opel','Rüsselsheim am Main');
INSERT INTO Car(model,engineCapacity,enginePower,fuel,wheelDrive,carDescription,modelYear,brandName,factoryName) VALUES ('Astra','1.4','70','benzyna','przód','Wyśmienite auto dla początkującego kierowcy.','2002','Opel','Eisenach');
INSERT INTO Car(model,engineCapacity,enginePower,fuel,wheelDrive,carDescription,modelYear,brandName,factoryName) VALUES ('Astra','1.6','90','benzyna','przód','Wyśmienite auto dla początkującego kierowcy.','2002','Opel','Antwerpia');
INSERT INTO Car(model,engineCapacity,enginePower,fuel,wheelDrive,carDescription,modelYear,brandName,factoryName) VALUES ('Astra','1.8','120','benzyna','przód','Wyśmienite auto dla początkującego kierowcy.','2002','Opel','Luton');
INSERT INTO Car(model,engineCapacity,enginePower,fuel,wheelDrive,carDescription,modelYear,brandName,factoryName) VALUES ('W124','2.2','130','benzyna','tył','Wyśmienite auto dla zaawansowanego kierowcy.','1993','Mercedes','Borno');

INSERT INTO UserCars(userID,carID) VALUES (4,2);
INSERT INTO UserCars(userID,carID) VALUES (1,3);
INSERT INTO UserCars(userID,carID) VALUES (3,2);
INSERT INTO UserCars(userID,carID) VALUES (6,2);
INSERT INTO UserCars(userID,carID) VALUES (7,1);

INSERT INTO Company(numberOfEmployees,companyDescription,history) VALUES (2000,'Spółka słynnej osobistości Malczyńskiego','Działa od 1980 roku');
INSERT INTO Company(numberOfEmployees,companyDescription,history) VALUES (4200,'Spółka słynnej osobistości Walczyńskiego','Działa od 1984 roku');
INSERT INTO Company(numberOfEmployees,companyDescription,history) VALUES (800,'Spółka słynnej osobistości Balczyńskiego','Działa od 1983 roku');

INSERT INTO CompanyBrand(brandName,companyID) VALUES ('Opel',3);
INSERT INTO CompanyBrand(brandName,companyID) VALUES ('Volkswagen',1);
INSERT INTO CompanyBrand(brandName,companyID) VALUES ('Volkswagen',2);

COMMIT;