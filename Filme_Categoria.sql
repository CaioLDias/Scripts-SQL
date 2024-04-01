-- Criação da tabela Categoria
CREATE TABLE Categoria (
    ID_Categoria INT PRIMARY KEY,
    Nome VARCHAR(100),
    Publico_Alvo VARCHAR(50)
);

-- Inserção de dados na tabela Categoria
INSERT INTO Categoria (ID_Categoria, Nome, Publico_Alvo) VALUES
(1, 'Ação', 'Adulto'),
(2, 'Comédia', 'Família'),
(3, 'Drama', 'Adulto');

-- Criação da tabela Filme
CREATE TABLE Filme (
    ID_Filme INT PRIMARY KEY,
    Titulo VARCHAR(100),
    Sinopse TEXT,
    Estudio VARCHAR(100),
    ID_Categoria INT,
    FOREIGN KEY (ID_Categoria) REFERENCES Categoria(ID_Categoria)
);

-- Inserção de dados na tabela Filme
INSERT INTO Filme (ID_Filme, Titulo, Sinopse, Estudio, ID_Categoria) VALUES
(1, 'Vingadores: Ultimato', 'Os Vingadores se reúnem para enfrentar Thanos e restaurar o universo.', 'Marvel Studios', 1),
(2, 'Toy Story', 'Um brinquedo cowboy lidera os outros brinquedos em uma missão para encontrar seu dono perdido.', 'Pixar Animation Studios', 2),
(3, 'Titanic', 'Um romance épico entre um jovem casal a bordo do transatlântico Titanic que naufraga.', 'Paramount Pictures', 3),
(4, 'Pantera Negra', 'T''Challa retorna a Wakanda para reivindicar o trono como rei depois da morte de seu pai.', 'Marvel Studios', 1),
(5, 'Shrek', 'Um ogro relutante se aventura em uma jornada para resgatar uma princesa.', 'DreamWorks Animation', 2),
(6, 'O Poderoso Chefão', 'Um drama sobre uma família mafiosa liderada por Don Vito Corleone.', 'Paramount Pictures', 3),
(7, 'Homem-Aranha: Longe de Casa', 'Peter Parker vai em uma viagem pela Europa, mas suas férias são interrompidas quando ele concorda em ajudar Nick Fury a desmascarar os mistérios dos Elementais.', 'Marvel Studios', 1),
(8, 'Procurando Nemo', 'Um peixe-palhaço pai embarca em uma jornada para encontrar seu filho perdido.', 'Pixar Animation Studios', 2);

select * from Filme
select * From Categoria
