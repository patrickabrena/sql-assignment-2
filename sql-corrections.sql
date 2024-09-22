/*corrections on sql assignments*/

/*Show all the Department Names, along with their manager's full names, job titles and salaries*/
/*NOTE: Departments without a manager will not be shown*/
SELECT d.department_name, e.manager_id, e.first_name, e.last_name, j.job_title, j.min_salary, j.max_salary
FROM departments d
	JOIN employees e
		ON d.department_id=e.department_id
	JOIN employees m ON m.employee_id=e.manager_id
	JOIN jobs j ON j.job_id=m.job_id
	ORDER BY last_name ASC;