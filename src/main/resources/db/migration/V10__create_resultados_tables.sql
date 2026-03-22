CREATE TABLE resultados(
    id_resultado SERIAL PRIMARY KEY,
    nota NUMERIC(5,2) NOT NULL,
    aprobado BOOLEAN NOT NULL,
    fecha_realizado TIMESTAMP NOT NULL DEFAULT NOW(),
    id_registro INTEGER NOT NULL REFERENCES registro_cursos(id_registro),
    id_examen INTEGER NOT NULL REFERENCES examenes(id_examen),
    UNIQUE (id_registro, id_examen)
);