CREATE DATABASE bdEscolaIdiomas

DROP DATABASE bdEscolaIdiomas

USE bdEscolaIdiomas

CREATE TABLE tbAluno(
	idAluno INT PRIMARY KEY IDENTITY (1,1)
	,nomeAluno VARCHAR (35) NOT NULL
	,rgAluno VARCHAR (15) NOT NULL
	,enderecoAluno VARCHAR (50) NOT NULL
	,numEnderecoAluno VARCHAR (5) NOT NULL
	,compAluno VARCHAR (15) NOT NULL
	,bairroAluno VARCHAR (35) NOT NULL
	,cepAluno CHAR (8) NOT NULL
	,cidadeALuno VARCHAR (20) NOT NULL
)

CREATE TABLE tbPeriodo(
	idPeriodo INT PRIMARY KEY IDENTITY (1,1)
	,descPeriodo VARCHAR (100) NOT NULL
)

CREATE TABLE tbCurso(
	idCurso INT PRIMARY KEY IDENTITY (1,1)
	,nomeCurso VARCHAR (30) NOT NULL
)

CREATE TABLE tbDiaSemana(
	idDiaSemana INT PRIMARY KEY IDENTITY (1,1)
	,diaSemana CHAR (6) NOT NULL
)

CREATE TABLE tbNivel(
	idNivel INT PRIMARY KEY IDENTITY (1,1)
	,descNivel  CHAR (3) NOT NULL
)

CREATE TABLE tbTurma(
	idTurma INT PRIMARY KEY IDENTITY (1,1)
	,horarioEntrada TIME NOT NULL
	,idCurso INT FOREIGN KEY REFERENCES tbCurso(idCurso)
	,idPeriodo INT FOREIGN KEY REFERENCES tbPeriodo(idPeriodo)
	,idNivel INT FOREIGN KEY REFERENCES tbNivel (idNivel)
	,idDiaSemana INT FOREIGN KEY REFERENCES tbDiaSemana(idDiaSemana)
)

CREATE TABLE tbMatricula(
	idMatricula INT PRIMARY KEY IDENTITY (1,1)
	,dataMatricula   SMALLDATETIME NOT NULL
	,idAluno INT FOREIGN KEY REFERENCES tbAluno(idAluno)
	,idTurma INT FOREIGN KEY REFERENCES tbTurma(idTurma)
)

CREATE TABLE tbFoneAluno(
	idFoneAluno INT PRIMARY KEY IDENTITY (1,1)
	,foneAluno VARCHAR (15) NOT NULL
	,idAluno INT FOREIGN KEY REFERENCES tbAluno(idAluno)
)


