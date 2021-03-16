/*Crie um banco de dados para um serviço de farmácia de uma empresa, o nome do banco
deverá ter o seguinte nome db_farmacia_do_bem, onde o sistema trabalhará com as
informações dos produtos desta empresa.*/

CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

/*Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço desta farmacia.*/

CREATE TABLE tb_categoria (
	id bigint(5) auto_increment,
    tipo VARCHAR(255) NOT NULL,
    estoque boolean NOT NULL,
    
    primary key (id)
);

/*Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5
atributos relevantes dos tb_produto para se trabalhar com o serviço deste farmacia(não
esqueça de criar a foreign key de tb_categoria nesta tabela).*/

CREATE TABLE tb_produto (
	id bigint(5) auto_increment,
    nome VARCHAR(255) NOT NULL,
    preco double(10,2) NOT NULL,
    peso double(10,2) NOT NULL,
    categoria_id bigint,
    
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
);

/*Popule esta tabela Categoria com até 5 dados.*/

INSERT INTO tb_categoria (tipo, estoque) VALUES ("Medicamentos", true);
INSERT INTO tb_categoria (tipo, estoque) VALUES ("Cosmeticos", true);
INSERT INTO tb_categoria (tipo, estoque) VALUES ("Alimentos", true);
INSERT INTO tb_categoria (tipo, estoque) VALUES ("Saude", true);
INSERT INTO tb_categoria (tipo, estoque) VALUES ("Produtos Naturais", true);

/*Popule esta tabela Produto com até 8 dados.*/

INSERT INTO tb_produto (nome, preco, peso, categoria_id) VALUES ("Amoxil", 10.50, 0.200, 1);
INSERT INTO tb_produto (nome, preco, peso, categoria_id) VALUES ("Amitriptilina", 7.99, 0.075, 1);
INSERT INTO tb_produto (nome, preco, peso, categoria_id) VALUES ("Esmalte de unha", 4.69, 0.080, 2);
INSERT INTO tb_produto (nome, preco, peso, categoria_id) VALUES ("Acetona", 9.90, 0.090, 2);
INSERT INTO tb_produto (nome, preco, peso, categoria_id) VALUES ("Cheetos", 7.59, 0.140, 3);
INSERT INTO tb_produto (nome, preco, peso, categoria_id) VALUES ("Elma Chips", 6.59, 0.260, 3);
INSERT INTO tb_produto (nome, preco, peso, categoria_id) VALUES ("Mascara Descartavel", 1.59, 0.080, 4);
INSERT INTO tb_produto (nome, preco, peso, categoria_id) VALUES ("Cha de Camomila", 15.90, 2.50, 5);
INSERT INTO tb_produto (nome, preco, peso, categoria_id) VALUES ("Golden Matcha", 69.00, 0.100, 5);
INSERT INTO tb_produto (nome, preco, peso, categoria_id) VALUES ("Bucha Natural", 6.90, 0.095, 5);

/*Faça um select que retorne os Produtos com o valor maior do que 50 reais.*/

SELECT * FROM tb_produto WHERE preco > 50;

/*Faça um select trazendo os Produtos com valor entre 3 e 60 reais.*/

SELECT * FROM tb_produto WHERE preco BETWEEN 3 AND 60;

/*Faça um select utilizando LIKE buscando os Produtos com a letra B.*/

SELECT * FROM tb_produto WHERE nome LIKE "%b%";

/*Faça um um select com Inner join entre tabela categoria e produto.*/

SELECT * FROM tb_categoria INNER JOIN tb_produto ON tb_categoria.id = tb_produto.categoria_id;

/*Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são cosméticos).*/

SELECT * FROM tb_categoria INNER JOIN tb_produto ON tb_categoria.id = tb_produto.categoria_id WHERE tipo = "Cosmeticos";