CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL
);

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    quantidade INT NOT NULL,
    marca VARCHAR(255),
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
("Hidráulica", "Materiais para instalação de água"),
("Elétrica", "Materiais de instalação elétrica"),
("Ferramentas", "Ferramentas manuais"),
("Acabamento", "Itens de acabamento e decoração"),
("Construção Pesada", "Materiais estruturais");

INSERT INTO tb_produtos (nome, preco, quantidade, marca, categoria_id) VALUES
("Cano PVC 50mm", 79.90, 50, "Tigre", 1),
("Joelho PVC 90°", 12.90, 120, "Tigre", 1),
("Fio Elétrico 2.5mm", 140.00, 80, "Lorenzetti", 2),
("Interruptor Simples", 18.50, 200, "Margirius", 2),
("Martelo de Aço", 65.00, 40, "Tramontina", 3),
("Chave de Fenda", 22.00, 100, "Tramontina", 3),
("Piso Porcelanato", 120.00, 300, "Portobello", 4),
("Cimento CP-II", 38.00, 500, "Votoran", 5);

SELECT * FROM tb_produtos WHERE preco > 100;

SELECT * FROM tb_produtos WHERE preco BETWEEN 70 AND 150;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT p.*, c.*
FROM tb_produtos p
INNER JOIN tb_categorias c
ON p.categoria_id = c.id;

SELECT p.*, c.*
FROM tb_produtos p
INNER JOIN tb_categorias c
ON p.categoria_id = c.id
WHERE c.nome = "Hidráulica";

-- Contagem de produtos por categoria
SELECT c.nome AS categoria, COUNT(p.id) AS total_produtos
FROM tb_categorias c
LEFT JOIN tb_produtos p ON p.categoria_id = c.id
GROUP BY c.nome;

-- Média de preço por categoria 
SELECT c.nome AS categoria, AVG(p.preco) AS preco_medio
FROM tb_categorias c
LEFT JOIN tb_produtos p ON p.categoria_id = c.id
GROUP BY c.nome;

-- Produto mais caro da loja 
SELECT *
FROM tb_produtos
ORDER BY preco DESC
LIMIT 1;

-- Produtos ordenados por nome em ordem alfabética 
SELECT * FROM tb_produtos ORDER BY nome ASC;
