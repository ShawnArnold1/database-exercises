use employees;


SELECT departments.dept_name
as 'Department Name',
CONCAT(employees.first_name, ' ', employees.last_name)
as 'Department Manager'
FROM departments
JOIN dept_manager
ON dept_manager.dept_no = departments.dept_no
JOIN employees
ON employees.emp_no = dept_manager.emp_no
WHERE dept_manager.to_date > NOW()
ORDER BY `Department Name`;

select departments.dept_name
as 'Department Name', concat(employees.first_name, ' ', employees.last_name)
as 'Department Manager'
from departments
join dept_manager
on dept_manager.dept_no = departments.dept_no
join employees
on employees.emp_no = dept_manager.emp_no
where dept_manager.to_date > now()
order by 'Department Name';

select dept_manager.dept_no
from dept_manager;

select departments.DEPT_NO
from departments;



SELECT d.dept_name
as 'Department Name',
CONCAT(e.first_name, ' ', e.last_name)
as 'Department Manager'
FROM departments
as d
JOIN dept_manager
as dm
ON dm.dept_no = d.dept_no
JOIN employees
as e
ON e.emp_no = dm.emp_no
WHERE dm.to_date > NOW()
ORDER BY `Department Name`;


select e.last_name
from employees
as e;




