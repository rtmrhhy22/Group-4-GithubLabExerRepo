
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


SELECT * FROM Renters;
