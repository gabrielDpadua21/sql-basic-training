USE db_escola_softblue;

# TABLES

CREATE TABLE tb_types_courses (
	id_types INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
	name VARCHAR(200) NOT NULL
);

CREATE TABLE tb_instructors (
	id_inst INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
	name VARCHAR(200) NOT NULL,
	phone VARCHAR(15) NOT NULL
);

CREATE TABLE tb_courses (
	id_crs INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
	name VARCHAR(200) NOT NULL,
	id_crs_type INT NOT NULL,
	id_crs_inst INT NOT NULL,
	price FLOAT(10, 2) NOT NULL,
	FOREIGN KEY (id_crs_type) REFERENCES tb_types_courses(id_types),
	FOREIGN KEY (id_crs_inst) REFERENCES tb_instructors(id_inst)
);

CREATE TABLE tb_students (
	id_std INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
	name VARCHAR(150) NOT NULL,
	address VARCHAR(200) NOT NULL,
	mail VARCHAR(150) NOT NULL
);

CREATE TABLE tb_requests (
	id_req INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
	id_req_std INT NOT NULL,
	req_date DATE NOT NULL,
	req_time TIME NOT NULL
);

ALTER TABLE tb_requests
ADD FOREIGN KEY (id_req_std) REFERENCES tb_students(id_std);

CREATE TABLE tb_requests_details (
	id_dt_crs INT NOT NULL,
	id_dt_req INT NOT NULL,
	dt_price FLOAT(10, 2) NOT NULL,
	FOREIGN KEY (id_dt_crs) REFERENCES tb_courses(id_crs),
	FOREIGN KEY (id_dt_req) REFERENCES tb_requests(id_req)
);

SELECT * FROM tb_types_courses;

SELECT * FROM tb_instructors;

SELECT * FROM tb_courses;

SELECT * FROM tb_students;

SELECT * FROM tb_requests;

SELECT * FROM tb_requests_details;

