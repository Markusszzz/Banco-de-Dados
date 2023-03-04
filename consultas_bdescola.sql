USE bdEscola2

--1.Listar o nome, rg e data de aniversário dos alunos nascidos em SP​
SELECT nomeAluno,rgAluno,dataNascimento FROM tbAluno
			WHERE naturalidadeAluno LIKE 'SP%'
--2.Listar o nome e o rg dos alunos com o nome começado com P​
SELECT nomeAluno,rgAluno FROM tbAluno
			WHERE nomeAluno LIKE 'P%'
--3.listar o nome dos cursos cuja carga horária seja superior a 2000 horas​
SELECT nomeCurso,cargaHorariaCurso FROM tbCurso
WHERE cargaHorariaCurso >2000

--4.Listar o nome e o rg de todos os alunos que possuem o sobrenome Silva​

SELECT nomeAluno,rgAluno FROM tbAluno
		WHERE nomeAluno LIKE '%Silva%'

--5.Listar o nome dos alunos e a data de nascimento que fazem aniversário em março​
		SELECT nomeAluno, dataNascimento FROM tbAluno
	WHERE DATEPART(MONTH,dataNascimento) = 3

--6.Listar o código dos alunos e a data de matrícula dos alunos matriculados em maio de qualquer ano​
   SELECT codAluno,dataMaticula FROM tbMatricula
   WHERE DATEPART(MONTH,dataMaticula) = 5

--7.Listar o código dos alunos matriculados no curso de inglês​
   SELECT codAluno FROM tbMatricula
			WHERE codTurma = 1

			 SELECT * FROM tbMatricula
--8.Listar o código dos alunos matriculados na turma 1AA
			SELECT codAluno FROM tbMatricula
			WHERE codTurma = 3
--9.Listar todos os dados de todos os alunos​
 SELECT * FROM tbAluno
 --10.Listar todos os dados de todas as turmas​
 SELECT * FROM tbTurma

