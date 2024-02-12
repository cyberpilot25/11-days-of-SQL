INSERT INTO Employees (Firstname, Lastname, Salary)
VALUES
    ('Wang', 'Lee', 1900),
    ('Greta', 'Wu', 1200);
SELECT id, Firstname, Lastname, Salary
FROM Employees
ORDER BY id DESC;