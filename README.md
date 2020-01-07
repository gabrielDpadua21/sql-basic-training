# Curso de SQL completo Softblue

## Projeto de banco de dados para escola de programação.

### Banco de dados

- db_escola_softblue

### Tabelas

Escopos não normalizados

- tb_cursos (Tabela de cursos)

NOME DO CAMPO | TIPO
------------- | ------
nm_curso      | VARCHAR
des_curso     | VARCHAR
preco         | FLOAT
nm_instrutor  | VARCHAR
tl_instrutor  | VARCHAR


- tb_alunos (Tabela de alunos)

NOME DO CAMPO      | TIPO
------------------ | --------
nm_aluno           | VARCHAR
endereco           | VARCHAR
telefone           | VARCHAR
cursos             | VARCHAR
