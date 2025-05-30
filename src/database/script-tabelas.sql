-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!

/*
comandos para mysql server
*/

create database mentalFlow;
use mentalFlow;

create table cadastro (
idCadastro int primary key auto_increment,
nome varchar(45),
email varchar(45),
senha varchar(45)
);

create table Quiz (
idQuiz int primary key auto_increment,
categoria varchar(45),
respostas int,
perguntas varchar(255),
idCadastro int,
constraint fk_quiz_cadastro foreign key (idCadastro)
references cadastro (idCadastro)
);


create table Dashboard (
idDashboard int primary key auto_increment,
totalRespostas int,
mediaPontuacao decimal(5,2 ),
quantasPessoas int,
idQuiz int,
constraint fk_dashboard_quiz foreign key (idQuiz)
	references Quiz (idQuiz)
);

insert into cadastro (nome, email, senha) values
('Gustavo', 'gustavo@gmail.com', 'gustavo1');


insert into Quiz (categoria, respostas, perguntas, idCadastro) values
('psicologia', 2, '1. Qual o percentual médio de melhora no desempenho de um atleta com acompanhamento psicológico?', 1),
('psicologia', 2, '2. Qual dessas habilidades é mais desenvolvida com o suporte de um psicólogo esportivo?', 1),
('psicologia', 0, '3. Atletas com acompanhamento psicológico têm menos chances de se lesionar.', 1), 
('psicologia', 2, '4. Qual dessas áreas a psicologia esportiva NÃO trabalha diretamente?', 1),
('psicologia', 2, '5. Quantos atletas de alto rendimento já utilizam acompanhamento psicológico?', 1),
('psicologia', 1, '6. O que é visualização na psicologia esportiva?', 1),
('psicologia', 2, '7. Qual é uma técnica comum usada por psicólogos esportivos para reduzir a ansiedade pré-competição?', 1),
('psicologia', 2, '8. O que se entende por foco atencional em atletas?', 1),
('psicologia', 1, '9. Qual o papel da psicologia esportiva na recuperação de lesões?', 1),
('psicologia', 2, '10. O que significa resiliência no contexto esportivo?', 1),
('psicologia', 1, '11. O que é a ''zona ideal de funcionamento'' para um atleta?', 1),
('psicologia', 1, '12. Qual é a relação entre autoconfiança e desempenho esportivo?', 1),
('psicologia', 2, '13. Um dos objetivos da psicologia esportiva é:', 1),
('psicologia', 2, '14. Como a motivação extrínseca se manifesta no esporte?', 1),
('psicologia', 2, '15. Qual destas estratégias pode ajudar na construção de rotinas pré-competição eficazes?', 1);

insert into Dashboard (totalRespostas, mediaPontuacao, quantasPessoas, idQuiz)values
('10', '70.50', '1', '1');



