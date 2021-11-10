CREATE TABLE CURSO (
  codigo INTEGER PRIMARY KEY,
  nombre VARCHAR NOT NULL,
  descripcion VARCHAR,
  turno VARCHAR
);

ALTER TABLE CURSO ADD cupo INTEGER;

INSERT INTO CURSO(codigo, nombre, descripcion, turno, cupo)
VALUES (101, "Algoritmos", "Algoritmos y Estructuras de Datos", "Mañana", 35);

INSERT INTO CURSO(codigo, nombre, descripcion, turno, cupo)
VALUES (102, "Matemática Discreta", "", "Tarde", 30);

INSERT INTO CURSO(codigo, nombre, descripcion, turno, cupo)
VALUES (200, NULL, NULL, "test", 30);

INSERT INTO CURSO(codigo, nombre, descripcion, turno, cupo)
VALUES (101, "Test", "test", "tarde", 30);

UPDATE CURSO SET cupo = 25;

DELETE FROM CURSO WHERE nombre = "Algoritmos";
