CREATE TABLE progreso_lecciones (
    id_progreso SERIAL PRIMARY KEY,
    completada BOOLEAN NOT NULL DEFAULT FALSE,
    fecha_completado TIMESTAMP,
    id_registro INTEGER NOT NULL REFERENCES registro_cursos(id_registro),
    id_leccion INTEGER NOT NULL REFERENCES lecciones(id_leccion),
    UNIQUE(id_registro, id_leccion)
);