use employees;

select *
from employees
where first_name
in ('Irena', 'Vidya', 'Maya')
order by first_name;


select *
from employees
where first_name
in ('Irena', 'Vidya', 'Maya')
order by first_name, last_name;


select *
from employees
where first_name
in ('Irena', 'Vidya', 'Maya')
order by last_name, first_name;


select *
from employees
where first_name
in ('Irena', 'Vidya', 'Maya')
order by last_name desc, first_name asc;


select *
from employees
where last_name
like 'e%'
order by emp_no asc;

select *
from employees
where hire_date
between '1990-01-01'
and '1999-12-31';

select *
from employees
where hire_date
like '199%-12-25'
order by birth_date, hire_date;

select *
from employees
where last_name
like '%q%';


select *
from employees
where first_name
= 'Irena'
and gender
= 'M'
or first_name
 = 'Vidya'
and gender
 = 'M'
or first_name
='Maya'
and gender
= 'M';

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

select *
from employees
where hire_date
between '1990-01-01'
and '1999-12-31'
and birth_date
like '%-12-25'
order by birth_date asc, hire_date desc
limit 5;

select *
from employees
where last_name
like '%q%'
and last_name
not like '%qu%';