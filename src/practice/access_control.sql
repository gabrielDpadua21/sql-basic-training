/*
*
* PRACTICE - ACCESS CONTROL
*
*/

create user 'frajola'@'localhost' identified by 'asterix2108';

grant all on db_practice.* to 'frajola'@'localhost';

create user 'frajola2'@'%' identified by 'asterix2108';

grant select on db_practice.* to 'frajola2'@'%';

grant insert on db_practice.tb_cars to 'frajola2'@'%';

revoke insert on db_practice.tb_cars from 'frajola2'@'%';

revoke select on db_practice.* from 'frajola2'@'%';

grant select on db_practice.tb_cars to 'frajola2'@'%';

drop user 'frajola'@'localhost';

/* MYSQL INTERN TABLES */

select User from mysql.user;

show grants for 'frajola2'@'%';