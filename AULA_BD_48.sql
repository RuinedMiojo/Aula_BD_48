#Criação do Banco de Dados
create database empresa_xpto;

#Administração do Banco de Dados criado
use empresa_xpto;

#Criar uma tabela de funcionários
create table funcionarios (
  id int auto_increment,
  nome varchar(60),
  sobrenome varchar(60),
  salario decimal (10,2),
  primary key (ID)
  );
  
#Carregar um arquivo ".csv" para uma tabela SQL
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/uploads/funcionarios.csv'
into table funcionarios 
fields terminated by ','
lines terminated by '\n'
ignore 1 lines 
(nome, sobrenome, salario) set id =null;

#Selecionar todos as informações da tabela "funcionarios"
select * from funcionarios; 

#Selecionar as informações da tabela "funcionários" onde o salário é menor que 1238.11
select * from funcionarios where salario<1238.11;

#Selecionar os nomes e sobrenomes da tabela funcionários ordenado por salário, tendo limite de 5 informações apenas
select nome, sobrenome from funcionarios order by salario limit 5;

#Selecionar os nomes e sobrenomes da tabela funcionários ordenaro por salários de forma decrescente, tendo o limite de 5 informações
select nome, sobrenome from funcionarios order by salario desc limit 5;

#Selecionar na tabela "funcionários" as informações de um funcionário onde o seu nome é igual a "Gil" ou "Carlo"
#funcionarios com nome igual gil ou carlo
select *from funcionarios
where nome ="gil" or NOME = "carlo";

#Selecionar na tabela "funcionários" as informações de um funcionário onde o seu nome é igual a "Gil" ou "Carlo" e seu salário é maior que R$15.000
select * FROM FUNCIONARIOS 
WHERE (NOME= 'GIL' OR NOME = 'CARLO') AND salario > 15000;

#Selecionar na tabela "funcionários" as informações dos funcionários que possuem o sobrenome de "benn" ou "ramet" 
SELECT * FROM funcionarios
WHERE sobrenome = 'Benn' OR sobrenome = 'Ramet'; 

#Selecionar na tabela funcionários as informações dos funcionários que possuem o sobrenome igual a "Benn" ou "Ramet", e tem o salário menor que R$5.000
SELECT * FROM funcionarios
WHERE (sobrenome = 'Benn' OR sobrenome = 'Ramet') AND salario < 5000;

#Selecionar na tabela "funcionários", os funcionários com o salário entre R$.000 e R$10.000
SELECT * FROM funcionarios
WHERE salario BETWEEN 5000 AND 10000;

#Selecionar o nome e o sobrenome presentes na tabela "funcionários" onde os funcionários tem o salário entre R$2.000 e R$3.000
SELECT nome, sobrenome FROM funcionarios
WHERE salario BETWEEN 2000 AND 3000;

#Somar de todos os salários da empresa
SELECT SUM(SALARIO)AS SOMA_SALARIOS
FROM FUNCIONARIOS;

#Fazer a média dos salários da empresa
SELECT AVG (SALARIO) AS MEDIA_SALARIOS 
FROM FUNCIONARIOS;

#Contar o total de de todos os funcionários da empresa
SELECT COUNT(*) AS TOTAL_FUNCIONARIOS 
FROM FUNCIONARIOS;

#Selecionar o salário máximo na empresa 
SELECT MAX(SALARIO) AS MAIOR_SALARIO
FROM FUNCIONARIOS ;

#Selecionar o salário mínimo na empresa
SELECT MIN(SALARIO) AS MAIOR_salario
from funcionarios;

#Contar o total de funcionário que possuem o salário maior que R$ 15.000
select count(*) as total 
from funcionarios where salario>15000;

#Contar o total de funcionários que possuem o salário entre R$1.212 e R$5.000
SELECT COUNT(*) AS TotalFuncionarios
FROM Funcionarios WHERE Salario BETWEEN 1212 AND 5000;

#Contar o total de funcionários que possuem o salário entre R$ 5.001 e R$10.000
SELECT COUNT(*) AS TotalFuncionarios
FROM Funcionarios WHERE Salario BETWEEN 5001 AND 10000; 

#Contar o total de funcionários que possuem o salário entre R$10.001 e R$15.000
SELECT COUNT(*) AS TotalFuncionarios
FROM Funcionarios WHERE Salario BETWEEN 10001 AND 15000;