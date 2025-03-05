--Comentario de una sola linea
/*
    Comentario de varias lineas
*/

rem Comentario de una sola linea

--CREACION DE TABLAS
--=====================================
/*CREATE TABLE paciente (
    --campo1 tipo_dato,
    id_paciente NUMBER(5),
    --campo2 tipo_dato,
    nombre VARCHAR2(50),
    --campo3 tipo_dato,
    edad NUMBER(3)
)*/

--CREACION DE TABLAS CON UNA SOLA LLAVE PRIMARIA
/*CREATE TABLE pais (
    id_pais NUMBER(5) PRIMARY KEY,
    nombre VARCHAR2(50),
    descripcion VARCHAR2(50)
)*/

--CREACION DE TABLAS CON VARIAS LLAVES PRIMARIAS
CREATE TABLE medico5 (
    id_pais NUMBER(5),
    nombre VARCHAR2(50),
    descripcion VARCHAR2(50),
    PRIMARY KEY (nombre, descripcion), 
);

CREATE TABLE paciente10 (
    id_paciente NUMBER(5) PRIMARY KEY,
    nombre VARCHAR2(50),
    id_pais NUMBER(5),
    nombre_medico VARCHAR2(50),-- Para referenciar la clave primaria compuesta de medico
    edad NUMBER(3),
    FOREIGN KEY (nombre_medico) REFERENCES medico5(nombre)  -- Referencia compuesta a medico
);