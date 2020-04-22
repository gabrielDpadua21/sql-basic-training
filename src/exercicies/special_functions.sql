/* EXERCICES - MODULE 5 */

/* EX 01 */

select name from tb_students
where id_std
in (
    select distinct(id_req_std) from tb_requests
);

/* EX 02 */

select name from tb_students s
inner join tb_requests r
on r.id_req_std = s.id_std
order by r.req_date desc
limit 1;


/* EX 03 */
select name from tb_students s
inner join tb_requests r
on s.id_std = r.id_req_std
order by r.req_date
limit 1;

/* EX 4 */
select name from tb_students s
inner join tb_requests r
on s.id_std = r.id_req_std
order by r.req_date
limit 1 offset 2;

/* EX 5 */
select count(*) from tb_courses c
inner join tb_requests_details rd
on c.id_crs = rd.id_dt_crs;

/* EX 6 */

select sum(price) from tb_courses c
inner join tb_requests_details rd
on c.id_crs = rd.id_dt_crs;

/* EX 7 */
select avg(price) from tb_courses c
inner join tb_requests_details rd
on c.id_crs = rd.id_dt_crs
where rd.id_dt_req = 2;

/* EX 8 */
select max(price) from tb_courses;

/* EX 9 */
select min(price) from tb_courses;

/* EX 10 */
select sum(price) from tb_courses c
inner join tb_requests_details rd
on c.id_crs = rd.id_dt_crs
group by id_dt_req;

/* EX 11 */
select i.name as 'Instrutor', count(c.id_crs) as 'Total de Cursos'
from tb_instructors i
inner join tb_courses c
on i.id_inst = c.id_crs_inst
group by c.id_crs_inst;

/* EX 12 */
select s.name, r.id_req, sum(c.price) from tb_students s
inner join tb_requests r
on s.id_std = r.id_req_std
inner join tb_requests_details rd
on rd.id_dt_req = r.id_req
inner join tb_courses c
on c.id_crs = rd.id_dt_crs
group by r.id_req having sum(c.price) > 500;

/* EX 13 */
select r.id_req, s.name, count(c.id_crs) as 'TOTAL DE CURSOS PEDIDOS'
from tb_students s
inner join tb_requests r
on s.id_std = r.id_req_std
inner join tb_requests_details rd
on r.id_req = rd.id_dt_req
inner join tb_courses c
on c.id_crs = rd.id_dt_crs
group by r.id_req having count(c.id_crs) > 1;


/* EX 14 */
select name, address
from tb_students
where address like "%%av%%";

/* EX 15 */
select name
from tb_courses
where name like "%%java%%";