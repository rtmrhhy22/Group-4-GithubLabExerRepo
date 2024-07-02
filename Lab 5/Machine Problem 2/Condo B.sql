
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


SELECT * FROM Properties;
