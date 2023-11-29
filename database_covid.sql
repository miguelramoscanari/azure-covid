DROP TABLE [dbo].[dim_departamento]
DROP TABLE [dbo].[dim_pais]
DROP TABLE [dbo].[dim_calendario]
DROP TABLE [dbo].[covid]
DROP TABLE [dbo].[covid_mundial]


CREATE TABLE [dbo].[dim_departamento]
(
    pais VARCHAR(100) NOT NULL,
    paiscode VARCHAR(5) NOT NULL,
    departamento VARCHAR(100) NOT NULL,
    departamentocode VARCHAR(10) NOT NULL,
    departamentoPais VARCHAR(100) NOT NULL
)

CREATE TABLE [dbo].[dim_pais]
(
    paisCode VARCHAR(100) NOT NULL,
    pais VARCHAR(5) NOT NULL,
    continente VARCHAR(100) NOT NULL
)

CREATE TABLE [dbo].[dim_calendario]
(
    fecha DATE NOT NULL,
    Año VARCHAR(5) NOT NULL,
    Trimestre VARCHAR(20) NOT NULL,
    Mes VARCHAR(20) NOT NULL,
    Dia VARCHAR(20) NOT NULL,
    AñoMes VARCHAR(20) NOT NULL
)

CREATE TABLE [dbo].[covid]
(
    departamentocode VARCHAR(10) NOT NULL,
    fecha DATE NOT NULL,
    sexo VARCHAR(20) NOT NULL,
    etapa_de_vida VARCHAR(20) NOT NULL,
    positivo INTEGER NOT NULL,
    fallecido INTEGER NOT NULL
)

CREATE TABLE [dbo].[covid_mundial]
(
    paisCode VARCHAR(10) NOT NULL,
    fecha DATE NOT NULL,
    positivo INTEGER NOT NULL,
    fallecido INTEGER NOT NULL
)

