use join_test_db;

CREATE TABLE roles (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  role_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 2),
('sally', 'sally@example.com', 3),
('adam', 'adam@example.com', 3),
('jane', 'jane@example.com', null),
('mike', 'mike@example.com', null);

insert into roles(name)
values('owner');

insert into users
(name, email, role_id) values
('mynameisJEFF', 'nameisjeff@gmail.com', 2),
('mynameistinle', 'nameistinkle@gmail.com', 2),
('mynameisbobandy', 'nameisbobandy@gmail.com', 2),
('mynameisbobandy', 'nameisbobandy@gmail.com', 2),
('masdfasdfandy', 'nameisboba23243@gmail.com', 2),
('mynameistina', 'nameistina@gmail.com', null);

select * from users;

update users
set role_id = 3
where id = 16;

delete from users
where id > 10;


select *
from users
join roles
on roles.id = users.role_id;


select *
from users
left join roles
on roles.id = users.role_id;


select *
from users
right join roles
on roles.id = users.role_id;

select *
from roles;

select count(*)
as Amount_Of_Roles
from users
where users.role_id = 2;


select count(*)
as Roles
from roles
join is
count(*)
as AmountPer
from users.role_id;

select roles.id, count(*)
from users;

SELECT roles.name, COUNT(*)
FROM users
right JOIN roles
on roles.id = users.role_id
GROUP BY roles.name;