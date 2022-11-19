USE bdEstoque

-- ALUNO COM NÚMERO PAR

-- 1° A soma das quantidades dos produtos em estoque que são do fabricante P&G
SELECT SUM(qtdProduto) AS 'Estoque prod. P&G' FROM tbProduto
	WHERE idFabricante = 2

-- 2° A média de preços dos produtos que são da P&G
SELECT AVG(valorProduto) AS 'Preço méd. prod. P&G' FROM tbProduto
	WHERE idFabricante = 2

-- 3° A soma do preço dos produtos da Unilever
SELECT SUM(valorProduto) AS 'Preço total prod. Unilever' FROM tbProduto
	WHERE idFabricante = 1

-- 4° O preço médio dos produtos da Bunge
SELECT AVG(valorProduto) AS 'Preço méd prod. Bunge' FROM tbProduto
	WHERE idFabricante = 3

-- 5° A soma das quantidades de todos os produtos que são da Bunge
SELECT SUM(qtdProduto) AS 'Estoque prod. Bunge' FROM tbProduto
	WHERE idFabricante = 3

-- 6° A quantidade média dos produtos da P&G no estoque
SELECT AVG(qtdProduto) AS 'Estoque méd. prod. P&G' FROM tbProduto
	WHERE idFabricante = 2

-- 7° O preço médio dos produtos no estoque cuja quantidade seja inferior a 200
SELECT AVG(valorProduto) AS 'Preço méd. prod. menor que 200 unidades' FROM tbProduto
	WHERE qtdProduto < 200

-- 8° A quantidade média de todos os produtos no estoque que sejam fabricados pela Unilever
SELECT AVG(qtdProduto) AS 'Estoque méd. prod. Unilever' FROM tbProduto
	WHERE idFabricante = 1

-- 9° O valor do produto mais barato
SELECT MIN(valorProduto) AS 'Prod. mais barato' FROM tbProduto

-- 10° Quantos itens no estoque são da Unilever
SELECT COUNT(DISTINCT idProduto) AS 'Total itens Unilever' FROM tbProduto
	WHERE idFabricante = 1

-- ALUNO COM NÚMERO ÍMPAR

-- 11° A soma das vendas ocorridas entre fevereiro e março de 2014
SELECT SUM(valorTotalVenda) AS 'Total Vendas Fev/Mar 2014' FROM tbVenda
	WHERE MONTH(dtVenda) BETWEEN 2 AND 3

-- 12° A soma das quantidades do produto Amaciante no estoque
SELECT SUM(qtdProduto) AS 'Qtd. estoque amaciantes' FROM tbProduto
	WHERE descricaoProduto LIKE 'Amaciante%'

-- 13° O valor do produto mais caro
SELECT MAX(valorProduto) AS 'Prod. mais caro' FROM tbProduto

-- 14° O preço médio dos produtos da Unilever
SELECT AVG(valorProduto) AS 'Média preços prod. Unilever' FROM tbProduto
	WHERE idFabricante = 1

-- 15° O preço médio de todos os produtos no estoque que sejam amaciante de qualquer fabricante
SELECT AVG(valorProduto) AS 'Média preços Amaciantes' FROM tbProduto
	WHERE descricaoProduto LIKE 'Amaciante%'

-- 16° A média de itens por venda
SELECT AVG(qtdItensVenda) AS 'Média de Itens por Venda' FROM tbItensVenda

-- 17° Quantos itens no estoque não são da Unilever
SELECT COUNT(DISTINCT idProduto) AS 'Prod. não Unilever' FROM tbProduto
	WHERE idFabricante <> 1

-- 18° A soma das quantidades dos produtos que possuam mais de 800 unidades no estoque
SELECT SUM(qtdProduto) AS 'Total estoque prod. maior que 800 unidades' FROM tbProduto
	WHERE qtdProduto > 800

-- 19° O preço médio dos produtos que possuam mais de 1000 unidades no estoque e que sejam fabricados pela Unilever
SELECT AVG(valorProduto) AS 'Preço méd. prod. com mais de 1000 unidades Unilever' FROM tbProduto
	WHERE qtdProduto > 1000 AND idFabricante = 1

-- 20° A média das vendas ocorridas no ano de 2014
SELECT AVG(valorTotalVenda) AS 'Valor médio vendas 2014' FROM tbVenda
	WHERE YEAR(dtVenda) = 2014