-- Criando o banco de dados e utilizando
-- O esquema permanecerá o padrão dbo
DROP DATABASE IF EXISTS BOSHBENEFICIO
GO

CREATE DATABASE BOSHBENEFICIO
GO

USE BOSHBENEFICIO
GO

-- Criação tabela de eventos

-- 0 FALSE - Ativo / 1 - TRUE Inativo
CREATE FUNCTION validaSeAtivo(@dataTermino date)
RETURNS CHAR(1)
AS
BEGIN
	DECLARE @resultado CHAR;
	IF @dataTermino < CONVERT(DATE, GETDATE())
		SET @resultado = 1
	ELSE
		SET @resultado = 0
	RETURN @resultado
END
GO

CREATE TABLE Evento(
	idEvento		UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(),
	nomeEvento		VARCHAR(30) NOT NULL,
	descricaoEvento		VARCHAR(100),
	dataInicio		DATE NOT NULL,
	dataTermino		DATE NOT NULL,
	inativo			AS dbo.validaSeAtivo(dataTermino)
)
GO

-- Criação tabela Ilha
CREATE TABLE Ilha(
	idIlha			UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(),
	descricao		VARCHAR(25) DEFAULT '-'
)
GO

-- Criação tabela de benefício

CREATE TABLE Beneficio(
	idBeneficio		UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(),
	descricaoBeneficio  	VARCHAR(100) NOT NULL
)
GO

-- Criação tabela de evento-benefício
CREATE TABLE EventoBeneficio(
	idEvento		UNIQUEIDENTIFIER NOT NULL,
	idBeneficio 		UNIQUEIDENTIFIER NOT NULL,
)
GO

ALTER TABLE EventoBeneficio ADD CONSTRAINT FK_EventoBeneficio_Evento
 FOREIGN KEY (idEvento)
 REFERENCES Evento (idEvento)
GO

ALTER TABLE EventoBeneficio ADD CONSTRAINT FK_EventoBeneficio_Beneficio
 FOREIGN KEY (idBeneficio)
 REFERENCES Beneficio (idBeneficio)
GO

-- Criação tabela de ilha-benefício
CREATE TABLE ilhaBeneficio(
	idIlha			UNIQUEIDENTIFIER,
	idBeneficio 		UNIQUEIDENTIFIER,
)
GO

ALTER TABLE ilhaBeneficio ADD CONSTRAINT FK_ilhaBeneficio_Ilha
 FOREIGN KEY (idIlha)
 REFERENCES Ilha (idIlha)
GO

ALTER TABLE ilhaBeneficio ADD CONSTRAINT FK_ilhaBeneficio_Beneficio
 FOREIGN KEY (idBeneficio)
 REFERENCES Beneficio (idBeneficio)
GO

-- Criação tabela de Terceiro
CREATE TABLE Terceiro(
	idTerceiro		UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(),
	nome			VARCHAR(50) NOT NULL,
	identificacao   	VARCHAR(25) NOT NULL UNIQUE,
	dataIndicacao		DATETIME
)
GO

-- Criação tabela de Beneficiario
CREATE TABLE Beneficiario(
	idBeneficiario      	UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(),
	nomeCompleto		VARCHAR(50) NOT NULL,
	dataNascimento		DATE,
	edv			INT DEFAULT 0,
	cpf			VARCHAR(14) DEFAULT '-',
	unidade			VARCHAR(20),
	dataInclusao		DATETIME,
	responsavelInclusao	VARCHAR(60)
)
GO

CREATE TABLE EventoBeneficiario(
	idEvento		UNIQUEIDENTIFIER NOT NULL,
	idBeneficiario 		UNIQUEIDENTIFIER NOT NULL,
)
GO

ALTER TABLE EventoBeneficiario ADD CONSTRAINT FK_EventoBeneficiario_Evento
 FOREIGN KEY (idEvento)
 REFERENCES Evento (idEvento)
GO

ALTER TABLE EventoBeneficiario ADD CONSTRAINT FK_EventoBeneficiario_Beneficiario
 FOREIGN KEY (idBeneficiario)
 REFERENCES Beneficiario (idBeneficiario)
GO

-- Criação tabela Beneficiario x Beneficio x Terceiro
CREATE TABLE BeneficiarioBeneficio(
	idBeneficiario		UNIQUEIDENTIFIER NOT NULL,
	idBeneficio		UNIQUEIDENTIFIER NOT NULL,
	idTerceiro		UNIQUEIDENTIFIER,
	entregue		CHAR(1) DEFAULT 0,
	quantidade		INT
)
GO

ALTER TABLE BeneficiarioBeneficio ADD CONSTRAINT FK_BeneficiarioBeneficio_Beneficiario
 FOREIGN KEY (idBeneficiario)
 REFERENCES Beneficiario (idBeneficiario)
GO

ALTER TABLE BeneficiarioBeneficio ADD CONSTRAINT FK_BeneficiarioBeneficio_Beneficio
 FOREIGN KEY (idBeneficio)
 REFERENCES Beneficio (idBeneficio)
GO

ALTER TABLE BeneficiarioBeneficio ADD CONSTRAINT FK_BeneficiarioBeneficio_Terceiro
 FOREIGN KEY (idTerceiro)
 REFERENCES Terceiro (idTerceiro)
GO
