#Criar uma tabela de funcionários
create table departamentos (
id int auto_increment,
nome varchar(60),
primary key (id)
);

#Inserir informações em uma tabela
insert into departamentos 
values
(null, 'Financeiro'),
(null, 'vendas'),
(null,'desenvolvimento de produtos'),
(null, 'ti'),
(null,'juridico'),
(null, 'qualidade'),
(null, 'administração'),
(null, 'atendimento ao cliente'),
(null, 'recursos humanos'),
(null, 'marketing'),
(null, 'produção'),
(null, 'executivo'), 
(null, 'gerente financeiro'),
(null, 'gerente de marketing'),
(null, 'gerente de produção');

#Alterar uma tabela adicionando uma chave estrangeira em uma tabela já existente
alter table funcionarios
add column id_departamentos int,
add constraint fk_funcionarios_departamentos
foreign key (id_departamentos) references departamentos (id);

#Mudar o "id estrangeiro" da linha de uma tabela.
update funcionarios
set id_departamentos = 1
where id=1;

update funcionarios 
set id_departamentos = 2
where id = 2 or id = 3 or id = 4 or id = 5;

update funcionarios
set id_departamentos = 4
where id = 6 or id = 7 or id = 8 or id = 9;

update funcionarios
set id_departamentos = 5
where id =10 or id = 11 or id = 12 or id = 13;

update funcionarios 
set id_departamentos = 9
where id = 14 or id = 15 or id = 16 or id =17;

update funcionarios
set id_departamentos = 5
where id=44;

update funcionarios
set id_departamentos = 13
where id=413;

update funcionarios
set id_departamentos = 15
where id=642;

update funcionarios
set id_departamentos = 14
where id=462;

select * from funcionarios order by salario desc;