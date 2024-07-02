
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


SELECT * FROM RentalAgreements;
