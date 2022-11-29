USE bdEscola2

INSERT INTO tbCurso(nomeCurso,cargaHorariaCurso,valorCurso)
VALUES('ingles',2000,356.00)
      ,('Alemão',3000,479.00)

	  SELECT * FROM tbCurso

	  INSERT INTO tbAluno(nomeAluno,dataNascimento,rgAluno,naturalidadeAluno)
	  VALUES('Pedro Santos','03/10/2000','82.292.122-0','Salvador')
			,('Marilene da Gloria','10/03/1999','45.233.123-0','SP')
			, ('Pietra rodrigues de oliveira','04/04/1998','23.533.211-9','Sao José Dos Campos')
			, ('Gabriel josé Silva','09/09/1995','34.211,111-X','PE')
			, ('Maricrelsa Sampaio Santos','10/10/2001','54.222.122-9','RJ')

			SELECT * FROM tbAluno

			INSERT INTO tbTurma(nomeTurma,codCurso,horarioTurma)
			VALUES('1IA',1,'12:00:00')
				,('1IB',1,'18:00:00')
				, ('1AA',2,'19:00:00')

				SELECT * FROM tbTurma

				INSERT INTO tbmatricula(dataMaticula,codAluno,CodTurma)
				VALUES('10/03/2015',1,1)
				     ,('05/03/2014',2,1)
					 ,('05/03/2012',3,2)
					 ,('03/03/2016',1,3)
					 ,('05/07/2015',4,2)
					 ,('07/05/2015',4,3)
					 ,('06/06/2015',5,1)
					 ,('05/05/2015',5,3)

					 SELECT * FROM tbMatricula