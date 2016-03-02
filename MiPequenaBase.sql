-- Table: public."Direccion"

-- DROP TABLE public."Direccion";

CREATE TABLE public."Direccion"
(
  idnom "char"[],
  algo1 integer NOT NULL,
  algo2 integer,
  CONSTRAINT "idPk" PRIMARY KEY (algo1),
  CONSTRAINT fk FOREIGN KEY (idnom)
      REFERENCES public."Usuario" (nombre) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public."Direccion"
  OWNER TO postgres;

-- Table: public."Usuario"

-- DROP TABLE public."Usuario";

CREATE TABLE public."Usuario"
(
  nombre "char"[] NOT NULL, -- nombre del usuario
  apellido "char"[],
  CONSTRAINT "Id" PRIMARY KEY (nombre)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public."Usuario"
  OWNER TO postgres;
COMMENT ON TABLE public."Usuario"
  IS 'tabla del usuario';
COMMENT ON COLUMN public."Usuario".nombre IS 'nombre del usuario';

