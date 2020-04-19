
/*
 * 
 * EXERCICIOS DE SELEÇÃO SIMPLES
 * 
 * */

/* EX 01 */

select * from tb_students;

/* EX 02 */

select name from tb_courses;

/* EX 03 */

select name, price from tb_courses 
where price > 200;

/* EX 04 */

select name, price from tb_courses
where price > 200 and price < 300;

/* EX 05 */
select * from tb_requests
where req_date between '2010-04-15' and '2010-04-18';

/* EX 06 */
select * from tb_requests
where req_date = '2010-04-15';






