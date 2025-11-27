-- 1. Criar banco de dados do e-commerce
CREATE DATABASE db_ecommerce;
USE db_ecommerce;

-- 2. Criar tabela de produtos com 5 atributos relevantes
CREATE TABLE tb_produto (
    id INT(10) NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    categoria VARCHAR(100),
    preco DECIMAL(7,2),
    estoque INT NOT NULL,
    data_cadastro DATE NOT NULL,
    PRIMARY KEY (id)
);

-- 3. Inserir mínimo 8 registros
INSERT INTO tb_produto (nome, categoria, preco, estoque, data_cadastro)
VALUES
    ('Notebook Gamer', 'Eletrônicos', 6500.00, 12, '2024-02-10'),
    ('Mouse Sem Fio', 'Acessórios', 120.00, 80, '2024-02-15'),
    ('Teclado Mecânico', 'Acessórios', 350.00, 50, '2024-03-01'),
    ('Smartphone X', 'Eletrônicos', 4200.00, 30, '2024-01-20'),
    ('Monitor 27"', 'Informática', 899.90, 25, '2024-02-18'),
    ('Cadeira Gamer', 'Mobília', 1299.00, 10, '2024-03-03'),
    ('Headset Pro', 'Acessórios', 480.00, 40, '2024-02-25'),
    ('Webcam HD', 'Acessórios', 220.00, 60, '2024-03-05');

-- 4. SELECT produtos com valor maior que 500
SELECT * FROM tb_produto
WHERE preco > 500.00;

-- 5. SELECT produtos com valor menor que 500
SELECT * FROM tb_produto
WHERE preco < 500.00;

-- 6. Atualizar um registro (exemplo: aumentar o preço do Headset Pro)
SET SQL_SAFE_UPDATES = 0;
UPDATE tb_produto
SET preco = preco + 100
WHERE nome = 'Headset Pro';

-- Exibir produtos ordenados por preço (menor para maior)
SELECT * FROM tb_produto
ORDER BY preco ASC;
