# Curso de SQL completo Softblue

## Projeto de banco de dados para escola de programação.

### Banco de dados

- db_school_softblue

### Tabelas

Escopos não normalizados

- tb_courses (Tabela de cursos)

NOME DO CAMPO  | TIPO
-------------- | ------
name           | VARCHAR
description    | VARCHAR
price          | FLOAT
nm_instructor  | VARCHAR
tel_instructor | VARCHAR


- tb_students (Tabela de alunos)

NOME DO CAMPO      | TIPO
------------------ | --------
name               | VARCHAR
address            | VARCHAR
phone              | VARCHAR
courses            | VARCHAR
requests           | VARCHAR


## Normalização

### Tabelas (Normalizadas) - 1 Versão

- tb_courses
  
NOME DO CAMPO   | TIPO  
--------------- | ------
id (PK)         | INT AUTO INCREMENT NOT NULL
name            | VARCHAR(100) NOT NULL
type            | VARCHAR(100) NOT NULL
price           | FLOAT(10, 2)

- tb_students

NOME DO CAMPO   | TIPO 
--------------- | ------
id (PK)         | INT AUTO INCREMENT NOT NULL
name            | VARCHAR(100) NOT NULL
address         | VARCHAR(150) NOT NULL
phone           | VARCHAR(15) NOT NULL

- tb_instructors

NOME DO CAMPO   | TIPO
--------------- | -----
id (PK)         | INT AUTO INCREMENT NOT NULL
name            | VARCHAR(100) NOT NULL
phone           | VARCHAR(15) NOT NULL


- tb_students_course

NOME DO CAMPO    | TIPO 
---------------- | -----
id (PK)          | INT AUTO INCREMENT NOT NULL
id_student (FK)  | INT NOT NULL
id_course (FK)   | INT NOT NULL

- tb_instructor_course

NOME DO CAMPO       | TIPO
------------------- | -----
id_course (FK)      | INT NOT NULL
id_instructor (FK)  | INT NOT NULL



