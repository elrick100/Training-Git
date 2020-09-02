------------------------------- Create Employees Table on Traing
SELECT TOP 50
       EmpID,
       Plant,
       FirstName,
       LastName,
       LastName AS EmpName,
       [Status],
       0 AS AccessLevel
FROM Employees
--------------------------------- Enable/Disable
Employees_GET @Trainer -- 'Trainer'
Employees_UPD @Trainer, @AccessLevel

--LearningPath - NewTable