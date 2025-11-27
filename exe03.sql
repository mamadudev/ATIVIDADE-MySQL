-- 1. Criar banco de dados da escola
CREATE DATABASE db_escola;
USE db_escola;

-- 2. Criar tabela de estudantes com 5 atributos relevantes
CREATE TABLE tb_estudante (
    id INT(10) NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    idade INT NOT NULL,
    turma VARCHAR(10),
    nota DECIMAL(3,1),
    data_matricula DATE NOT NULL,
    PRIMARY KEY (id)
);

-- 3. Inserir no mínimo 8 registros
INSERT INTO tb_estudante (nome, idade, turma, nota, data_matricula)
VALUES
    ('Ana Souza', 16, '1A', 8.5, '2024-02-01'),
    ('Carlos Lima', 17, '2B', 6.7, '2023-10-10'),
    ('Maria Oliveira', 15, '1C', 9.2, '2024-02-15'),
    ('João Santos', 18, '3A', 5.8, '2023-08-20'),
    ('Paula Mendes', 16, '1A', 7.1, '2024-02-01'),
    ('Rafael Costa', 17, '2C', 4.9, '2023-09-12'),
    ('Beatriz Gomes', 15, '1B', 8.0, '2024-02-03'),
    ('Lucas Ferreira', 18, '3B', 6.4, '2023-08-22');

-- 4. SELECT estudantes com nota maior que 7.0
SELECT * FROM tb_estudante
WHERE nota > 7.0;

-- 5. SELECT estudantes com nota menor que 7.0
SELECT * FROM tb_estudante
WHERE nota < 7.0;

-- 6. Atualizar um registro (exemplo: aumentar a nota da Paula Mendes)
SET SQL_SAFE_UPDATES = 0;
UPDATE tb_estudante
SET nota = 8.0
WHERE nome = 'Paula Mendes';

-- Exibir estudantes ordenados por nota (maior para menor)
SELECT * FROM tb_estudante
ORDER BY nota DESC;
