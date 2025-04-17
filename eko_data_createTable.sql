Use Eko_Ride;

-- Driver Table    
    CREATE TABLE Drivers (
    DriverID	 INT 		PRIMARY KEY,
    Name 		VARCHAR(100)	 NOT NULL,
    Rating 		DECIMAL(2, 1) 	NOT NULL,
    TotalRides	 INT 			NOT NULL
);

