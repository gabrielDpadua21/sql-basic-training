/* VIEWS EXERCICIES */

/* EX 01 */

create view programming_courses as 
select c.name, c.price
from tb_courses c
inner join tb_types_courses t
on c.id_crs_type = t.id_types
where t.name = 'Programming';

select * from programming_courses;

/* EX 02 */

create view course_type_instructor as
select c.name as 'Course', t.name as 'Type', i.name as 'Intructor'
from tb_courses c
inner join tb_types_courses t
on c.id_crs_type = t.id_types
inner join tb_instructors i 
on c.id_crs_inst = i.id_inst;

select * from course_type_instructor;

/* EX 3 */

create view vw_students_requests as
select s.name, r.req_date, r.id_req
from tb_requests r
inner join tb_students s
on r.id_req_std = s.id_std;

select * from vw_students_requests;