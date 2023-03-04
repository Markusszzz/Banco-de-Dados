USE bdEstoque

--PAR

--01 A soma das quantidades dos produtos em estoque que são do fabricante P&G
SELECT  SUM(quantidadeProduto) AS 'SOMA DOS PRODUTOS P&G' FROM tbProduto
WHERE idFabricante = 2

--02 A média de preços dos produtos que são da P&G
SELECT  SUM(valorProduto)/COUNT(valorProduto) AS 'MEDIA P&G' FROM tbProduto
WHERE idFabricante = 2

--03 A soma do preço dos produtos da Unilever
SELECT  SUM(valorProduto) AS 'SOMA UNILEVER' FROM tbProduto
WHERE idFabricante = 1

--04 O preço médio dos produtos da Bunge
SELECT  SUM(valorProduto)/COUNT(valorProduto) AS 'MEDIA BUNGE' FROM tbProduto
WHERE idFabricante = 3

--05 A soma das quantidades de todos os produtos que são da Bunge
SELECT  SUM(quantidadeProduto) AS 'SOMA DOS PRODUTOS BUNGE' FROM tbProduto
WHERE idFabricante = 3

--06 A quantidade média dos produtos da P&G no estoque
SELECT  SUM(quantidadeProduto)/COUNT(quantidadeProduto) AS 'MEDIA P&G QUANTIDADE' FROM tbProduto
WHERE idFabricante = 2

--07 O preço médio dos produtos no estoque cuja quantidade seja inferior a 200
SELECT  SUM(subTotalVendas)/COUNT(subTotalVendas) AS 'MEDIA PREÇO' FROM tbItensVendas
WHERE quantidadeItensVendas < 200

--08 A quantidade média de todos os produtos no estoque que sejam fabricados pela Unilever
SELECT  SUM(quantidadeProduto)/COUNT(quantidadeProduto) AS 'MEDIA UNILEVER QUANTIDADE' FROM tbProduto
WHERE idFabricante = 1

--09 O valor do produto mais barato
SELECT  MIN(valorProduto) AS 'MENOR PREÇO' FROM tbProduto

--10 Quantos itens no estoque são da unilever
SELECT  SUM(quantidadeProduto) AS 'SOMA DOS PRODUTOS UNILEVER' FROM tbProduto
WHERE idFabricante = 1