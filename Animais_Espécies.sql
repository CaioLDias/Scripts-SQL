-- Criação da tabela Espécie
CREATE TABLE Espécie (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    descrição TEXT
);

-- Inserção de dados na tabela Espécie
INSERT INTO Espécie (id,nome, descrição) VALUES
(1,'Cão', 'Mamífero doméstico'),
(2,'Gato', 'Mamífero doméstico'),
(3,'Elefante', 'Mamífero selvagem');

-- Criação da tabela Animal
CREATE TABLE Animal (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    data_nasc DATE,
    peso DECIMAL(8,2),
    id_especie INT,
    FOREIGN KEY (id_especie) REFERENCES Espécie(id)
);

-- Inserção de dados na tabela Animal
INSERT INTO Animal (id,nome, data_nasc, peso, id_especie) VALUES
(1,'Rex', '2018-05-10', 25.00, 1),
(2,'Luna', '2019-02-14', 15.00, 2),
(3,'Toby', '2020-07-20', 30.00, 1),
(4,'Whiskers', '2017-09-30', 12.00, 2),
(5,'Dumbo', '2015-11-03', 3000.00, 3),
(6,'Bella', '2016-04-22', 2800.00, 3),
(7,'Max', '2021-10-05', 20.00, 1),
(8,'Simba', '2022-01-15', 18.00, 2);

select * from Animal
select * from Espécie