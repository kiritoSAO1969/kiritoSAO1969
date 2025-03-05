ALTER SESSION SET "_oracle_script"=true;
CREATE USER student IDENTIFIED by learn
DEFAULT TABLESPACE users
TEMPORARY TABLESPACE temp;

GRANT CONNECT, RESOURCE TO student;

ALTER USER student QUOTA UNLIMITED ON USERS;

CONNECT student/learn

@C:Curso\Codigos\Apoyo\createStudent.SQL
@C:Curso\Codigos\Apoyo\sql_book_add_tables.SQL