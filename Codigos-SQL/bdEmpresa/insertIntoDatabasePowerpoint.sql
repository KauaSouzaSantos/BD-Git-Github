USE bdEmpresa

INSERT INTO tbDepto(nomeDepto)
VALUES 
	('Recursos Humanos')
	, ('Tecnologico')
	, ('Marketing')

SELECT * FROM tbDepto

INSERT INTO tbFunc(nomeFunc, cpfFunc, rgFunc, idDepto)
VALUES
	('André Júnior', '000.000.000-00', '22.222.222-22', 2)
	, ('Lenildo Fabiano', '111.111.111-11', '11.111.111-11', 1)
	, ('Carlos Clodoaldo', '222.222.222-22', '00.000.000-00', 3)

SELECT * FROM tbFunc

INSERT INTO tbFoneFunc(numFoneFunc, idFunc)
VALUES
	('+55 11 12345-6789', 2)
	, ('+55 71 12345-6789', 1)
	, ('+55 31 12345-6789', 3)

SELECT * FROM tbFoneFunc

INSERT INTO tbConjuge(nomeConjuge, idFunc)
VALUES
	('Marineia Calabresa', 3)
	, ('Fabrícia Poeta', 1)
	, ('Merlinda Batista', 2)

SELECT * FROM tbConjuge

INSERT INTO tbDependente(nomeDependente, dtNasctoDependente, idFunc)
VALUES
	('Maria Eugênia', '05/07/2004', 1)
	, ('Marcelo Massa', '03/02/2002', 3)
	, ('Juliano Fabileu', '01/01/1998', 2)

SELECT * FROM tbDependente

INSERT INTO tbProjeto(nomeProjeto, cargaHorariaProjeto)
VALUES
	('Aprimoramento de Segurança de Rede', 43)
	, ('Divulgação de Marca', 48)
	, ('Treinamento e Desenvolvimento', 47)

SELECT * FROM tbProjeto

INSERT INTO tbFuncProjeto(qtdHoras,	idFunc,	idProjeto)
VALUES
	(405, 2, 3)
	, (450, 1, 1)
	, (425, 3, 2)

SELECT * FROM tbFuncProjeto
