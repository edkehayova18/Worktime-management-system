USE WorktimeManagementSystem

CREATE TABLE Resources(
  ResourcesID int NOT NULL,
  ProjectID int NOT NULL, 
  Income DECIMAL(10,2),
  Expenses DECIMAL(10, 2),
  PRIMARY KEY(ResourcesID)
)