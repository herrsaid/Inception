create database wp;
create user 'salamane'@'%' identified by 'Lamane@mariadb';
grant all on wp.* to 'salamane'@'%' ;
flush privileges;
alter user 'root'@'localhost' identified by 'Root@mariadb'