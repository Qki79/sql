CREATE DEFINER=`root`@`localhost` PROCEDURE `organization_schema`()
BEGIN

SELECT CONCAT(e.first_name," ", e.last_name) AS full_name, e.employee_id, m.first_name
FROM employees e
JOIN employees m
	ON e.reports_to = m.employee_id;

END