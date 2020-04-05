/*
 * 
 * EXERCICIOS DE UPDATED
 * 
 * 
 */

select * from tb_students;

select * from tb_courses;

/* EX 01 */

update tb_students 
set address = 'Av. Brasil 788'
where id_std = 1;

/* EX 02 */

update tb_students 
set mail = 'cristiano@softblue.com'
where id_std = 4;

/* EX 03 */

update tb_courses
set price = price * 1.1
where price < 200;

/* EX 04 */
update tb_courses
set name = 'Php fundamentals'
where id_crs = 4;



