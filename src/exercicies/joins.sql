/* RELATIONSHIPS EXERCICES */ 

/* EX 01*/

select c.name, t.name
from tb_courses c
inner join tb_types_courses t
on c.id_crs_type = t.id_types;

/* EX 02 */
select c.name, t.name, i.name, i.phone
from tb_courses c
inner join tb_types_courses t
on c.id_crs_type = t.id_types
inner join tb_instructors i
on c.id_crs_inst = i.id_inst;

/* EX 03 */
select r.id_req, r.req_date, r.req_time, d.id_dt_crs
from tb_requests r
inner join tb_requests_details d
on r.id_req = d.id_dt_req;

/* EX 04 */
select r.id_req, r.req_date, r.req_time, c.name
from tb_requests r
inner join tb_requests_details d
on r.id_req = d.id_dt_req
inner join tb_courses c
on d.id_dt_crs = c.id_crs;

/* EX 05 */
select r.id_req as 'Request', 
	r.req_date as 'Day', 
	r.req_time as 'Time', 
	c.name as 'Course', 
	s.name as 'Student'
from tb_requests r
inner join tb_requests_details d
on r.id_req = d.id_dt_req
inner join tb_courses c
on d.id_dt_crs = c.id_crs
inner join tb_students s
on r.id_req_std = s.id_std;
