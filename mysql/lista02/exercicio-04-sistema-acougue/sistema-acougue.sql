/*Crie um banco de dados para um serviço de um açougue, o nome do banco deverá ter o
seguinte nome db_cidade_das_carnes, onde o sistema trabalhará com as informações dos
produtos desta empresa.*/

CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

/*Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço desse açougue.*/

CREATE TABLE tb_categoria (
	id bigint(5) auto_increment,
    descricao VARCHAR(255) NOT NULL,
    ativo boolean NOT NULL,
    
    primary key (id)
);

/*Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5
atributos relevantes dos tb_produto para se trabalhar com o serviço desse açougue(não
esqueça de criar a foreign key de tb_categoria nesta tabela).*/

CREATE TABLE tb_produto (
	id bigint(5) auto_increment,
    nome VARCHAR(255) NOT NULL,
    preco decimal NOT NULL,
    qtProduto int NOT NULL,
    categoria_id bigint,
    
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
);

/*Popule esta tabela Categoria com até 5 dados.*/

INSERT INTO tb_categoria (descricao, ativo) VALUES ("Bovino", true);
INSERT INTO tb_categoria (descricao, ativo) VALUES ("Suino", true);
INSERT INTO tb_categoria (descricao, ativo) VALUES ("Aves", true);
INSERT INTO tb_categoria (descricao, ativo) VALUES ("Embutidos", true);
INSERT INTO tb_categoria (descricao, ativo) VALUES ("Outros", true);
INSERT INTO tb_categoria (descricao, ativo) VALUES ("Pertence Feijoada", true);

SELECT * FROM tb_categoria;

/*Popule esta tabela Produto com até 8 dados.*/

INSERT INTO tb_produto (nome, preco, qtProduto, categoria_id) VALUES ("ASA", 40.00, 30, 3);
INSERT INTO tb_produto (nome, preco, qtProduto, categoria_id) VALUES ("Picanha", 20.00, 30, 1);
INSERT INTO tb_produto (nome, preco, qtProduto, categoria_id) VALUES ("Coxa de Frango", 20.00, 30, 3);
INSERT INTO tb_produto (nome, preco, qtProduto, categoria_id) VALUES ("Bacon", 30.00, 30, 2);
INSERT INTO tb_produto (nome, preco, qtProduto, categoria_id) VALUES ("Hamburguer", 60.00, 30, 4);
INSERT INTO tb_produto (nome, preco, qtProduto) VALUES ("Acendedor de Churrasqueira", 20.00, 30);

/*Faça um select que retorne os Produtos com o valor maior do que 50 reais.*/

SELECT * FROM tb_produto WHERE preco > 50;

/*Faça um select trazendo os Produtos com valor entre 3 e 60 reais.*/

SELECT * FROM tb_produto WHERE preco BETWEEN 3 AND 60;

/*Faça um select utilizando LIKE buscando os Produtos com a letra C.*/

SELECT * FROM tb_produto WHERE nome LIKE "%c%";

/*Faça um um select com Inner join entre tabela categoria e produto.*/

SELECT * FROM tb_categoria INNER JOIN tb_produto ON tb_categoria.id = tb_produto.categoria_id;

/*Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são cosméticos).*/

SELECT * FROM tb_categoria INNER JOIN tb_produto ON tb_categoria.id = tb_produto.categoria_id WHERE tb_categoria.descricao = "Aves";