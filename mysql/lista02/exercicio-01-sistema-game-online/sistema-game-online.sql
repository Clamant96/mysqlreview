/*Crie um banco de dados para um serviço de um game Online , o nome do banco deverá ter
o seguinte nome db_generation_game_online, onde, o sistema trabalhará com as
informações dos personagens desse game.*/

CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

/*Crie uma tabela tb_classe utilizando a habilidade de abstração e determine 3 atributos
relevantes da classe para se trabalhar com o serviço desse game Online.*/

CREATE TABLE tb_classe (
	id bigint(5) auto_increment,
    tipo VARCHAR(255) NOT NULL,
    habilidade VARCHAR(255) NOT NULL,
    
    primary key (id)
);

/*Crie uma tabela tb_personagem e utilizando a habilidade de abstração e determine 5
atributos relevantes dos funcionários para se trabalhar com o serviço desse game Online
(não esqueça de criar a foreign key de tb_classe nesta tabela).*/

CREATE TABLE tb_personagem (
	id bigint(5) auto_increment,
    nome VARCHAR(255) NOT NULL,
    vida int(3) NOT NULL,
    xp int(4) NOT NULL,
    ataque int(4) NOT NULL,
    defesa int(4) NOT NULL,
    classe_id bigint(5),
    
    primary key (id),
    foreign key (classe_id) references tb_classe (id)
);

/*Popule esta tabela classe com até 5 dados.*/

INSERT INTO tb_classe (tipo, habilidade) VALUES ("Terrestre", "Silencio Mortal");
INSERT INTO tb_classe (tipo, habilidade) VALUES ("Aereo", "Invisibilidade");
INSERT INTO tb_classe (tipo, habilidade) VALUES ("Terrestre", "Saude Maxima");
INSERT INTO tb_classe (tipo, habilidade) VALUES ("Aereo", "Meteoro Flamejante");
INSERT INTO tb_classe (tipo, habilidade) VALUES ("Terrestre", "Velocidades 4x");

/*Popule esta tabela personagem com até 8 dados.*/

INSERT INTO tb_personagem (nome, vida, xp, ataque, defesa, classe_id) VALUES ("Ariel", 100, 1, 3500, 6000, 1);
INSERT INTO tb_personagem (nome, vida, xp, ataque, defesa, classe_id) VALUES ("Tyunn", 65, 20, 7600, 1500, 5);
INSERT INTO tb_personagem (nome, vida, xp, ataque, defesa, classe_id) VALUES ("Aun", 83, 11, 4300, 3200, 3);
INSERT INTO tb_personagem (nome, vida, xp, ataque, defesa, classe_id) VALUES ("Tyorgrirn", 100, 1, 3900, 5100, 2);
INSERT INTO tb_personagem (nome, vida, xp, ataque, defesa, classe_id) VALUES ("Vorrus", 35, 85, 8500, 1200, 4);
INSERT INTO tb_personagem (nome, vida, xp, ataque, defesa, classe_id) VALUES ("Crafralf", 42, 27, 2200, 8700, 3);
INSERT INTO tb_personagem (nome, vida, xp, ataque, defesa, classe_id) VALUES ("Raslerd", 99, 5, 4700, 4100, 1);
INSERT INTO tb_personagem (nome, vida, xp, ataque, defesa, classe_id) VALUES ("Thrunskulr", 77, 5000, 6200, 1700, 2);

/*Faça um select que retorne os personagens com o poder de ataque maior do que 2000.*/

SELECT * FROM tb_personagem WHERE ataque > 2000;

/*Faça um select trazendo os personagens com poder de defesa entre 1000 e 2000.*/

SELECT * FROM tb_personagem WHERE defesa BETWEEN 1000 AND 2000;

/*Faça um select utilizando LIKE buscando os personagens com a letra C.*/

SELECT * FROM tb_personagem WHERE nome LIKE "%c%";

/*Faça um um select com Inner join entre tabela classe e personagem.*/

SELECT * FROM tb_classe INNER JOIN tb_personagem ON tb_classe.id = tb_personagem.classe_id;

/*Faça um select onde traga todos os personagem de uma classe específica (exemplo todos
os personagens que são arqueiros).*/

SELECT * FROM tb_classe INNER JOIN tb_personagem ON tb_classe.id = tb_personagem.classe_id WHERE tb_classe.tipo = "Terrestre";