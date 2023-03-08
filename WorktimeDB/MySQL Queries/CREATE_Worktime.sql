USE WorktimeManagementSystem

CREATE TABLE EmployeeWorktime(
  WorktimeID int NOT NULL,
  EmployeeID int NOT NULL,
  ProjectID int NOT NULL,
  StartWorktime smalldatetime NOT NULL,
  EndWorktime smalldatetime,
  PRIMARY KEY(WorktimeID)
);