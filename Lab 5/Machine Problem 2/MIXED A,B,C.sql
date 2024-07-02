
CREATE TABLE Renters (
    RenterNumber INT PRIMARY KEY,
    FirstName VARCHAR(50),
    MiddleInitial CHAR(1),
    LastName VARCHAR(50),
    Address VARCHAR(100),
    City VARCHAR(50),
    State VARCHAR(50),
    PostalCode VARCHAR(10),
    TelephoneNumber VARCHAR(15),
    EmailAddress VARCHAR(100)
);


INSERT INTO Renters (RenterNumber, FirstName, MiddleInitial, LastName, Address, City, State, PostalCode, TelephoneNumber, EmailAddress)
VALUES
(1, 'Juan', 'D', 'Cruz', '123 Rizal Ave', 'Manila', 'National Capital Region', '1000', '09171234567', 'juan.cruz@gmail.com'),
(2, 'Maria', 'L', 'Santos', '456 Bonifacio St', 'Quezon City', 'National Capital Region', '1100', '09172345678', 'maria.santos@gmail.com'),
(3, 'Jose', 'M', 'Reyes', '789 Mabini Rd', 'Cebu City', 'Central Visayas', '6000', '09173456789', 'jose.reyes@gmail.com'),
(4, 'Ana', 'P', 'Gonzalez', '321 Aguinaldo Blvd', 'Davao City', 'Davao Region', '8000', '09174567890', 'ana.gonzalez@gmail.com'),
(5, 'Pedro', 'R', 'Torres', '654 Macapagal Ave', 'Pasay', 'National Capital Region', '1300', '09175678901', 'pedro.torres@gmail.com'),
(6, 'Luisa', 'B', 'Garcia', '987 Quirino St', 'Tagaytay', 'Calabarzon', '4120', '09176789012', 'luisa.garcia@gmail.com'),
(7, 'Carlos', 'C', 'Lopez', '123 Marcos Hwy', 'Baguio', 'Cordillera Administrative Region', '2600', '09177890123', 'carlos.lopez@gmail.com'),
(8, 'Rosa', 'D', 'Martinez', '456 Luna Rd', 'San Fernando', 'La Union', '2500', '09178901234', 'rosa.martinez@gmail.com'),
(9, 'Alberto', 'E', 'Hernandez', '789 Roxas Blvd', 'Iloilo City', 'Western Visayas', '5000', '09179012345', 'alberto.hernandez@gmail.com'),
(10, 'Elena', 'F', 'Diaz', '321 Osmena St', 'Zamboanga City', 'Zamboanga Peninsula', '7000', '09170123456', 'elena.diaz@gmail.com');


CREATE TABLE Properties (
    CondoLocationNumber INT PRIMARY KEY,
    CondoLocationName VARCHAR(100),
    Address VARCHAR(100),
    City VARCHAR(50),
    State VARCHAR(50),
    PostalCode VARCHAR(10),
    CondoUnitNumber INT,
    SquareFootage INT,
    NumberOfBedrooms INT,
    NumberOfBathrooms INT,
    MaxPersons INT,
    BaseWeeklyRate DECIMAL(10, 2)
);

-- Insert sample data into Properties table
INSERT INTO Properties (CondoLocationNumber, CondoLocationName, Address, City, State, PostalCode, CondoUnitNumber, SquareFootage, NumberOfBedrooms, NumberOfBathrooms, MaxPersons, BaseWeeklyRate)
VALUES
(1, 'Boracay Beach Condo', '123 White Beach St', 'Boracay', 'Aklan', '5608', 101, 1200, 2, 2, 6, 1500.00),
(2, 'Baguio Mountain Retreat', '456 Camp John Hay Rd', 'Baguio', 'Benguet', '2600', 202, 1400, 3, 2, 8, 1800.00),
(3, 'Makati Downtown Apartment', '789 Ayala Ave', 'Makati', 'Metro Manila', '1226', 303, 1000, 1, 1, 4, 2000.00),
(4, 'Tagaytay Lakeview Cottage', '321 Taal Lake Rd', 'Tagaytay', 'Cavite', '4120', 404, 900, 2, 1, 5, 1700.00),
(5, 'Cebu Country House', '654 Mango Ave', 'Cebu City', 'Cebu', '6000', 505, 1500, 3, 2, 7, 1600.00),
(6, 'Manila Urban Loft', '987 Taft Ave', 'Manila', 'Metro Manila', '1000', 606, 1100, 2, 2, 5, 1900.00),
(7, 'Davao Suburban Home', '321 Jacinto Ext', 'Davao City', 'Davao del Sur', '8000', 707, 1300, 3, 2, 8, 1800.00),
(8, 'Palawan Beach Villa', '123 Rizal Dr', 'Puerto Princesa', 'Palawan', '5300', 808, 1400, 4, 3, 10, 2100.00),
(9, 'La Union Seaside Bungalow', '456 San Fernando Blvd', 'San Fernando', 'La Union', '2500', 909, 1200, 2, 1, 6, 1600.00),
(10, 'Bohol Forest Cabin', '789 Chocolate Hills Rd', 'Carmen', 'Bohol', '6319', 1010, 800, 1, 1, 4, 1400.00);


CREATE TABLE RentalAgreements (
    AgreementID INT PRIMARY KEY,
    RenterNumber INT,
    FirstName VARCHAR(50),
    MiddleInitial CHAR(1),
    LastName VARCHAR(50),
    Address VARCHAR(100),
    City VARCHAR(50),
    State VARCHAR(50),
    PostalCode VARCHAR(10),
    TelephoneNumber VARCHAR(15),
    StartDate DATE,
    EndDate DATE,
    WeeklyRentalAmount DECIMAL(10, 2),
    FOREIGN KEY (RenterNumber) REFERENCES Renters(RenterNumber)
);


INSERT INTO RentalAgreements (AgreementID, RenterNumber, FirstName, MiddleInitial, LastName, Address, City, State, PostalCode, TelephoneNumber, StartDate, EndDate, WeeklyRentalAmount)
VALUES
(1, 1, 'Juan', 'D', 'Cruz', '123 Rizal Ave', 'Manila', 'National Capital Region', '1000', '09171234567', '2024-07-01', '2024-07-08', 1500.00),
(2, 2, 'Maria', 'L', 'Santos', '456 Bonifacio St', 'Quezon City', 'National Capital Region', '1100', '09172345678', '2024-07-02', '2024-07-09', 1800.00),
(3, 3, 'Jose', 'M', 'Reyes', '789 Mabini Rd', 'Cebu City', 'Central Visayas', '6000', '09173456789', '2024-07-03', '2024-07-10', 2000.00),
(4, 4, 'Ana', 'P', 'Gonzalez', '321 Aguinaldo Blvd', 'Davao City', 'Davao Region', '8000', '09174567890', '2024-07-04', '2024-07-11', 1700.00),
(5, 5, 'Pedro', 'R', 'Torres', '654 Macapagal Ave', 'Pasay', 'National Capital Region', '1300', '09175678901', '2024-07-05', '2024-07-12', 1600.00),
(6, 6, 'Luisa', 'B', 'Garcia', '987 Quirino St', 'Tagaytay', 'Calabarzon', '4120', '09176789012', '2024-07-06', '2024-07-13', 1900.00),
(7, 7, 'Carlos', 'C', 'Lopez', '123 Marcos Hwy', 'Baguio', 'Cordillera Administrative Region', '2600', '09177890123', '2024-07-07', '2024-07-14', 1800.00),
(8, 8, 'Rosa', 'D', 'Martinez', '456 Luna Rd', 'San Fernando', 'La Union', '2500', '09178901234', '2024-07-08', '2024-07-15', 2100.00),
(9, 9, 'Alberto', 'E', 'Hernandez', '789 Roxas Blvd', 'Iloilo City', 'Western Visayas', '5000', '09179012345', '2024-07-09', '2024-07-16', 1600.00),
(10, 10, 'Elena', 'F', 'Diaz', '321 Osmena St', 'Zamboanga City', 'Zamboanga Peninsula', '7000', '09170123456', '2024-07-10', '2024-07-17', 1400.00);


SELECT * FROM Renters;


SELECT * FROM Properties;


SELECT * FROM RentalAgreements;
