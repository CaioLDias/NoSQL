CREATE TABLE Funcionario (
    ID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Endereço VARCHAR(255),
    Cargo VARCHAR(50),
    Jornada VARCHAR(20),
    Salário VARCHAR(20)
);

CREATE TABLE Email (
    ID INT PRIMARY KEY,
    Funcionario_ID INT,
    Email VARCHAR(100),
    FOREIGN KEY (Funcionario_ID) REFERENCES Funcionario(ID)
);

INSERT INTO Funcionario (ID, Nome, Endereço, Cargo, Jornada, Salário)
VALUES 
(1, 'João Grilo', 'Rua Suassuna, 30, João Pessoa, PB', 'Contador', '40 horas', 'R$ 3.000,00'),
(2, 'Ada Byron', 'Rua Lovelace, 67, London', 'Developer', '20 horas', 'R$ 15.000,00'),
(3, 'Gerundino', 'Rua Substantivo, 78, Bairro Predicado, Mesóclise-AC', 'Linguista', '44 horas', 'R$ 8.000,00'),
(4, 'Chicó', 'Rua Eurico, 50, Apt 28, Bloco C, João Pessoa, PB', 'Developer', '20 horas', 'R$ 15.000,00');

INSERT INTO Email (ID, Funcionario_ID, Email)
VALUES 
(1, 1, 'grilo@mail.com'),
(2, 1, 'joaog@mk.com'),
(3, 2, 'ada@mail.com'),
(4, 2, 'abyron@tech.com'),
(5, 3, 'gerundino@gmail.com');