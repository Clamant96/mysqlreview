/*Crie um banco de dados para um serviço de uma loja de móveis e decoração, o nome do
banco deverá ter o seguinte: db_nome minha_casa_mais_bonita, onde o sistema trabalhará
com as informações dos produtos desta loja.*/

CREATE DATABASE db_nome_minha_casa_mais_bonita;

USE db_nome_minha_casa_mais_bonita;

/*Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço desta loja.*/

CREATE TABLE tb_categoria (
	id bigint(5) auto_increment,
    nomeCategoria VARCHAR(255) NOT NULL,
    qtdProdutos int(3) NOT NULL,
    
    primary key (id)
);

/*Crie uma tabela de tb_produto e utilize a habilidade de abstração e determine 5 atributos
relevantes dos tb_produto para se trabalhar com o serviço desta loja(não esqueça de criar
a foreign key de tb_categoria nesta tabela).*/

CREATE TABLE tb_produto (
	id bigint(5) auto_increment,
    nome VARCHAR(255) NOT NULL,
    preco double(10,2) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    imagem VARCHAR(255) NOT NULL,
    ativo boolean,
    categoria_id bigint(5),
    
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
);

/*Crie a tabela Usuario e utilize a habilidade de abstração e determine 5 atributos relevantes
dos tb_usuario para se trabalhar com o serviço desta loja.*/

CREATE TABLE tb_usuario (
	id bigint(5) auto_increment,
    nomeCompleto VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    senha VARCHAR(255) NOT NULL,
    
    primary key (id)
);

/*Popule atabela Categoria com até 5 dados.*/

INSERT INTO tb_categoria (nomeCategoria, qtdProdutos) VALUES ("Pisos", 2);
INSERT INTO tb_categoria (nomeCategoria, qtdProdutos) VALUES ("Tintas", 2);
INSERT INTO tb_categoria (nomeCategoria, qtdProdutos) VALUES ("Casa", 2);
INSERT INTO tb_categoria (nomeCategoria, qtdProdutos) VALUES ("Mesas", 2);
INSERT INTO tb_categoria (nomeCategoria, qtdProdutos) VALUES ("Cadeiras", 2);

/*Popule a tabela Produto com até 8 dados.*/

INSERT INTO tb_produto (nome, preco, descricao, imagem, ativo, categoria_id) VALUES ("Porcelanato Portobello Mare D'autunno brilhante retificado C:120cm x L:120cm cinza", 457.45, "O porcelanato Mare D'autunno da Portobello, é uma ótima opção de personalização para pisos e paredes, pois traz a reprodução do mármore de tom platinado.", "https://telhanorte.vteximg.com.br/arquivos/ids/340648-NaN-NaN/Porcelanato-Portobello-Mare-D-autunno-brilhante-retificado-C-120cm-x-L-120cm-cinza-1611739.jpg?v=636991385039530000", true, 1);
INSERT INTO tb_produto (nome, preco, descricao, imagem, ativo, categoria_id) VALUES ("Piso Para Box Em Fibra", 864.00, "Medida 0,98 x 0,98", "https://7a1ac051a931dd8a.cdn.gocache.net/pub/media/catalog/product/cache/a95cd6208f6f304d3ecd6458151997d3/p/i/piso_para_box_em_fibra_800_00_2.jpg", true, 1);
INSERT INTO tb_produto (nome, preco, descricao, imagem, ativo, categoria_id) VALUES ("Classica Premium 18L", 329.95, "Classica Premium 18L Suvinil", "https://belatintas.fbitsstatic.net/img/p/tinta-acrilica-premium-classica-gelo-18l-suvinil-80192/266869.jpg?w=420&h=420&v=no-change", true, 2);
INSERT INTO tb_produto (nome, preco, descricao, imagem, ativo, categoria_id) VALUES ("Tinta Coral Coralar Econômica acrílica fosca branco 18L", 155.99, "Tinta acrílica lavável, antimofo, econômica e com ótima resistência.", "https://telhanorte.vteximg.com.br/arquivos/ids/340275-NaN-NaN/Tinta-Coral-Coralar-Economica-acrilica-fosca-branco-18L-833.jpg?v=636979337471170000", true, 2);
INSERT INTO tb_produto (nome, preco, descricao, imagem, ativo, categoria_id) VALUES ("Panela Sauté Grand 24cm Polishop", 265.90, "É leve, resistente, não lasca, não deforma e está sempre pronta para a próxima receita porque é super fácil de limpar! Panela Sauté Grand 24cm.", "https://polishop.vtexassets.com/arquivos/ids/670479-800-auto?width=800&height=auto&aspect=true", true, 3);
INSERT INTO tb_produto (nome, preco, descricao, imagem, ativo, categoria_id) VALUES ("Escrivaninha 120cm Porto Espresso Móveis Natura/Preto", 189.90, "Agregando beleza e modernidade a sua casa, a escrivaninha Porto é o produto perfeito para diversos tipos de ambientes, para quem busca otimização de espaço sem abrir mão do design moderno.", "https://images.madeiramadeira.com.br/product/images/53536186-escrivaninha-porto-siena-moveis-7890315091601-1_zoom-1500x1500.jpg?width=600", true, 4);
INSERT INTO tb_produto (nome, preco, descricao, imagem, ativo, categoria_id) VALUES ("Cadeira Gamer XT Racer Reclinável Preto e Vermelho - Viking Series XTR-013", 1215.91, "A cadeira Gamer da XT Racer giratória é uma ótima opção pra quem procura conforto e qualidade. O modelo XTR-013 da linha Viking Series é reclinável, tem regulagem de altura e seu encosto tem como inclinação ajustável em até 150°.", "https://a-static.mlcdn.com.br/618x463/cadeira-gamer-xt-racer-reclinavel-preto-e-vermelho-viking-series-xtr-013/magazineluiza/225508800/99a23a3ee526a1477b00bbbca86cbfdb.jpg", true, 5);
INSERT INTO tb_produto (nome, preco, descricao, imagem, ativo, categoria_id) VALUES ("Cadeira Tecton Coffee Unique", 1755.00, "Desenvolvida pelos renomados designers Baldanzi & Novelli, a Tecton possui um design marcado pelas linhas retas, além de proporcionar ao usuário conforto e liberdade de movimentos.", "https://assets.betalabs.net/production/flexform/item-images/5739e9f4a479cd92627707d2b34b7928.png", true, 5);

/*Popule atabela Usuario com até 5 dados.*/

INSERT INTO tb_usuario (nomeCompleto, email, senha) VALUES ("Jose", "jose@teste.com", "123456");
INSERT INTO tb_usuario (nomeCompleto, email, senha) VALUES ("Eduardo", "eduardo@teste.com", "123456");
INSERT INTO tb_usuario (nomeCompleto, email, senha) VALUES ("Monica", "monica@teste.com", "123456");
INSERT INTO tb_usuario (nomeCompleto, email, senha) VALUES ("Geremias", "geremias@teste.com", "123456");
INSERT INTO tb_usuario (nomeCompleto, email, senha) VALUES ("Marvin", "marvin@teste.com", "123456");

/*Faça um select que retorne os Produtos com o valor maior do que 50 reais.*/

SELECT * FROM tb_produto WHERE preco > 50;

/*Faça um select trazendo os Produtos com valor entre 3 e 60 reais.*/

SELECT * FROM tb_produto WHERE preco BETWEEN 3 AND 60;

/*Faça um select utilizando LIKE buscando os Produtos com a letra B.*/

SELECT * FROM tb_produto WHERE nome LIKE "%b%";

/*Faça um select utilizando LIKE buscando os Usuários com a letra C.*/

SELECT * FROM tb_usuario WHERE nomeCompleto LIKE "%c%";

/*Faça um um select com Inner join entre tabela categoria e produto.*/

SELECT * FROM tb_categoria INNER JOIN tb_produto ON tb_categoria.id = tb_produto.categoria_id;

/*Faça um select que retorne a média de preços dos produtos;*/

SELECT AVG(preco) FROM tb_produto;

/*Faça um select que retorne a soma de preços dos produtos;*/

SELECT SUM(preco) FROM tb_produto;

/*Faça um select que quantidade de produtos cadastrados na tabela*/

SELECT COUNT(*) FROM tb_produto;

/*Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são cosméticos).*/

SELECT * FROM tb_categoria INNER JOIN tb_produto ON tb_categoria.id = tb_produto.categoria_id WHERE nomeCategoria = "Cadeiras";

