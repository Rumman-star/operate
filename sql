-- Create a table called Employees
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Department VARCHAR(50),
    Salary DECIMAL(10, 2)
);

-- Insert sample data into the Employees table
INSERT INTO Employees (EmployeeID, FirstName, LastName, Age, Department, Salary)
VALUES
    (1, 'Alice', 'Johnson', 30, 'HR', 60000.00),
    (2, 'Bob', 'Smith', 45, 'Engineering', 85000.00),
    (3, 'Charlie', 'Brown', 29, 'Sales', 50000.00),
    (4, 'Diana', 'Prince', 35, 'Engineering', 95000.00),
    (5, 'Eve', 'Davis', 40, 'HR', 70000.00);

-- Demonstrate SQL operators

-- 1. Arithmetic Operators
SELECT FirstName, LastName, Salary, Salary * 0.10 AS Bonus
FROM Employees;

-- 2. Comparison Operators
SELECT FirstName, LastName, Age, Department
FROM Employees
WHERE Age > 30;

-- 3. Logical Operators
SELECT FirstName, LastName, Department, Salary
FROM Employees
WHERE Department = 'Engineering' AND Salary > 80000;

-- 4. IN Operator
SELECT FirstName, LastName, Department
FROM Employees
WHERE Department IN ('HR', 'Sales');

-- 5. LIKE Operator
SELECT FirstName, LastName
FROM Employees
WHERE LastName LIKE 'S%';

-- 6. BETWEEN Operator
SELECT FirstName, LastName, Age
FROM Employees
WHERE Age BETWEEN 30 AND 40;

-- 7. IS NULL Operator
-- Add a new column and update some values to NULL
ALTER TABLE Employees ADD ManagerID INT;
UPDATE Employees SET ManagerID = NULL WHERE EmployeeID IN (1, 3);
SELECT FirstName, LastName, ManagerID
FROM Employees
WHERE ManagerID IS NULL;

-- 8. Aggregate Functions and GROUP BY
SELECT Department, AVG(Salary) AS AverageSalary
FROM Employees
GROUP BY Department;

-- Clean up the database
DROP DATABASE SampleDB;
