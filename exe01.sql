-- 1_ Crie um banco de dados para um serviço de RH de uma empresa
CREATE DATABASE db_RH_empresa;
use db_RH_empresa;

-- 2_ Crie uma tabela de colaboradores e determine 5 atributos relevantes
CREATE TABLE tb_colaborador(
	matricula INT(10) NOT NULL AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	sexo ENUM('M', 'F'),
	salario DECIMAL(7,2),
	data_admissao DATE NOT NULL,
    PRIMARY KEY (matricula)
);

-- 3_ Insira nesta tabela no mínimo 5 dados (registros)
INSERT INTO tb_colaborador (matricula, nome, sexo, salario, data_admissao)
VALUES
	(100, 'Paul', 'M', 6500.00, '2025-11-26'),
    (200, 'Henry Dubois', 'M', 2486.82, '2024-03-07'),
    (300, 'Maria Santos', 'F', 5200.50, '2023-11-01'),
    (400, 'Amy DIOP', 'F', 3100.00, '2022-06-15'),
    (500, 'Ana Pereira', 'F', 6800.90, '2023-10-12');
    
-- 4_ Um SELECT que retorne todes os colaboradores com o salário maior do que 2000.
SELECT * FROM tb_colaborador WHERE salario > 2000.00;

-- 5_ Um SELECT que retorne todes os colaboradores com o salário maior do que 2000.
SELECT * FROM tb_colaborador WHERE salario < 2000.00;

-- 6_ atualização do registro desta tabela (aumenta de 500.00 no salario dos colaboradores) 
UPDATE tb_colaborador SET salario = salario + 500.00 ;
SET SQL_SAFE_UPDATES = 0; 

-- Ordenar por salário (menor para maior)

SELECT * FROM tb_colaborador ORDER BY salario ASC;






