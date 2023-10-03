-- Criar BD
CREATE DATABASE Produtos;

-- Usar
USE Produtos;

-- Criar Tabela

CREATE TABLE Produtos(
 ProdutoId int auto_increment primary key,
 NomeProduto varchar(255) not null,
 Descricao varchar (255) not null,
 Preco float (10.2) not null
);

CREATE TABLE Comentarios(
 ComentarioId int auto_increment primary key,
 ProdId int,
 Autor varchar(255) not null,
 TextoComentado text not null,
 DataComentario date,
 FOREIGN KEY (ProdId) REFERENCES Produtos(ProdutoId) 
);

-- Inserir Produto
INSERT INTO Produtos (NomeProduto, Descricao, Preco) VALUES
("Carro", "Carro barato, ano 2010 com apenas 100.000km rodado", 1009.10);

INSERT INTO Produtos (NomeProduto, Descricao, Preco) VALUES
("Transistor", "Transistor de apenas 5A", 15.10);

INSERT INTO Produtos (NomeProduto, Descricao, Preco) VALUES
("Uno", "Uno 2010", "Carro barato, ano 2010 com apenas 100.000km rodado", 19.10);

INSERT INTO Produtos (NomeProduto, Descricao, Preco) VALUES
("Pneu", "Pneum meia vida semi novo", 29.10);

INSERT INTO Produtos (NomeProduto, Descricao, Preco) VALUES
("Bicicleta", "Bicicleta barata, ano 2010 com apenas uso casual", 99.10);

-- Inserir Comentario

INSERT INTO Comentarios (ComentarioId, Autor, TextoComentado, DataComentario) VALUES
(1, "Jucelino", "quando um impressor desconhecido pegou uma bandeja de tipos", "1999-02-03");

INSERT INTO Comentarios (ComentarioId, Autor, TextoComentado, DataComentario) VALUES
(2, "Matheus", "quando um impressor desconhecido pegou uma bandeja de tipos", "1995-02-10");

INSERT INTO Comentarios (ComentarioId, Autor, TextoComentado, DataComentario) VALUES
(3, "Fernando", "quando um impressor desconhecido pegou uma bandeja de tipos", "2000-02-03");

INSERT INTO Comentarios (ComentarioId, Autor, TextoComentado, DataComentario) VALUES
(4, "Marcola", "quando um impressor desconhecido pegou uma bandeja de tipos", "2010-02-05");

INSERT INTO Comentarios (ComentarioId, Autor, TextoComentado, DataComentario) VALUES
(5, "Breno", "quando um impressor desconhecido pegou uma bandeja de tipos", "2010-02-10");

-- Selecionar Tabela

SELECT * FROM Comentarios;
