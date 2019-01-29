USE codeup_test_db;
drop table if exists albums;
create table if not exists albums
(
  id int un not null auto_increment,
  artist varchar (100),
  name varchar (150) not null,
  release_date int(10) not null,
  sales float not null,
  genre varchar (150),
  primary key (id)
);



