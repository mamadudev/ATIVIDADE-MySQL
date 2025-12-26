CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    tipo VARCHAR(255)
);

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    preco DECIMAL(10,2),
    quantidade INT,
    fabricante VARCHAR(255),
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, tipo) VALUES
("Cosmético", "Beleza"),
("Medicamento", "Controle"),
("Suplemento", "Nutrição"),
("Higiene", "Pessoal"),
("Primeiros Socorros", "Urgência");

INSERT INTO tb_produtos (nome, preco, quantidade, fabricante, categoria_id) VALUES
("Creme Facial", 80.00, 30, "Nivea", 1),
("Cimegraf", 25.00, 50, "EMS", 2),
("Colágeno", 55.00, 45, "Max Titanium", 3),
("Shampoo", 18.00, 40, "Elseve", 4),
("Curativo", 12.00, 100, "3M", 5),
("Cápsula Energia", 65.00, 35, "Growth", 3),
("Clareador de Pele", 150.00, 20, "Loreal", 1),
("Cálcio Forte", 45.00, 60, "La Roche", 3);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT p.nome, p.preco, c.nome AS categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.id;

SELECT p.nome, c.nome AS categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.id
WHERE c.nome = "Cosmético";
