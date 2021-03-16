-- Crie um banco de dados para um e commerce, onde o sistema trabalhará com as
-- informações dos produtos deste ecommerce.
CREATE DATABASE db_ecommerce;

USE db_ecommerce;

-- Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos
-- relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
CREATE TABLE tb_produtos (
	id bigint(5) auto_increment,
    nome VARCHAR(255) NOT NULL,
    fabricante VARCHAR(255) NOT NULL,
    validade date,
    peso double(10,2) NOT NULL,
    preco double(10,2) NOT NULL,
    
    primary key (id)
);

-- Popule esta tabela com até 8 dados;
INSERT INTO tb_produtos (nome, fabricante, validade, peso, preco) VALUES ("Ovo", "Granja do Jao", "2077-10-10", 3.00, 12.99);
INSERT INTO tb_produtos (nome, fabricante, validade, peso, preco) VALUES ("Leite", "Sitio Tio Ze", "2077-2-5", 1.00, 5.85);
INSERT INTO tb_produtos (nome, fabricante, validade, peso, preco) VALUES ("Farinha", "Refinaria Fazendinha", "2077-1-25", 1.00, 3.99);
INSERT INTO tb_produtos (nome, fabricante, validade, peso, preco) VALUES ("Maca", "Sustenta Vida", "2077-12-10", 1.00, 5.45);
INSERT INTO tb_produtos (nome, fabricante, validade, peso, preco) VALUES ("Banana", "Sustenta Vida", "2077-3-5", 2.50, 2.99);
INSERT INTO tb_produtos (nome, fabricante, validade, peso, preco) VALUES ("Uva", "Sustenta Vida", "2077-11-11", 0.500, 6.99);
INSERT INTO tb_produtos (nome, fabricante, validade, peso, preco) VALUES ("Cerveja", "Barrigudinha", "2077-7-30", 3.00, 2.99);
INSERT INTO tb_produtos (nome, fabricante, validade, peso, preco) VALUES ("Rum", "Barrigudinha", "2077-8-4", 3.00, 26.90);

-- Faça um select que retorne os produtos com o valor maior do que 500.
SELECT * FROM tb_produtos WHERE preco > 500;

-- Faça um select que retorne os produtos com o valor menor do que 500.
SELECT * FROM tb_produtos WHERE preco < 500;

-- Ao término atualize um dado desta tabela através de uma query de atualização.
UPDATE tb_produtos SET nome = "Pera" WHERE id = 6;