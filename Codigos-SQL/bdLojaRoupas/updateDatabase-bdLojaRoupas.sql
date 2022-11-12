USE bdLojaRoupas

UPDATE tbFabricante
SET nomeFabricante = 'Turma da Malha'
WHERE codFabricante = 3

UPDATE tbVenda
SET totalVenda = totalVenda - (totalVenda * 0.1)
WHERE codCliente = 1

UPDATE tbProduto
SET precoProduto = precoProduto + (precoProduto * 0.2)
WHERE codFabricante = 2

UPDATE tbProduto
SET estoqueProduto = estoqueProduto - 10
WHERE codProduto = 3

DELETE FROM tbItensVenda
WHERE codVenda = 2 and codItensVenda = 4

DELETE FROM tbItensVenda
WHERE codVenda = 3

DELETE FROM tbFabricante
WHERE codFabricante = 1

-- O erro ocorre pois o código do fabricante está conectado a outras tabelas como chave estrangeira, por isso a regra de integridade do Banco de Dados é aplicada, impedindo que um dado importante como esse seja deletado.

SELECT * FROM tbFabricante
SELECT * FROM tbCliente
SELECT * FROM tbFuncionario
SELECT * FROM tbItensVenda
SELECT * FROM tbProduto
SELECT * FROM tbVenda
SELECT * FROM tbVendedor