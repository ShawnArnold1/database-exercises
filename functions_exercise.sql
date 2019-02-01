use employees;


select *
from employees
where last_name
like 'e%'
or last_name
like '%e';

-- 'e%e'


select *
from employees
where last_name
like 'e%'
and last_name
like '%e';

select emp_no, concat(first_name, ' ', last_name)
as full_name, hire_date
from employees
where last_name
like 'e%e';

select concat(first_name,' ', last_name)
 as First_Last
from employees
where first_name
like '%e%'
and last_name
like '%e%';

select curdate()
from employees
where birth_date
like '%-12-25';

where hire_date
between '1990-01-01'
and '1999-12-31'
and birth_date
like '%-12-25'
order by birth_date asc, hire_date desc;


select emp_no,
concat(first_name, ' ', last_name)
as full_name,
DATEDIFF(curdate(), hire_date)
as days_employed
from employees
where hire_date
between '1990-01-01'
and '1999-12-31'
and birth_date
like '%-12-25'
order by birth_date asc, hire_date;


select *
from employees
limit 200;
