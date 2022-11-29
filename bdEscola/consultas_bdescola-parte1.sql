USE bdEscola

-- 1� Listar o nome, rg e data de anivers�rio dos alunos nascidos em SP
SELECT nomeAluno,rgAluno,dataNascimento FROM tbAluno
			WHERE naturalidadeAluno like 's%'

-- 2� Listar o nome e o rg dos alunos com o nome come�ado com P
SELECT nomeAluno,rgAluno FROM tbAluno
			WHERE nomeAluno like 'P%'

-- 3� Listar o nome dos cursos cuja carga hor�ria seja superior a 2000 horas
SELECT nomeCurso,cargaHorariaCurso FROM tbCurso
WHERE cargaHorariaCurso >2000

--4� Listar o nome e o rg de todos os alunos que possuem o sobrenome Silva
SELECT nomeAluno,rgAluno FROM tbAluno
		WHERE nomeAluno like '%Si%'

-- 5� Listar o nome dos alunos e a data de nascimento que fazem anivers�rio em mar�o
		SELECT nomeAluno, dataNascimento FROM tbAluno
	WHERE DATEPART(MONTH,dataNascimento) = 3

-- 6� Listar o c�digo dos alunos e a data de matr�cula dos alunos matriculados em maio de qualquer ano
   SELECT codAluno,dataMaticula FROM tbMatricula
   WHERE DATEPART(MONTH,dataMaticula) = 5

-- 7� Listar o c�digo dos alunos matriculados no curso de ingl�s
   SELECT codAluno FROM tbMatricula
			WHERE codTurma = 1

			 SELECT * FROM tbMatricula
--8� Listar o c�digo dos alunos matriculados na turma 1AA
			SELECT codAluno FROM tbMatricula
			WHERE codTurma = 3

-- 9� Listar todos os dados de todos os alunos
 SELECT nomeAluno,dataNascimento,rgAluno,naturalidadeAluno FROM tbAluno

-- 10� Listar todos os dados de todas as turmas
 SELECT nomeTurma,codCurso,horarioTurma FROM tbTurma
