CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    tipo VARCHAR(255) NOT NULL
);

CREATE TABLE tb_personagens (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    ataque INT NOT NULL,
    defesa INT NOT NULL,
    nivel INT NOT NULL,
    classe_id BIGINT,
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (nome, tipo) VALUES
("Arqueiro", "Distância"),
("Guerreiro", "Corpo a corpo"),
("Mago", "Místico"),
("Assassino", "Furtivo"),
("Clérigo", "Suporte");

INSERT INTO tb_personagens (nome, ataque, defesa, nivel, classe_id) VALUES
("Cassandra", 2500, 1200, 40, 1),
("Thorak", 1800, 2000, 38, 2),
("Merlin", 3000, 900, 50, 3),
("Cyril", 2300, 1500, 44, 1),
("Shadow", 2700, 1100, 47, 4),
("Luna", 1600, 1700, 33, 5),
("Cobalt", 2200, 1300, 42, 4),
("Aegis", 1900, 1900, 39, 2);

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

SELECT p.nome, p.ataque, p.defesa, c.nome AS classe
FROM tb_personagens p
JOIN tb_classes c ON p.classe_id = c.id;

SELECT p.nome, p.ataque, c.nome AS classe
FROM tb_personagens p
JOIN tb_classes c ON p.classe_id = c.id
WHERE c.nome = "Arqueiro";

-- Retorna todos os personagens e suas classes (quando existir)
SELECT p.*, c.*
FROM tb_personagens p
LEFT JOIN tb_classes c
ON p.classe_id = c.id;