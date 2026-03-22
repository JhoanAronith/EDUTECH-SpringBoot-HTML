CREATE TABLE certificados(
    id_certificado SERIAL PRIMARY KEY,
    codigo_unico VARCHAR(50) NOT NULL UNIQUE,
    fecha_emision TIMESTAMP NOT NULL DEFAULT NOW(),
    id_registro INTEGER NOT NULL UNIQUE REFERENCES registro_cursos(id_registro)
);