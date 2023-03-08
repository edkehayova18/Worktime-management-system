USE WorktimeManagementSystem

CREATE TABLE Employees(
  ID int NOT NULL,
  LastName varchar(50) NOT NULL,
  FirstName varchar(50) NOT NULL,
  Age int,
  Gender varchar(20),
  PhoneNum varchar(12),
  Email varchar(50),
  DepartmentID int NOT NULL,
  Salary DECIMAL(8,2),
  PRIMARY KEY (ID)
);