postgres=# CREATE DATABASE skypro;
CREATE DATABASE
postgres=# \l
                                          Список баз данных
    Имя    | Владелец | Кодировка |     LC_COLLATE      |      LC_CTYPE       |     Права доступа
-----------+----------+-----------+---------------------+---------------------+-----------------------
 postgres  | postgres | UTF8      | Russian_Russia.1251 | Russian_Russia.1251 |
 skypro    | postgres | UTF8      | Russian_Russia.1251 | Russian_Russia.1251 |
 template0 | postgres | UTF8      | Russian_Russia.1251 | Russian_Russia.1251 | =c/postgres          +
           |          |           |                     |                     | postgres=CTc/postgres
 template1 | postgres | UTF8      | Russian_Russia.1251 | Russian_Russia.1251 | =c/postgres          +
           |          |           |                     |                     | postgres=CTc/postgres
(4 строки)


postgres=# \c skypro
Вы подключены к базе данных "skypro" как пользователь "postgres".
skypro=# CREATE TABLE employee (
    skypro(# id BIGSERIAL NOT NULL PRIMARY KEY,
        skypro(# first_name VARCHAR(50) NOT NULL,
        skypro(# last_name VARCHAR(50) NOT NULL,
        skypro(# gender VARCHAR(6) NOT NULL,
        skypro(# age INT NOT NULL
        skypro(# );
CREATE TABLE
    skypro=# SELECT * FROM employee;
id | first_name | last_name | gender | age
----+------------+-----------+--------+-----
(0 строк)


skypro=# INSERT INTO employee(
skypro(# first_name, last_name, gender, age)
skypro-# VALUES('Anastasia', 'Anikeeva', 'female',37);
INSERT 0 1
skypro=# INSERT INTO employee(
skypro(# first_name, last_name, gender, age)
skypro-# VALUES('Pavel', 'Golubev', 'male', 50);
INSERT 0 1
skypro=# INSERT INTO employee(
skypro(# first_name, last_name, gender, age)
skypro-# VALUES('Ruslan', 'Tomilin', 'male', 46);
INSERT 0 1
skypro=# SELECT * FROM employee;
 id | first_name | last_name | gender | age
----+------------+-----------+--------+-----
  1 | Anastasia  | Anikeeva  | female |  37
  2 | Pavel      | Golubev   | male   |  50
  3 | Ruslan     | Tomilin   | male   |  46
(3 строки)


skypro=# UPDATE employee SET first_name = 'Oleg', last_name = 'Repin', gender = 'male', age = 28 WHERE id=1;
UPDATE 1
skypro=# SELECT * FROM employee;
 id | first_name | last_name | gender | age
----+------------+-----------+--------+-----
  2 | Pavel      | Golubev   | male   |  50
  3 | Ruslan     | Tomilin   | male   |  46
  1 | Oleg       | Repin     | male   |  28
(3 строки)


skypro=# DELETE FROM employee WHERE id=3;
DELETE 1
skypro=# SELECT * FROM employee;
 id | first_name | last_name | gender | age
----+------------+-----------+--------+-----
  2 | Pavel      | Golubev   | male   |  50
  1 | Oleg       | Repin     | male   |  28
(2 строки)


skypro=#