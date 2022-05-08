CREATE DATABASE beeline;

USE beeline;

CREATE TABLE Users (
	ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255)
);

CREATE TABLE TT_status (
	ID INT AUTO_INCREMENT PRIMARY KEY, 
    Name VARCHAR(255)
);

CREATE TABLE TroubleTickets (
		Tt_number INT,
		User_id INT,
    Work_time DATETIME,	
    Tt_status INT,
    FOREIGN KEY (User_id) REFERENCES Users(ID),
    FOREIGN KEY (Tt_status) REFERENCES TT_status(ID)
);

SHOW TABLES