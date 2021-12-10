insert into Evento (nomeEvento, descricaoEvento, dataInicio, dataTermino)
values
	('evento final do ano', 'Evento do final do ano', '2021-12-17', '2021-12-19')
go

insert into Ilha(descricao)
values
	('Ilha 1'),
	('Ilha 2'),
	('Ilha 3'),
	('Ilha 4'),
	('Ilha 5')
go

insert into Beneficio (descricaoBeneficio)
values
	('CESTA SECA'), ('CESTA FRIA'), ('PRESENTE BOSCH'),
	('Material Escolar KIT 1'), ('Material Escolar KIT 2'), ('Material Escolar KIT 3'),
	('Material Escolar KIT 4'), ('Material Escolar KIT 5'), ('Material Escolar KIT 6'),
	('Brinquedos 12M'), ('Brinquedos 10F'), ('Brinquedos 8M'), ('Brinquedos 5F'), ('Brinquedos 7F'),
	('Brinquedos 6F'), ('Brinquedos 2M'), ('Brinquedos 1F'), ('Brinquedos 3M'), ('Brinquedos 11F'),
	('Brinquedos 8F'), ('Brinquedos 10M'), ('Brinquedos 9F'), ('Brinquedos 0M'), ('Brinquedos 9M'),
	('Brinquedos 4F'), ('Brinquedos 0F'), ('Brinquedos 6M'), ('Brinquedos 12F')
go

insert into ilhaBeneficio (idIlha, idBeneficio)
values
	((SELECT idIlha FROM Ilha WHERE descricao = 'Ilha 1'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'CESTA SECA')),
	((SELECT idIlha FROM Ilha WHERE descricao = 'Ilha 2'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'CESTA FRIA')),
	((SELECT idIlha FROM Ilha WHERE descricao = 'Ilha 3'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'PRESENTE BOSCH'))
go


insert into ilhaBeneficio (idIlha, idBeneficio)
	SELECT I.idIlha, B.idBeneficio FROM
	Beneficio AS B, Ilha AS I
	WHERE 
	B.descricaoBeneficio LIKE 'Material Escolar%'
	AND
	I.descricao = 'Ilha 4'
go

insert into ilhaBeneficio (idIlha, idBeneficio)
	SELECT I.idIlha, B.idBeneficio FROM
	Beneficio AS B, Ilha AS I
	WHERE 
	B.descricaoBeneficio LIKE 'Brinquedos%'
	AND
	I.descricao = 'Ilha 5'
go

insert into EventoBeneficio (idEvento, idBeneficio)
	SELECT E.idEvento, B.idBeneficio FROM
	Evento AS E, Beneficio AS B
go

SET DATEFORMAT dmy
insert into Beneficiario (nomeCompleto, dataNascimento, cpf, edv, unidade, dataInclusao, responsavelInclusao)
values
	('ABADIAS SODRE DOS SANTOS', '25/10/1988', '073.559.839-89', 200, 'CtP/MFO21', getdate(), 'Import Process'),
	('ABEL DOS SANTOS SILVA', '26/6/1976', '019.748.979-66', 201, 'CtP/MFO12', getdate(), 'Import Process'),
	('ABENIL JOSE FERREIRA', '16/10/1978', '055.924.816-40', 202, 'PS/QMM61-CtP', getdate(), 'Import Process'),
	('ABNER BUENO DA LUZ', '20/7/1999', '109.532.429-27', 203, 'CtP/MFO14', getdate(), 'Import Process'),
	('ABNER MATHEUS DE QUEROZ DE JESUZ', '3/8/2001', '090.253.259-63', 204, 'SO/OPM72-BR', getdate(), 'Import Process'),
	('ACIR ALBERTO GUIMARAES JUNIOR', '24/12/1971', '827.416.709-00', 205, 'CtP/MFO14', getdate(), 'Import Process'),
	('ACZA VIDIGAL DE SOUZA PONTES', '7/4/1999', '112.614.799-04', 206, 'SO/OPM73-BR', getdate(), 'Import Process'),
	('ADAM HENRIQUE DA ROCHA BAUR', '22/5/1993', '082.557.789-69', 207, 'CtP/TEF32', getdate(), 'Import Process'),
	('ADELSON LOBO DE OLIVEIRA', '3/1/1981', '695.558.182-15', 208, 'CtP/MFO21', getdate(), 'Import Process'),
	('ADEMAR GRATON', '9/10/1962', '068.579.928-00', 209, 'APOSENTADO', getdate(), 'Import Process'),
	('ADEMAR SANTOS DE PAULA', '29/3/1980', '029.270.199-32', 210, 'CtP/MFO21', getdate(), 'Import Process'),
	('ADEMILSON BANRUK', '13/7/1977', '019.162.919-70', 211, 'CtP/MFO31', getdate(), 'Import Process'),
	('ADEMIR ANTONIO CAES', '4/1/1965', '552.921.279-49', 212, 'CtP/MFO11', getdate(), 'Import Process'),
	('ADEMIR ANTONIO DE OLIVEIRA', '2/1/1984', '049.873.359-99', 213, 'CtP/MFO15', getdate(), 'Import Process'),
	('ADEMIR APARECIDO DA SILVA', '18/2/1979', '278.294.368-51', 214, 'CtP/MFO14', getdate(), 'Import Process'),
	('ADEMIR CAETANO BENTO', '2/12/1969', '751.624.749-91', 215, 'CtP/HRL2', getdate(), 'Import Process'),
	('ADEMIR GERONIMO DA SILVA', '1/9/1960', '450.712.509-00', 216, 'APOSENTADO', getdate(), 'Import Process'),
	('ADEMIR INACIO WEILER', '10/3/1967', '524.803.649-68', 217, 'CtP/TEF31', getdate(), 'Import Process'),
	('ADEMIR PEREIRA RAMUSSI', '17/12/1965', '627.629.589-20', 218, 'APOSENTADO', getdate(), 'Import Process'),
	('ADILSON ALEXANDRE FERNANDES', '20/9/1968', '661.788.439-68', 219, 'PS/QMM61-CtP', getdate(), 'Import Process'),
	('ADILSON FERNANDO NEUMANN', '15/3/1974', '921.925.569-34', 220, 'CtP/MOE22', getdate(), 'Import Process'),
	('ADILSON JOSE DE RAMOS', '17/7/1970', '725.078.299-15', 221, 'CtP/MFO21', getdate(), 'Import Process'),
	('ADILSON LOURENCO', '5/5/1969', '742.976.869-53', 222, 'CtP/TEF32', getdate(), 'Import Process'),
	('ADILSON RODRIGUES COSTA', '19/1/1982', '040.035.839-57', 223, 'CtP/MFO21', getdate(), 'Import Process')
go

SET DATEFORMAT dmy
insert into Beneficiario (nomeCompleto, dataNascimento, cpf, edv, unidade, dataInclusao, responsavelInclusao)
values
	('ADNILSON DA SILVA GUIMARAES', '19/09/1978', '033.256.029-59', 224, 'CtP/MFE21', getdate(), 'Import Process'),
	('ADRIANA RODRIGUES DE ARAUJO', '02/04/1979', '006.444.509-75', 225, 'CtP/MFO31', getdate(), 'Import Process'),
	('ADRIANE YOSHIE HASHIMOTO FERREIRA', '15/03/1972', '922.017.769-20', 226, 'CtP/MFO31', getdate(), 'Import Process'),
	('ADRIANO APARECIDO DEMARQUI', '17/02/1982', '037.454.749-10', 227, 'CtP/MFO14', getdate(), 'Import Process'),
	('ADRIANO COURELLI', '30/04/1973', '872.646.849-20', 228, 'CtP/MFO31', getdate(), 'Import Process'),
	('ADRIANO DA SILVA FERREIRA', '28/06/1977', '024.020.979-65', 229, 'CtP/MFO31', getdate(), 'Import Process'),
	('ADRIANO DE LIMA', '05/07/1982', '039.601.689-85', 230, 'CtP/MFO31', getdate(), 'Import Process'),
	('ADRIANO KOWALESKI', '30/01/1979', '028.961.109-17', 231, 'CI/PFM2-LA', getdate(), 'Import Process'),
	('ADRIANO LOPES BECKER', '12/09/1980', '032.910.619-85', 232, 'CtP/MFO13', getdate(), 'Import Process'),
	('ADRIANO MELQUIADES DA SILVEIRA', '26/03/1981', '039.866.449-89', 233, 'CtP/MFO31', getdate(), 'Import Process'),
	('ADRIANO PEREIRA DA SILVA', '09/02/1988', '064.931.279-12', 234, 'CtP/MFO21', getdate(), 'Import Process'),
	('ADRIANO QUIRGO DE MORAIS', '21/08/1986', '052.555.789-08', 235, 'CtP/MFO21', getdate(), 'Import Process'),
	('ADRIELE GAWLETA FERREIRA', '25/06/1996', '096.079.829-32', 236, 'CtP/MFO21', getdate(), 'Import Process'),
	('ADRIANE MARILIZE SKRABA', '21/05/1983', '034.906.149-17', 237, 'CtP/MFO21', getdate(), 'Import Process'),
	('ADRIANO CARVALHO GERALDO', '04/03/1977', '948.393.609-87', 238, 'CtP/MFO31', getdate(), 'Import Process'),
	('ADRIANO RODRIGUES DA SILVA', '11/12/1989', '071.773.909-01', 239, 'CtP/MFO12', getdate(), 'Import Process'),
	('ADYR DE SOUZA JUNIOR', '20/01/1964', '498.024.029-15', 240, 'M/PQA2-CtP', getdate(), 'Import Process'),
	('AGENOR LINO DE ASSIS JUNIOR', '07/11/1961', '561.831.609-97', 241, 'PS-DP/ENP2-LA', getdate(), 'Import Process'),
	('AGUINALDO ROSA DO PRADO', '17/04/1981', '033.879.299-60', 242, 'CtP/MFO14', getdate(), 'Import Process'),
	('ALAN CLEITON NOVINSKI DE CARVALHO', '12/08/1991', '070.858.949-97', 243, 'CtP/CTG2', getdate(), 'Import Process')	
go

insert into EventoBeneficiario(idEvento, idBeneficiario)
	SELECT E.idEvento, B.idBeneficiario FROM
	Evento AS E, Beneficiario AS B
go

insert into BeneficiarioBeneficio (idBeneficiario, idBeneficio, quantidade)
	SELECT Ba.idBeneficiario, Bi.idBeneficio, 1 as quantidade FROM
	Beneficio AS Bi, Beneficiario AS Ba
	WHERE Bi.descricaoBeneficio in('CESTA SECA', 'CESTA FRIA', 'PRESENTE BOSCH')
go

insert into BeneficiarioBeneficio (quantidade, idBeneficiario, idBeneficio)
values
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '073.559.839-89'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Material Escolar KIT 6')),
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '019.748.979-66'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Material Escolar KIT 3')),
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '019.748.979-66'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Material Escolar KIT 5')),
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '055.924.816-40'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Material Escolar KIT 2')),
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '055.924.816-40'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Material Escolar KIT 4')),
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '695.558.182-15'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Material Escolar KIT 4')),
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '029.270.199-32'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Material Escolar KIT 4')),
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '019.162.919-70'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Material Escolar KIT 3')),
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '552.921.279-49'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Material Escolar KIT 4')),
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '049.873.359-99'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Material Escolar KIT 4')),
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '278.294.368-51'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Material Escolar KIT 4')),
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '751.624.749-91'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Material Escolar KIT 5')),
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '742.976.869-53'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Material Escolar KIT 5')),
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '033.256.029-59'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Material Escolar KIT 2')),
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '033.256.029-59'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Material Escolar KIT 4')),
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '006.444.509-75'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Material Escolar KIT 1')),
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '922.017.769-20'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Material Escolar KIT 4')),
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '037.454.749-10'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Material Escolar KIT 3')),
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '872.646.849-20'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Material Escolar KIT 3')),
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '024.020.979-65'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Material Escolar KIT 2')),
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '024.020.979-65'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Material Escolar KIT 5')),
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '039.601.689-85'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Material Escolar KIT 3')),
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '028.961.109-17'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Material Escolar KIT 4')),
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '032.910.619-85'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Material Escolar KIT 3')),
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '039.866.449-89'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Material Escolar KIT 3')),
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '064.931.279-12'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Material Escolar KIT 3')),
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '052.555.789-08'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Material Escolar KIT 2')),
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '096.079.829-32'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Material Escolar KIT 1'))
go

insert into BeneficiarioBeneficio (quantidade, idBeneficiario, idBeneficio)
values
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '073.559.839-89'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Brinquedos 12M')),
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '029.270.199-32'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Brinquedos 12M')),
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '561.831.609-97'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Brinquedos 12M')),
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '498.024.029-15'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Brinquedos 12F')),
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '872.646.849-20'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Brinquedos 11F')),
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '019.748.979-66'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Brinquedos 10F')),
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '019.162.919-70'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Brinquedos 10F')),
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '037.454.749-10'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Brinquedos 10F')),
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '037.454.749-10'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Brinquedos 2M')),
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '039.601.689-85'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Brinquedos 10M')),
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '064.931.279-12'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Brinquedos 10M')),
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '034.906.149-17'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Brinquedos 2M')),
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '070.858.949-97'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Brinquedos 2M')),
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '032.910.619-85'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Brinquedos 9F')),
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '033.879.299-60'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Brinquedos 9F')),
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '052.555.789-08'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Brinquedos 9M')),
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '039.866.449-89'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Brinquedos 9M')),
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '039.866.449-89'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Brinquedos 0M')),
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '096.079.829-32'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Brinquedos 0F')),
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '096.079.829-32'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Brinquedos 6M')),
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '006.444.509-75'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Brinquedos 6F')),
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '055.924.816-40'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Brinquedos 8M')),
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '024.020.979-65'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Brinquedos 8F')),
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '024.020.979-65'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Brinquedos 3M')),
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '948.393.609-87'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Brinquedos 3M')),
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '948.393.609-87'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Brinquedos 1F')),
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '040.035.839-57'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Brinquedos 5F')),
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '033.256.029-59'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Brinquedos 7F')),
	(1, (SELECT idBeneficiario FROM Beneficiario WHERE cpf = '071.773.909-01'), (SELECT idBeneficio FROM Beneficio WHERE descricaoBeneficio = 'Brinquedos 4F'))
go

insert into EventoBeneficiario(idEvento, idBeneficiario)
	select E.idEvento, B.idBeneficiario FROM
	Evento as E, Beneficiario as B
go

insert into Terceiro(nome, identificacao, dataIndicacao)
	select nomeCompleto, cpf, GETDATE() from Beneficiario
	where edv < 205
go

insert into Terceiro(nome, identificacao, dataIndicacao)
values
	('fulano', '123.456.789-10', GETDATE()),
	('ciclano', '109.876.543-21', GETDATE()),
	('beltrano', '321.654.987-01', GETDATE())
go