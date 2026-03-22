CREATE TYPE tipo_leccion_enum AS ENUM ('VIDEO', 'PDF', 'TEXTO');

CREATE TABLE lecciones (
    id_leccion SERIAL PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    descripcion TEXT,
    tipo tipo_leccion_enum NOT NULL,
    enlace VARCHAR(500),
    orden INTEGER NOT NULL,
    id_modulo INTEGER NOT NULL REFERENCES modulos(id_modulo)
);