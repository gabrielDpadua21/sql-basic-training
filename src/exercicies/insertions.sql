USE db_escola_softblue;

# TYPES

SELECT * FROM tb_types_courses;

INSERT INTO tb_types_courses(name) VALUES('Data Base');

INSERT INTO tb_types_courses(name) VALUES('Programming');

INSERT INTO tb_types_courses(name) VALUES('Data modeling');

INSERT INTO tb_types_courses(name) VALUES('Data Science');

# INSTRUCTORES

SELECT * FROM tb_instructors;

INSERT INTO tb_instructors(name, phone) VALUES('Andre Milani', '1111-1111');

INSERT INTO tb_instructors(name, phone) VALUES('Carlos Tosin', '2222-2222');

# COURSES

SELECT * FROM tb_courses;

INSERT INTO tb_courses(name, id_crs_type, id_crs_inst, price) VALUES('Java Fundamentals', 2, 2, 270.0);

INSERT INTO tb_courses(name, id_crs_type, id_crs_inst, price) VALUES('Advanced Java', 2, 2, 330.0);

INSERT INTO tb_courses(name, id_crs_type, id_crs_inst, price) VALUES('SQL Complet', 1, 1, 170);

INSERT INTO tb_courses(name, id_crs_type, id_crs_inst, price) VALUES('PHP Basic', 2, 1, 270.0);

# STUDENTS

SELECT * FROM tb_students;

INSERT INTO tb_students(name, address, mail, birthday) 
VALUES('Jose', 'Rua XV de Novembro 72', 'jose@softblue.com', '1995-07-21');

INSERT INTO tb_students(name, address, mail, birthday) 
VALUES('Wagner', 'Av Paulista', 'wagner@softblue.com', '1990-02-21');

INSERT INTO tb_students(name, address, mail, birthday) 
VALUES('Emilio', 'Rua Lajes 103 - ap: 701', 'emilio@softblue.com', '1985-01-12');

INSERT INTO tb_students(name, address, mail, birthday) 
VALUES('Cris', 'Rua Tauney 22', 'cris@softblue.com', '1996-04-24');

INSERT INTO tb_students(name, address, mail, birthday) 
VALUES('Regina', 'Rua Salles 305', 'regina@softblue.com', '1992-09-15');

INSERT INTO tb_students(name, address, mail, birthday) 
VALUES('Fernando', 'Av central 30', 'fernando@softblue', '1991-12-25');

# REQUESTS

SELECT * FROM tb_requests;

INSERT INTO tb_requests(id_req_std, req_date, req_time)
VALUES(2, '2010-04-15', '11:23:32');

INSERT INTO tb_requests(id_req_std, req_date, req_time)
VALUES(2, '2010-04-15', '14:36:21');

INSERT INTO tb_requests(id_req_std, req_date, req_time)
VALUES(3, '2010-04-16', '11:17:45');

INSERT INTO tb_requests(id_req_std, req_date, req_time)
VALUES(4, '2010-04-17', '14:27:22');

INSERT INTO tb_requests(id_req_std, req_date, req_time)
VALUES(5, '2010-04-18', '11:18:21');

INSERT INTO tb_requests(id_req_std, req_date, req_time)
VALUES(6, '2010-04-19', '13:47:35');

INSERT INTO tb_requests(id_req_std, req_date, req_time)
VALUES(6, '2010-04-20', '18:13:44');

# REQUESTS DETAILS

SELECT * FROM tb_requests_details;

INSERT INTO tb_requests_details(id_dt_req, id_dt_crs, dt_price)
VALUES(1, 1, 270);

INSERT INTO tb_requests_details(id_dt_req, id_dt_crs, dt_price) 
VALUES(1, 2, 330);

INSERT INTO tb_requests_details(id_dt_req, id_dt_crs, dt_price)
VALUES(2, 1, 270);

INSERT INTO tb_requests_details(id_dt_req, id_dt_crs, dt_price)
VALUES(2, 2, 330);

INSERT INTO tb_requests_details(id_dt_req, id_dt_crs, dt_price)
VALUES(2, 3, 170);

INSERT INTO tb_requests_details(id_dt_req, id_dt_crs, dt_price)
VALUES(3, 4, 270);

INSERT INTO tb_requests_details(id_dt_req, id_dt_crs, dt_price)
VALUES(4, 2, 330);

INSERT INTO tb_requests_details(id_dt_req, id_dt_crs, dt_price)
VALUES(4, 4, 270);

INSERT INTO tb_requests_details(id_dt_req, id_dt_crs, dt_price)
VALUES(5, 3, 170);

INSERT INTO tb_requests_details(id_dt_req, id_dt_crs, dt_price)
VALUES(6, 3, 170);

INSERT INTO tb_requests_details(id_dt_req, id_dt_crs, dt_price) 
VALUES(7, 4, 270);






