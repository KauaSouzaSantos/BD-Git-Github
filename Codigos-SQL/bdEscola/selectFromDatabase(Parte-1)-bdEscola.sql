USE bdEscola

-- 1� Listar o nome, rg, e data de anivers�rio dos alunos nascidos em SP;
SELECT nomeAluno AS 'Nome', rgAluno AS 'RG', dataNascimentoAluno AS 'Nascimento' FROM tbAluno
	WHERE naturalidadeAluno = 'SP'

-- 2� Listar o nome e o rg dos alunos com o nome come�ado com P;
SELECT nomeAluno AS 'Nome', rgAluno AS 'RG' FROM tbAluno
	WHERE nomeAluno LIKE 'P%'

-- 3� Listar o nome dos cursos cuja carga hor�ria seja superior a 2000 horas;
SELECT nomeCurso AS 'Curso' FROM tbCurso
	WHERE cargaHorariaCurso > 2000

-- 4� Listar o nome o o rg de todos os alunos que possuem o sobrenome Silva;
SELECT nomeAluno AS 'Nome' FROM tbAluno
	WHERE nomeAluno LIKE '%Silva%'

-- 5� Listar o nome dos alunos e a data de nascimento que fazem anivers�rio em mar�o
SELECT nomeAluno AS 'Nome', dataNascimentoAluno AS 'Nascimento' FROM tbAluno
	--WHERE DATEPART(MONTH, dataNascimentoAluno) = 3
	WHERE MONTH(dataNascimentoAluno) = 3

-- 6� Listar o c�digo dos alunos e a data de matr�cula dos alunos matriculados em maio de qualquer ano
SELECT codAluno AS 'ID Aluno', dataMatricula AS 'Data Matr�cula' FROM tbMatricula
	WHERE MONTH(dataMatricula) = 5

-- 7� Listar o c�digo dos alunos matr�culados no curso de ingl�s
SELECT codAluno AS 'ID Aluno' FROM tbMatricula
	WHERE codTurma IN (1, 2)

-- 8� Listar o c�digo dos alunos matr�culados na turma 1AA
SELECT codAluno AS 'ID Aluno' FROM tbMatricula
	WHERE codTurma = 3

-- 9� Listar todos os dados de todos os alunos
SELECT * FROM tbAluno

-- 10� Listar todos os dados de todas as turmas
SELECT * FROM tbTurma
