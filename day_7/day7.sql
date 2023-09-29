-- create the table
CREATE TABLE EmployeesDB.Employees2 (
  ID INT,
  Name VARCHAR(255),
  Department VARCHAR(255)
);

-- populate the table
INSERT INTO EmployeesDB.Employees2 (ID, Name, Department)
VALUES
(1, "Himanshu Kandpal", "IT"),
(2, "Arun Jain", "management"),
(3, "Prasad Bhosale", "management"),
(4, "Akshay Kumar", "IT"),
(5, "Siddhi Rane", "marketing"),
(6, "Rishabh Kevancia", "management"),
(7, "Rohit Sharma", "IT");

-- display departments having atleast 2 employees sorted by 
-- department with highest number of employees
SELECT Department, COUNT(*) AS Total_Employees
FROM EmployeesDB.Employees2 
GROUP BY Department
HAVING Total_Employees > 2; 
