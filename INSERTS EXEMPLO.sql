insert into Evento (nomeEvento, descricaoEvento, dataInicio, dataTermino) values('evento teste', 'somente para meu teste', getdate(), getdate())
go
insert into Evento (nomeEvento, descricaoEvento, dataInicio, dataTermino) values('evento teste2', 'somente para meu teste2', getdate()-5, getdate()-3)
go
insert into Ilha(descricao) values ('Ilha 1')
go
insert into Ilha(descricao) values ('Ilha 2')
go
insert into Beneficio (descricaoBeneficio, idIlha) values ('CESTA SECA', (SELECT TOP 1 idIlha FROM Ilha))
go
insert into EventoBeneficio values((SELECT TOP 1 idEvento FROM Evento), (SELECT TOP 1 idBeneficio FROM Beneficio))
go
insert into Terceiro(nome, identificacao) values ('Jose Ferreira', '0516465')
go
insert into Beneficiario (nomeCompleto, dataNascimento, edv, cpf, unidade, dataInclusao, idTerceiro)
values ('Func1', getdate()-10000, '123', '456456', 'Central', getdate(), (SELECT TOP 1 idTerceiro FROM Terceiro))
go
insert into BeneficiarioBeneficio values ((SELECT TOP 1 idBeneficiario FROM Beneficiario), (SELECT TOP 1 idTerceiro FROM Terceiro), 1, 2)
go