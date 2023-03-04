CREATE DATABASE bdEscola2
USE bdEscola2
 drop database bdEscola2

CREATE TABLE tbCurso(
   codCurso INT PRIMARY KEY IDENTITY (1,1)
   , nomeCurso varchar(40)
   , cargaHorariaCurso INT
   , valorCurso INT
)

CREATE TABLE tbTurma(
   codTurma INT PRIMARY KEY IDENTITY(1,1)
   , nomeTurma VARCHAR(40)
   , codCurso INT FOREIGN KEY REFERENCES tbCurso (codCurso)
   , horarioTurma TIME
)

CREATE TABLE tbAluno(
   codAluno INT PRIMARY KEY IDENTITY (1,1)
   , nomeAluno VARCHAR(50)
   , dataNascimento DATE
   , rgAluno VARCHAR(17)
   , naturalidadeAluno VARCHAR(40)
)

CREATE TABLE tbMatricula(
 codMatricula INT PRIMARY KEY IDENTITY (1,1)
 , dataMaticula DATE
 , codAluno INT FOREIGN kEY REFERENCES tbAluno(codAluno)
 , codTurma INT FOREIGN kEY REFERENCES tbTurma(codTurma)
)