/*
*
* SUBQUERYS
*
*/

/* EX 01 */
select name from tb_courses
where price in(
        select min(price) from tb_courses
);

/* EX 02 */
select name from tb_courses
where id_crs_type in (
        select id_types from tb_types_courses where id_types = 2
);

/* EX 03 */
select name from tb_courses
where exists(
    select id_types from tb_types_courses where id_types = 2
);

/* EX 04 */
select i.name, sum(rd.dt_price) as 'Total'
from tb_instructors i
inner join tb_courses c
on c.id_crs_inst = id_inst
inner join tb_requests_details rd
on c.id_crs = rd.id_dt_crs
group by i.name;

/* EX 05 */
create view vw_students_buys as
select s.name, sum(rd.dt_price)
from tb_students s
inner join tb_requests r
    on s.id_std = r.id_req_std
inner join tb_requests_details rd
    on r.id_req = rd.id_dt_req
group by s.name;

select * from vw_students_buys;