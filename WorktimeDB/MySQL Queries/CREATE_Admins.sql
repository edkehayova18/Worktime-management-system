USE WorktimeManagementSystem

CREATE TABLE Admins(
  ID int NOT NULL,
  LastName varchar(50) NOT NULL,
  FirstName varchar(50) NOT NULL,
  Age int,
  Gender varchar(12),
  PhoneNum varchar(12),
  Email varchar(50),
  UserName varchar(50) NOT NULL,
  [PassWord] varchar(50) NOT NULL,
  PRIMARY KEY(ID)
);