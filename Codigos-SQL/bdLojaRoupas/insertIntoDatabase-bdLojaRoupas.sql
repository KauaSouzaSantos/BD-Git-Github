USE bdLojaRoupas

INSERT INTO tbFabricante(nomeFabricante)
VALUES
	('Malwee')
	, ('Marisol')
	, ('Cia da Malha')

INSERT INTO tbFuncionario(nomeFuncionario, idadeFuncionario, dataAdmissao, salarioFuncionario)
VALUES
	('Marcelo de Souza', 23, '15/01/2022', 1500)
	, ('Luana Fernandes', 19, '08/02/2022', 1000)

INSERT INTO tbProduto(nomeProduto, precoProduto, dataEntradaProduto, estoqueProduto, codFuncionario, codFabricante)
VALUES
	('Desinfetante Ultrapower Malwee', 5.90, '19/07/2022', 200, 2, 1)
	, ('Camisa de Malha com estampa', 45.00, '05/08/2022', 123, 1, 3)
	, ('Oleo de Soja Marisol', 9.50, '11/10/2022', 500, 2, 2)
	, ('Vinagre de Maçã Marisol', 6.45, '04/09/2022', 498, 2, 2)
	, ('Água Sanitária Malwee', 7.38, '03/02/2022', 143, 1, 1)
	, ('Sandalia de Malha', 89.99, '06/05/2022', 10, 1, 3)
	, ('Álcool 70% Malwee', 5.20, '01/02/2022', 1000, 2, 1)
	, ('Saia de Tecido', 29.99, '28/05/2022', 234, 2, 3)
	, ('Azeite de Oliva Marisol', 10.98, '20/09/2022', 2500, 1, 2)


INSERT INTO tbCliente(nomeCliente, idadeCliente)
VALUES
	('João Catano de  Souza', 31)
	, ('Pedro Henrique Macedo', 27)
	, ('Luana Faria de Souza', 35)
	, ('Jurandira Orlinda Oliveira', 48)
	, ('Marilene Óster de Lima', 56)

INSERT INTO tbVendedor(nomeVendedor)
VALUES
	('João Santana')
	, ('Raquel Torres')

INSERT INTO tbVenda(totalVenda, dataVenda, codCliente, codVendedor)
VALUES
	(605.98, '15/07/2022', 1, 1)
	, (427.43, '09/03/2022', 2, 2)
	, (383.95, '02/02/2022', 3, 2)
	, (295.87, '05/05/2022', 4, 2)
	, (384.76, '25/05/2022', 5, 1)

INSERT INTO tbItensVenda(quantidadeItens, subTotalItens, codVenda, codProduto)
VALUES
	(25, 253, 1, 1)
	, (10, 100, 1, 7)
	, (100, 638, 2, 9)
	, (70, 258.39, 2, 4)
	, (37, 150, 3, 2)
	, (45, 300, 3, 6)
	, (56, 750, 4, 5)
	, (32, 400, 4, 7)
	, (60, 900, 5, 8)
	, (24, 272.84, 5, 6)

SELECT * FROM tbFabricante
SELECT * FROM tbCliente
SELECT * FROM tbFuncionario
SELECT * FROM tbItensVenda
SELECT * FROM tbProduto
SELECT * FROM tbVenda
SELECT * FROM tbVendedor