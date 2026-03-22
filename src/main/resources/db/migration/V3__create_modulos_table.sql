CREATE TABLE modulos (
    id_modulo SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    orden INTEGER NOT NULL,
    id_curso INTEGER NOT NULL REFERENCES cursos(id_curso)
);