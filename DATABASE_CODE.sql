DROP DATABASE IF EXISTS MEMBERS;
CREATE DATABASE MEMBERS;
USE MEMBERS;

CREATE TABLE Users (
	UserID INT(5) PRIMARY KEY AUTO_INCREMENT NOT NULL,
    PersonName VARCHAR(50) NOT NULL,		-- NOT BEING USED
    Email VARCHAR(50) NOT NULL UNIQUE,		-- NOT BEING USED
	Username VARCHAR(50) NOT NULL UNIQUE,
    PW VARCHAR(50) NOT NULL
);

CREATE TABLE FavoriteNooks (
	UserID INT(5) NOT NULL,
    BusinessID VARCHAR(50) NOT NULL,	-- UNIQUE STRING TO IDENTIFY NOOK
    NookName VARCHAR(50) NOT NULL,		-- NOT BEING USED
    NookAddress VARCHAR(100) NOT NULL UNIQUE,		-- NOT BEING USED
    NookPhone INT(11),		-- NOT BEING USED
    NookRating INT(3),		-- NOT BEING USED
    NookType VARCHAR(100),		-- NOT BEING USED
    NookWebsite VARCHAR(100),		-- NOT BEING USED
    SaveTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	FOREIGN KEY (UserID) REFERENCES Users(UserID)
);