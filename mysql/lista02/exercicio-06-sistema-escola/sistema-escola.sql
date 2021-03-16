/*Crie um banco de dados para um serviço de um site de cursos onlines, o nome do banco
deverá ter o seguinte nome db_cursoDaMinhaVida, onde o sistema trabalhará com as
informações dos produtos desta empresa.*/

CREATE DATABASE db_cursoDaMinhaVida;

USE db_cursoDaMinhaVida;

/*Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço deste site de cursos onlines.*/

CREATE TABLE tb_categoria (
	id bigint(5) auto_increment,
    categoria VARCHAR(255) NOT NULL,
    qtdCursosCategoria int(3) NOT NULL,
    
    primary key (id)
);

/*Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5
atributos relevantes dos tb_produto para se trabalhar com o serviço de um site de cursos
onlines(não esqueça de criar a foreign key de tb_categoria nesta tabela).*/

CREATE TABLE tb_curso (
	id bigint(5) auto_increment,
    nomeCurso VARCHAR(255) NOT NULL,
    turma VARCHAR(255) NOT NULL,
    preco double(10,2) NOT NULL,
    categoria_id bigint,
    
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
);

/*Popule esta tabela Categoria com até 5 dados.*/

INSERT INTO tb_categoria (categoria, qtdCursosCategoria) VALUES ("Ciências Humanas", 2);
INSERT INTO tb_categoria (categoria, qtdCursosCategoria) VALUES ("Biblioteconomia", 2);
INSERT INTO tb_categoria (categoria, qtdCursosCategoria) VALUES ("Ciências Sociais", 2);
INSERT INTO tb_categoria (categoria, qtdCursosCategoria) VALUES ("Tecnologia", 7);
INSERT INTO tb_categoria (categoria, qtdCursosCategoria) VALUES ("Governo e Política", 2);

/*Popule esta tabela Produto com até 8 dados.*/

INSERT INTO tb_curso (nomeCurso, turma, preco, categoria_id) VALUES ("ADS", "04318A16", 220.90, 4);
INSERT INTO tb_curso (nomeCurso, turma, preco, categoria_id) VALUES ("Filosofia", "04718B14", 312.99, 1);
INSERT INTO tb_curso (nomeCurso, turma, preco, categoria_id) VALUES ("Economia", "03317C06", 115.00, 2);
INSERT INTO tb_curso (nomeCurso, turma, preco, categoria_id) VALUES ("Geografia", "04318A16", 600.09, 1);
INSERT INTO tb_curso (nomeCurso, turma, preco, categoria_id) VALUES ("Ciencia da Computacao", "50318Z04", 1800.90, 4);
INSERT INTO tb_curso (nomeCurso, turma, preco, categoria_id) VALUES ("Direito", "04318116", 117.99, 5);
INSERT INTO tb_curso (nomeCurso, turma, preco, categoria_id) VALUES ("Estatistica", "04718F16", 480.05, 2);
INSERT INTO tb_curso (nomeCurso, turma, preco, categoria_id) VALUES ("Educacao Fisica", "02318D08", 712.95, 3);

/*Faça um select que retorne os Produtos com o valor maior do que 50 reais.*/

SELECT * FROM tb_curso WHERE preco > 50;

/*Faça um select trazendo os Produtos com valor entre 3 e 60 reais.*/

SELECT * FROM tb_curso WHERE preco BETWEEN 300 AND 600;

/*Faça um select utilizando LIKE buscando os Produtos com a letra G.*/

SELECT * FROM tb_curso WHERE nomeCurso LIKE "%g%";

/*Faça um um select com Inner join entre tabela categoria e produto.*/

SELECT * FROM tb_categoria INNER JOIN tb_curso ON tb_categoria.id = tb_curso.categoria_id;

/*Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são da categoria Java).*/

SELECT * FROM tb_categoria INNER JOIN tb_curso ON tb_categoria.id = tb_curso.categoria_id WHERE tb_categoria.categoria = "Tecnologia";