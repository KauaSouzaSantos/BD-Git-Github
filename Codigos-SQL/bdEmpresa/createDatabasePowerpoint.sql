--DROP DATABASE bdEmpresa

CREATE DATABASE bdEmpresa
GO

USE bdEmpresa

CREATE TABLE tbDepto(
	idDepto INT PRIMARY KEY IDENTITY(1,1)
	, nomeDepto VARCHAR(30) NOT NULL
)

CREATE TABLE tbFunc(
	idFunc INT PRIMARY KEY IDENTITY(1,1)
	, nomeFunc VARCHAR(50) NOT NULL
	, cpfFunc CHAR(14) NOT NULL
	, rgFunc VARCHAR(16) NOT NULL
	, idDepto INT FOREIGN KEY REFERENCES tbDepto(idDepto)
)

CREATE TABLE tbFoneFunc(
	idFoneFunc INT PRIMARY KEY IDENTITY(1,1)
	, numFoneFunc VARCHAR(18) NOT NULL
	, idFunc INT FOREIGN KEY REFERENCES tbFunc(idFunc)
)

CREATE TABLE tbConjuge(
	idConjuge INT PRIMARY KEY IDENTITY(1,1)
	, nomeConjuge VARCHAR(40) NOT NULL
	, idFunc INT FOREIGN KEY REFERENCES tbFunc(idFunc)
)

CREATE TABLE tbDependente(
	idDependente INT PRIMARY KEY IDENTITY(1,1)
	, nomeDependente VARCHAR(40) NOT NULL
	, dtNasctoDependente SMALLDATETIME NOT NULL
	, idFunc INT FOREIGN KEY REFERENCES tbFunc(idFunc) 
)

CREATE TABLE tbProjeto(
	idProjeto INT PRIMARY KEY IDENTITY(1,1)
	, nomeProjeto VARCHAR(40) NOT NULL
	, cargaHorariaProjeto INT NOT NULL 
)

CREATE TABLE tbFuncProjeto(
	idFuncProjeto INT PRIMARY KEY IDENTITY(1,1)
	, qtdHoras INT NOT NULL
	, idFunc INT FOREIGN KEY REFERENCES tbFunc(idFunc)
	, idProjeto INT FOREIGN KEY REFERENCES tbProjeto(idProjeto)
)