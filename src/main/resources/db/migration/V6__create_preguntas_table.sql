CREATE TABLE preguntas(
    id_pregunta SERIAL PRIMARY KEY,
    pregunta TEXT NOT NULL,
    id_examen INTEGER NOT NULL REFERENCES examenes(id_examen)
);