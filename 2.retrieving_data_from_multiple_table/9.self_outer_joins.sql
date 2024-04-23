USE sql_hr;
SELECT e.first_name,
e.employee_id,
man.first_name AS managers 
FROM employees  e
LEFT JOIN employees man 
ON e.reports_to = man.employee_id