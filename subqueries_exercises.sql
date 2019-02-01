use employees;



select first_name, last_name, hire_date
from employees
where hire_date in
(
    select hire_date
    from employees
    where emp_no = 101010
)



select title
from titles
where emp_no in
(
    select emp_no
    from employees
    where first_name = 'Aamod'
);


SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
  SELECT emp_no
  FROM dept_manager
  WHERE to_date > now()
)
  AND gender = 'F';

select dept_name
from departments
where dept_no
in
(
    select dept_no
    from dept_manager
    where emp_no
    in
    (
        select emp_no
        from employees
        where gender = 'F'
        and to_date > now()
    )
);