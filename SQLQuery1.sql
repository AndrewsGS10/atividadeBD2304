Create database bd_videolocadora
use bd_videolocadora

Create table Cliente(
idCliente int Primary key identity (1,1),
Nome varchar (100),
Cidade varchar (100)
);

Create table Filme(
idFilme int Primary key identity (1,1),
Titulo varchar (100),
Genero varchar (100),
AnoLancamento int
);

Create table Locacao (
idLocacao int Primary key identity (1,1),
idCliente int,
idFilme int,
DataLocacao date,
valor decimal,
FOREIGN KEY (idcliente) REFERENCES Cliente(idCliente),
FOREIGN KEY (idfilme) REFERENCES Filme(idFilme)
);


insert into Cliente (Nome,Cidade) values
('Carlos Silva','São Paulo'),
('Ana Souza','Rio de Janeiro'),
('Marcos Lima','Belo Horizonte'),
('Fernanda Dias','São Paulo'),
('Andrews Santos','São Paulo');

Select * From Cliente

insert into Filme(Titulo, Genero, AnoLancamento) values
('Matrix', 'Ficção Científica', 1999),
('Titanic', 'Romance' , 1997),
('Vingadores', 'Ação', 2012),
('Coringa', 'Drama', 2019),
('A volta dos que nao foram', 'Terror', 1980),
('Lagoa Azul', 'Drama', 1980),
('A Trança do Rei Careca', 'Comedia', 2005);

Select * From Filme

insert into Locacao(idCliente, idFilme, DataLocacao, valor) values
(17, 1, '2023-05-01' , 5.00),
(17, 3, '2023-05-03', 6.00),
(18, 2, '2023-05-02', 4.50),
(18, 1, '2023-05-04', 5.00),
(19, 4, '2023-05-01', 6.50),
(20, 1, '2023-05-01', 5.00),
(20, 4, '2023-05-05', 6.50),
(21, 4, '2023-09-07', 10.50),
(21, 4, '2023-08-05', 7.50),
(21, 4, '2023-10-06', 9.50),
(18, 4, '2023-11-10', 5.50),
(17, 4, '2023-12-30', 14.50);

select * from Locacao


Select * From Filme

select * from Cliente WHERE Cidade = 'São Paulo';

SELECT c.Nome, f.Titulo
FROM Locacao 
JOIN Cliente c ON l.idCliente = c.idCliente
JOIN Filme f ON l.idFilme = f.idFilme;