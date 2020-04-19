USE db_escola_softblue;

ALTER TABLE tb_students
ADD COLUMN bithday VARCHAR(10);

ALTER TABLE tb_students
CHANGE bithday birthday VARCHAR(10);

ALTER TABLE tb_students
MODIFY birthday DATE;

CREATE INDEX index_name_student
ON tb_students(name);

ALTER TABLE tb_instructors
ADD COLUMN email VARCHAR(100);

CREATE INDEX index_course_instructor
ON tb_courses(id_crs_inst);

ALTER TABLE tb_instructors
DROP COLUMN email;

SELECT * FROM tb_students;

SELECT * FROM tb_instructors;

SELECT * FROM tb_courses;
