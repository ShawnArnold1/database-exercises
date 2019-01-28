use codeup_test_db;

select release_date from albums where release_date > 1991;
select name as 'Disco!' from albums where genre = 'disco';
select name from albums where artist like '%jackson';
select 'This is artist from album';