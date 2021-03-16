/*Crie um banco de dados para um serviço de pizzaria de uma empresa, o nome do banco
deverá ter o seguinte nome db_pizzaria_legal, onde o sistema trabalhará com as
informações dos produtos desta empresa.*/

CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

/*Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço dessa pizzaria.*/

CREATE TABLE tb_categoria (
	id bigint(5) auto_increment,
    tipo VARCHAR(255) NOT NULL,
    disponivel boolean,
    
    primary key (id)
);

/*Crie uma tabela de tb_pizza e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos tb_produto para se trabalhar com o serviço dessa pizzaria(não esqueça de
criar a foreign key de tb_categoria nesta tabela).*/

CREATE TABLE tb_pizza (
	id bigint(5) auto_increment,
    nome VARCHAR(255) NOT NULL,
    valor double(10,2) NOT NULL,
    peso double(10,2) NOT NULL,
    categoria_id bigint(5),
    
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
);

/*Popule esta tabela Categoria com até 5 dados.*/

INSERT INTO tb_categoria (tipo, disponivel) VALUES ("Pizzas", true);
INSERT INTO tb_categoria (tipo, disponivel) VALUES ("Pizzas Doce", true);
INSERT INTO tb_categoria (tipo, disponivel) VALUES ("Sorvetes", true);
INSERT INTO tb_categoria (tipo, disponivel) VALUES ("Refrigerentes", true);
INSERT INTO tb_categoria (tipo, disponivel) VALUES ("Paes", true);

/*Popule esta tabela pizza com até 8 dados.*/

INSERT INTO tb_pizza (nome, valor, peso, categoria_id) VALUES ("Pizza Calabresa", 45.90, 0.500, 1);
INSERT INTO tb_pizza (nome, valor, peso, categoria_id) VALUES ("Pizza Cocholate", 32.99, 0.300, 2);
INSERT INTO tb_pizza (nome, valor, peso, categoria_id) VALUES ("Pizza Frango com Catupiri", 41.99, 0.600, 1);
INSERT INTO tb_pizza (nome, valor, peso, categoria_id) VALUES ("Pizza Portuguesa", 45.90, 0.600, 1);
INSERT INTO tb_pizza (nome, valor, peso, categoria_id) VALUES ("Sorvete Napolitano", 19.90, 2.50, 3);
INSERT INTO tb_pizza (nome, valor, peso, categoria_id) VALUES ("Pao de Banha", 11.90, 1.0, 5);
INSERT INTO tb_pizza (nome, valor, peso, categoria_id) VALUES ("Guarana Antarctica", 7.90, 2.5, 4);
INSERT INTO tb_pizza (nome, valor, peso, categoria_id) VALUES ("Coca-Cola", 9.90, 3.0, 4);


/*Faça um select que retorne os Produtos com o valor maior do que 45 reais.*/

SELECT * FROM tb_pizza WHERE valor > 45;

/*Faça um select trazendo os Produtos com valor entre 29 e 60 reais.*/

SELECT * FROM  tb_pizza WHERE valor BETWEEN 29 AND 60;

/*Faça um select utilizando LIKE buscando os Produtos com a letra C.*/

SELECT * FROM tb_pizza WHERE nome LIKE "%c%";

/*Faça um select com Inner join entre tabela categoria e pizza.*/

SELECT * FROM tb_categoria INNER JOIN tb_pizza ON tb_categoria.id = tb_pizza.categoria_id;

/*Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são pizza doce).*/

SELECT * FROM tb_categoria INNER JOIN tb_pizza ON tb_categoria.id = tb_pizza.categoria_id WHERE tipo = "Pizzas";