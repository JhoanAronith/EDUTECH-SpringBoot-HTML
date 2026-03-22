CREATE TABLE opciones(
    id_opcion SERIAL PRIMARY KEY,
    opcion TEXT NOT NULL,
    correcta BOOLEAN NOT NULL,
    id_pregunta INTEGER NOT NULL REFERENCES preguntas(id_pregunta)
);