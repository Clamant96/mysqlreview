-- Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema 
-- trabalhará com as informações dos funcionários desta empresa.
CREATE DATABASE bd_sistema_rh;

USE bd_sistema_rh;

-- Crie uma tabela de funcionários e utilizando a habilidade de abstração e determine 
-- 5 atributos relevantes dos funcionários para se trabalhar com o serviço deste RH.
CREATE TABLE tb_funcioanrio (
	id bigint(5) auto_increment,
    nome VARCHAR(255) NOT NULL,
    idade int(3) NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    salario double(10,2) NOT NULL,
    
    primary key (id)
);

-- Popule esta tabela com até 5 dados;
INSERT INTO tb_funcioanrio (nome, idade, cargo, salario) VALUES ("Kevin", 24, "Desenvolvedor Java Junior", 2100.00);
INSERT INTO tb_funcioanrio (nome, idade, cargo, salario) VALUES ("Erick", 19, "Analista de Sistemas", 4300.00);
INSERT INTO tb_funcioanrio (nome, idade, cargo, salario) VALUES ("Ingrid", 25, "Gerente de Projetos", 2500.00);
INSERT INTO tb_funcioanrio (nome, idade, cargo, salario) VALUES ("Edna", 54, "Contadora", 7800.00);
INSERT INTO tb_funcioanrio (nome, idade, cargo, salario) VALUES ("Celso", 59, "Engenheiro de Redes", 4600.00);

-- Faça um select que retorne os funcionários com o salário maior do que 2000.
SELECT * FROM tb_funcioanrio WHERE salario > 2000;

-- Faça um select que retorne os funcionários com o salário menor do que 2000.
SELECT * FROM tb_funcioanrio WHERE salario < 2000;

-- Ao término atualize um dado desta tabela através de uma query de atualização.
UPDATE tb_funcioanrio SET tb_funcioanrio.cargo = "Desenvolvedor Java Full Stack" WHERE id = 1;