-- Create a list of employees and their immediate managers.

SELECT e1.firstName as Employee, e2.firstName as Manager 
FROM employee e1 
INNER JOIN employee e2 ON e1.managerId = e2.employeeId;

-- get a list of sales people with zero sales

SELECT e.firstName 
FROM employee e
left JOIN sales s ON e.employeeId = s.employeeId
WHERE s.employeeId IS NULL and e.title = 'Sales Person';