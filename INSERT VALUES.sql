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
	('ABEL DOS SANTOS SILVA', '26/6/1976', '073.559.839-89', 201, 'CtP/MFO12', getdate(), 'Import Process'),
	('ABENIL JOSE FERREIRA', '16/10/1978', '073.559.839-89', 202, 'PS/QMM61-CtP', getdate(), 'Import Process'),
	('ABNER BUENO DA LUZ', '20/7/1999', '073.559.839-89', 203, 'CtP/MFO14', getdate(), 'Import Process'),
	('ABNER MATHEUS DE QUEROZ DE JESUZ', '3/8/2001', '073.559.839-89', 204, 'SO/OPM72-BR', getdate(), 'Import Process'),
	('ACIR ALBERTO GUIMARAES JUNIOR', '24/12/1971', '073.559.839-89', 205, 'CtP/MFO14', getdate(), 'Import Process'),
	('ACZA VIDIGAL DE SOUZA PONTES', '7/4/1999', '073.559.839-89', 206, 'SO/OPM73-BR', getdate(), 'Import Process'),
	('ADAM HENRIQUE DA ROCHA BAUR', '22/5/1993', '073.559.839-89', 207, 'CtP/TEF32', getdate(), 'Import Process'),
	('ADELSON LOBO DE OLIVEIRA', '3/1/1981', '073.559.839-89', 208, 'CtP/MFO21', getdate(), 'Import Process'),
	('ADEMAR GRATON', '9/10/1962', '073.559.839-89', 209, 'APOSENTADO', getdate(), 'Import Process'),
	('ADEMAR SANTOS DE PAULA', '29/3/1980', '073.559.839-89', 210, 'CtP/MFO21', getdate(), 'Import Process'),
	('ADEMILSON BANRUK', '13/7/1977', '073.559.839-89', 211, 'CtP/MFO31', getdate(), 'Import Process'),
	('ADEMIR ANTONIO CAES', '4/1/1965', '073.559.839-89', 212, 'CtP/MFO11', getdate(), 'Import Process'),
	('ADEMIR ANTONIO DE OLIVEIRA', '2/1/1984', '073.559.839-89', 213, 'CtP/MFO15', getdate(), 'Import Process'),
	('ADEMIR APARECIDO DA SILVA', '18/2/1979', '073.559.839-89', 214, 'CtP/MFO14', getdate(), 'Import Process'),
	('ADEMIR CAETANO BENTO', '2/12/1969', '073.559.839-89', 215, 'CtP/HRL2', getdate(), 'Import Process'),
	('ADEMIR GERONIMO DA SILVA', '1/9/1960', '073.559.839-89', 216, 'APOSENTADO', getdate(), 'Import Process'),
	('ADEMIR INACIO WEILER', '10/3/1967', '073.559.839-89', 217, 'CtP/TEF31', getdate(), 'Import Process'),
	('ADEMIR PEREIRA RAMUSSI', '17/12/1965', '073.559.839-89', 218, 'APOSENTADO', getdate(), 'Import Process'),
	('ADILSON ALEXANDRE FERNANDES', '20/9/1968', '073.559.839-89', 219, 'PS/QMM61-CtP', getdate(), 'Import Process'),
	('ADILSON FERNANDO NEUMANN', '15/3/1974', '073.559.839-89', 220, 'CtP/MOE22', getdate(), 'Import Process'),
	('ADILSON JOSE DE RAMOS', '17/7/1970', '073.559.839-89', 221, 'CtP/MFO21', getdate(), 'Import Process'),
	('ADILSON LOURENCO', '5/5/1969', '073.559.839-89', 222, 'CtP/TEF32', getdate(), 'Import Process'),
	('ADILSON RODRIGUES COSTA', '19/1/1982', '073.559.839-89', 223, 'CtP/MFO21', getdate(), 'Import Process')
go