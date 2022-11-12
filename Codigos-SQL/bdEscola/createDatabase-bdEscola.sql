--DROP DATABASE bdEscola
CREATE DATABASE bdEscola
GO

USE bdEscola

CREATE TABLE tbCurso(
	codCurso INT PRIMARY KEY IDENTITY(1,1)
	, nomeCurso VARCHAR(50) NOT NULL
	, cargaHorariaCurso INT NOT NULL
	, valorCurso SMALLMONEY NOT NULL
)

CREATE TABLE tbAluno(
	codAluno INT PRIMARY KEY IDENTITY(1,1)
	, nomeAluno VARCHAR(50) NOT NULL
	, dataNascimentoAluno SMALLDATETIME
	, rgAluno CHAR(12) NOT NULL
	, naturalidadeAluno CHAR(2) NOT NULL
)

CREATE TABLE tbTurma(
	codTurma INT PRIMARY KEY IDENTITY(1,1)
	, nomeTurma CHAR(3) NOT NULL
	, horarioTurma SMALLDATETIME NOT NULL
	, codCurso INT FOREIGN KEY REFERENCES tbCurso(codCurso)
)

CREATE TABLE tbMatricula(
	codMatricula INT PRIMARY KEY IDENTITY(1,1)
	, dataMatricula SMALLDATETIME NOT NULL
	, codAluno INT FOREIGN KEY REFERENCES tbAluno(codAluno)
	, codTurma INT FOREIGN KEY REFERENCES tbTurma(codTurma)
)

/* 
SELECT * FROM tbAluno
SELECT * FROM tbCurso
SELECT * FROM tbMatricula
SELECT * FROM tbTurma
*/