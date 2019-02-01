use employees;

SELECT count(*), gender
FROM employees
WHERE first_name = 'Irena'
OR first_name = 'Vidya'
OR first_name = 'Maya'
GROUP BY gender;

select last_name
from employees
where last_name
like '%q%'
and last_name
not like '%qu%'
group by last_name
order by last_name;

select last_name
from employees
where last_name
like '%q%'
and last_name
not like '%qu%'
group by last_name;

select last_name, first_name
from employees
where last_name
like 'e%e'
group by last_name, first_name;

select last_name
from employees
where last_name
like 'e%e'
group by last_name;

select distinct title
from titles;
