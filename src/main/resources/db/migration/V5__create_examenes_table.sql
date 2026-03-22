CREATE TABLE examenes(
    id_examen SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    nota_minima NUMERIC(5,2) NOT NULL,
    id_curso INTEGER NOT NULL UNIQUE REFERENCES cursos(id_curso)
);