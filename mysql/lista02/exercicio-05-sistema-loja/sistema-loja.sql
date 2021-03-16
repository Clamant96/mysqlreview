/*Crie um banco de dados para um serviço de uma loja de produtos de construção, o nome
do banco deverá ter o seguinte nome db_construindo_a_nossa_vida, onde o sistema
trabalhará com as informações dos produtos desta empresa.*/

CREATE DATABASE db_construindo_a_nossa_vida;

USE db_construindo_a_nossa_vida;

/*Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço deste ecommerce.*/

CREATE TABLE tb_categoria (
	id bigint(5) auto_increment,
    categoria VARCHAR(255) NOT NULL,
    material VARCHAR(255) NOT NULL,
    
    primary key (id)
);

/*Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5
atributos relevantes dos tb_produto para se trabalhar com o serviço de uma loja de produtos
(não esqueça de criar a foreign key de tb_categoria nesta tabela).*/

CREATE TABLE tb_produto (
	id bigint(5) auto_increment,
    nome VARCHAR(255) NOT NULL,
    preco double(10,2) NOT NULL,
    qtdEstoque int NOT NULL,
    categoria_id bigint,
    
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
);

/*Popule esta tabela Categoria com até 5 dados.*/

INSERT INTO tb_categoria (categoria, material) VALUES ("Tintas", "Látex PVA");
INSERT INTO tb_categoria (categoria, material) VALUES ("Caideras", "Madeira de Relorestamento");
INSERT INTO tb_categoria (categoria, material) VALUES ("Mesas", "Madeira de Relorestamento");
INSERT INTO tb_categoria (categoria, material) VALUES ("Pisos", "Porcelanato");
INSERT INTO tb_categoria (categoria, material) VALUES ("Sofas", "Linho");

/*Popule esta tabela Produto com até 8 dados.*/

INSERT INTO tb_produto (nome, preco, qtdEstoque, categoria_id) VALUES ("Tinta Suvinil - Vermelhas", 35.00, 60, 1);
INSERT INTO tb_produto (nome, preco, qtdEstoque, categoria_id) VALUES ("Tinta Coral - Roxa", 32.00, 60, 1);
INSERT INTO tb_produto (nome, preco, qtdEstoque, categoria_id) VALUES ("Kit 4 Cadeiras Retrateis", 119.90, 20, 2);
INSERT INTO tb_produto (nome, preco, qtdEstoque, categoria_id) VALUES ("Mesa Escritorio", 249.90, 20, 3);
INSERT INTO tb_produto (nome, preco, qtdEstoque, categoria_id) VALUES ("Piso Laminado Madeira", 19.00, 2000, 4);
INSERT INTO tb_produto (nome, preco, qtdEstoque, categoria_id) VALUES ("Sofá Reto New Port", 2200.00, 10, 5);
INSERT INTO tb_produto (nome, preco, qtdEstoque, categoria_id) VALUES ("Tinta Suvinal - Lilas", 35.00, 60, 1);
INSERT INTO tb_produto (nome, preco, qtdEstoque, categoria_id) VALUES ("Piso Laminado Pedra Polida", 25.00, 1000, 4);

/*Faça um select que retorne os Produtos com o valor maior do que 50 reais.*/

SELECT * FROM tb_produto WHERE preco > 50;

/*Faça um select trazendo os Produtos com valor entre 3 e 60 reais.*/

SELECT * FROM tb_produto WHERE preco BETWEEN 3 AND 60;

/*Faça um select utilizando LIKE buscando os Produtos com a letra C.*/

SELECT * FROM tb_produto WHERE nome LIKE "%c%";

/*Faça um um select com Inner join entre tabela categoria e produto.*/

SELECT * FROM tb_categoria INNER JOIN tb_produto ON tb_categoria.id = tb_produto.categoria_id;

/*Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são da categoria hidráulica).*/

SELECT * FROM tb_categoria INNER JOIN tb_produto ON tb_categoria.id = tb_produto.categoria_id WHERE tb_categoria.categoria = "Tintas";