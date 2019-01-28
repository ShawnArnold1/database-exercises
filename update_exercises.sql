use codeup_test_db;
-- select * from albums;
-- select * from albums where release_date < 1980;
-- select name from albums where artist like '%jackson%';

select sales from albums;
update albums set sales = sales * 10;
select sales from albums;
-- update albums set sales = sales * 10;
select release_date from albums;
update albums set release_date = 1800 where release_date < 1980;
select release_date from albums;
select artist from albums;
update albums set artist = 'Peter Jackson' where artist = 'Michael Jackson';
select artist from albums;