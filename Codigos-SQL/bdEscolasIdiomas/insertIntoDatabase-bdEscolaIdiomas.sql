USE bdEscolaIdiomas

INSERT INTO tbCurso(nomeCurso)
VALUES
	('Inglês')
	, ('Espanhol')
	, ('Alemão')

SELECT * FROM tbCurso

INSERT INTO tbNivel(descNivel)
VALUES
	('Iniciante')
	, ('Intermediário')
	, ('Fluente')

SELECT * FROM tbNivel

INSERT INTO tbPeriodo(descPeriodo)
VALUES
	('Manhã')
	, ('Tarde')
	, ('Noite')

SELECT * FROM tbPeriodo

INSERT INTO tbDiaSemana(diaSemana)
VALUES
	('Segunda-Feira')
	, ('Terça-Feira')
	, ('Quarta-Feira')
	, ('Quinta-Feira')
	, ('Sexta-Feira')
	, ('Sábado')

SELECT * FROM tbDiaSemana

INSERT INTO tbAluno(nomeAluno, rgAluno, enderecoAluno, numEndAluno, compAluno, bairroAluno, cepAluno, cidadeAluno)
VALUES
	('Pedro Mascarenhas', '12.345.678-9', 'Rua Belo Príncipe', 1033, '', 'Vila Olanda Bezerra', '12345-678', 'São Paulo')
	, ('Marcos Fernando', '98.765.432-1', 'Rua Mariana Oliveira', 12, 'Apartamento 93, Bloco C', 'Parque dos Bandeirantes', '98765-432', 'São Paulo')
	, ('Felipe Pereira', '11.111.111-1', 'Rua Estrada Velha', 71, 'Casa 3, Fundo', 'Nova Olímpia', '54321-867', 'São Bernardo do Campo')
	, ('Bruna Oliveira', '22.222.222-2', 'Rua Pereira Marques', 211, '', 'Rivieira Paulista', '31243-586', 'São Caetano')
	, ('Joana Fonseca', '33.333.333-3', 'Rua Evaldo Luíz', 2, '', 'Mooca', '19860-145', 'São Paulo')
	, ('Valentino Esperanto', '44.444.444-4', 'Rua Padre Evandro Solimão', 74, '', 'Vila Olímpia', '18645-142', 'Santo André')
	
SELECT * FROM tbAluno

INSERT INTO tbFoneAluno(foneAluno, idAluno)
VALUES
	('(11) 11111-1111', 1)
	, ('(11) 11111-1112', 1)
	, ('(11) 22222-2222', 2)
	, ('(11) 22222-2223', 2)
	, ('(11) 33333-3333', 3)
	, ('(11) 33333-3334', 3)
	, ('(11) 44444-4444', 4)
	, ('(11) 44444-4445', 4)
	, ('(11) 55555-5555', 5)
	, ('(11) 55555-5556', 5)
	, ('(11) 66666-6666', 6)
	, ('(11) 66666-6667', 6)

SELECT * FROM tbFoneAluno

INSERT INTO tbTurma(horarioTurma, idCurso, idPeriodo, idNivel, idDiaSemana)
VALUES
	('12:30:00', 1, 2, 1, 6)
	, ('07:00:00', 2, 1, 2, 5)
	, ('19:00:00', 3, 3, 3, 4)
	, ('06:45:00', 1, 1, 3, 3)
	, ('15:25:00', 3, 2, 1, 1)

SELECT * FROM tbTurma

INSERT INTO tbMatricula(dataMatricula, idAluno, idTurma)
VALUES
	('19/02/2020', 1, 1)
	, ('18/02/2020', 1, 4)
	, ('6/04/2019', 2, 3)
	, ('3/05/2019', 2, 2)
	, ('1/02/2021', 3, 5)
	, ('25/02/2021', 3, 4)
	, ('21/06/2018', 4, 5)
	, ('21/06/2018', 4, 2)
	, ('13/04/2022', 5, 1)
	, ('3/04/2022', 5, 3)
	, ('8/07/2019', 6, 1)
	, ('8/07/2019', 6, 5)

SELECT * FROM tbMatricula

