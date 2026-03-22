CREATE TYPE estado_registro_enum AS ENUM('EN_PROGRESO', 'COMPLETADO');

CREATE TABLE registro_cursos(
    id_registro SERIAL PRIMARY KEY,
    fecha_inscripcion TIMESTAMP NOT NULL DEFAULT NOW(),
    estado estado_registro_enum NOT NULL DEFAULT 'EN_PROGRESO',
    id_usuario INTEGER NOT NULL REFERENCES usuarios(id_usuario),
    id_curso INTEGER NOT NULL REFERENCES cursos(id_curso),
    UNIQUE(id_usuario, id_curso)
);