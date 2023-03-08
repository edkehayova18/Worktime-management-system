USE WorktimeManagementSystem

CREATE TABLE Departments(
  DepartmentID int NOT NULL,
  [Name] varchar(50) NOT NULL,
  AdminID int NOT NULL
  PRIMARY KEY(DepartmentID)
);