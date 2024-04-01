-- Criação da tabela Marca
CREATE TABLE Marca (
    ID INT PRIMARY KEY,
    nome VARCHAR(100),
    site_oficial VARCHAR(200),
    telefone VARCHAR(20)
);

-- Inserção de dados na tabela Marca
INSERT INTO Marca (ID, nome, site_oficial, telefone) VALUES
(1, 'Adidas', 'www.adidas.com', '(123)456-7890'),
(2, 'Levi''s', 'www.levi.com', '(098)765-4321'),
(3, 'Rolex', 'www.rolex.com', '(111)222-3333');

-- Criação da tabela Produto
CREATE TABLE Produto (
    ID INT PRIMARY KEY,
    nome VARCHAR(100),
    preco_custo DECIMAL(10,2),
    preco_venda DECIMAL(10,2),
    data_validade DATE,
    marca_id INT,
    FOREIGN KEY (marca_id) REFERENCES Marca(ID)
);

-- Inserção de dados na tabela Produto
INSERT INTO Produto (ID, nome, preco_custo, preco_venda, data_validade, marca_id) VALUES
(1, 'Camiseta', 15.00, 25.00, '2024-12-31', 1),
(2, 'Calça Jeans', 30.00, 50.00, '2025-06-30', 2),
(3, 'Tênis', 40.00, 80.00, '2024-09-15', 1),
(4, 'Relógio', 50.00, 100.00, '2024-12-31', 3),
(5, 'Celular', 300.00, 500.00, '2025-03-15', 3),
(6, 'Perfume', 20.00, 40.00, '2024-10-31', 2),
(7, 'Óculos de Sol', 25.00, 45.00, '2024-12-31', 3),
(8, 'Mochila', 35.00, 60.00, '2025-06-30', 1);

select * from Marca
select * from Produto