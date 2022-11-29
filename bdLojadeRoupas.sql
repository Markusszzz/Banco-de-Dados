CREATE DATABASE bdLojaDeRoupas

USE bdLojaDeRoupas



CREATE TABLE tbFabricante(
 idFabricante INT PRIMARY KEY IDENTITY (1,1)
 ,nomeFabricante VARCHAR (45) NOT NULL
)

CREATE TABLE tbCliente(
	idCliente INT PRIMARY KEY IDENTITY (1,1)
	,nomeCliente VARCHAR (35) NOT NULL
	,idadeCliente VARCHAR (3) NOT NULL

CREATE TABLE tbVendedor(
    idFornecedor INT PRIMARY KEY IDENTITY (1,1)
	,nomeFornecedor VARCHAR (35) NOT NULL
	
)

CREATE TABLE tbVendas(
	idVendas INT PRIMARY KEY IDENTITY (1,1)
	,dataVenda SMALLDATETIME NOT NULL
	,valorTotalVenda SMALLMONEY NOT NULL

	,idCliente INT FOREIGN KEY REFERENCES tbCliente(idCliente)
)

CREATE TABLE tbProduto(
     idProduto INT PRIMARY KEY IDENTITY (1,1)
	 ,descricaoProduto VARCHAR (25) NOT NULL
	 ,valorProduto SMALLMONEY NOT NULL
	 ,quantidadeProduto INT  NOT NULL
	 ,idFabricante INT FOREIGN KEY REFERENCES tbFabricante(idfabricante)
	 ,idFornecedor INT FOREIGN KEY REFERENCES tbFornecedor(idFornecedor)
)

CREATE TABLE tbItensVendas(
	idItensVenda INT PRIMARY KEY IDENTITY (1,1)
	,idVendas INT FOREIGN KEY REFERENCES tbVendas(idVendas)
	,idProduto INT FOREIGN KEY REFERENCES tbProduto(idProduto)
	,quantidadeItensVendas INT NOT NULL
	,subTotalVendas SMALLMONEY NOT NULL
)

 



)