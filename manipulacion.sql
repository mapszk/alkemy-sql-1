/* Cree una tabla llamada CURSO con (codigo, nombre, descripcion, turno) */
CREATE TABLE CURSO (
  codigo INTEGER PRIMARY KEY,
  nombre VARCHAR NOT NULL,
  descripcion VARCHAR,
  turno VARCHAR
);

/* Agregue un campo “cupo” de tipo numérico */
ALTER TABLE CURSO ADD cupo INTEGER;

/* Inserte datos en la tabla: (101, "Algoritmos", "Algoritmos y Estructuras de Datos", "Mañana", 35) */
INSERT INTO CURSO(codigo, nombre, descripcion, turno, cupo)
VALUES (101, "Algoritmos", "Algoritmos y Estructuras de Datos", "Mañana", 35);

/* Inserte datos en la tabla: (102, "Matemática Discreta", "", "Tarde", 30) */
INSERT INTO CURSO(codigo, nombre, descripcion, turno, cupo)
VALUES (102, "Matemática Discreta", "", "Tarde", 30);

/* Intente ingresar un registro con el nombre nulo y verifique que no funciona. */
INSERT INTO CURSO(codigo, nombre, descripcion, turno, cupo)
VALUES (200, NULL, NULL, "test", 30);

/* Intente ingresar un registro con la clave primaria repetida y verifique que no funciona. */
INSERT INTO CURSO(codigo, nombre, descripcion, turno, cupo)
VALUES (101, "Test", "test", "tarde", 30);

/* Actualice, para todos los cursos, el cupo en 25. */
UPDATE CURSO SET cupo = 25;

/* Elimine el curso Algoritmos. */
DELETE FROM CURSO WHERE nombre = "Algoritmos";
