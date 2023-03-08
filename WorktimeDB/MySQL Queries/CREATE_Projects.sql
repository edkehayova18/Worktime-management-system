USE WorktimeManagementSystem

CREATE TABLE Projects(
  ProjectID int NOT NULL,
  [Name] varchar(100) NOT NULL,
  [Description] ntext,
  StartDate smalldatetime NOT NULL,
  EndDate smalldatetime,
  PRIMARY KEY(ProjectID)
);