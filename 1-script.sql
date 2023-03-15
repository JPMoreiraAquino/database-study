CREATE  DATABASE bd_banco;

CREATE TABLE ContaBancaria (
    NomeBanco varchar(30) not null unique,
    EnderecoAgencia varchar(40) not null,
    NumeroConta char(7) not null primary key,
    SaldoConta decimal(10,2) not null,
    CPF char(14) not null,
    NomeCliente varchar(40) not null,
    EnderecoCliente varchar(40) not null,
    DataInicio date not null,
    Sexo char not null,
    TelefoneCliente char(9)
);

ALTER TABLE ContaBancaria ADD email varchar(255) null;

INSERT INTO ContaBancaria (NomeBanco, EnderecoAgencia, NumeroConta, SaldoConta, CPF, NomeCliente, EnderecoCliente, DataInicio, Sexo, TelefoneCliente, email)
VALUES ('Banco do Brasil', 'Rua das Flores, 123', '1234567', 10000.00, '123.456.789-10', 'João Silva', 'Av. dos Bandeirantes, 456', '2022-01-01', 'M', '123456789', 'joao@gamail.com,');

INSERT INTO ContaBancaria (NomeBanco, EnderecoAgencia, NumeroConta, SaldoConta, CPF, NomeCliente, EnderecoCliente, DataInicio, Sexo, TelefoneCliente, email)
VALUES ('Itaú Unibanco', 'Rua Itaí, 123', '7654321', 5000.00, '111.222.333-44', 'Ana Santos', 'Av. Brasil, 789', '2022-03-01', 'F', '111222333', 'ana@email.com');

INSERT INTO ContaBancaria (NomeBanco, EnderecoAgencia, NumeroConta, SaldoConta, CPF, NomeCliente, EnderecoCliente, DataInicio, Sexo, TelefoneCliente, email)
VALUES ('Banco do Nordeste', 'Av. Brasil, 123', '9876543', 1500.00, '555.666.777-88', 'Paulo A Lima', 'Rua da Praia, 456', '2023-03-02', 'M', '555666777', 'paulo@email.com');

INSERT INTO ContaBancaria (NomeBanco, EnderecoAgencia, NumeroConta, SaldoConta, CPF, NomeCliente, EnderecoCliente, DataInicio, Sexo, TelefoneCliente, email)
VALUES ('Nubank', 'Av. Brasil, 123', '86340-2', 1500.00, '555.666.777-88', 'kaio Lima', 'Rua da Praia, 456', '2023-03-02', 'M', '555666777', 'lima@email.com');




SELECT  * FROM  ContaBancaria;

SELECT cpf, EnderecoCliente,  NomeCliente  FROM  ContaBancaria WHERE NomeCliente = 'Paulo A Lima';

SELECT EnderecoAgencia, NumeroConta FROM  ContaBancaria WHERE NomeBanco  = 'Banco do Brasil';

SELECT NumeroConta, EnderecoAgencia, NomeCliente  from ContaBancaria;

SELECT * From ContaBancaria WHERE Sexo = 'M';

DELETE from ContaBancaria WHERE NumeroConta = '86340-2.';

UPDATE ContaBancaria SET EnderecoAgencia = '6342' WHERE EnderecoAgencia = '0562' ;






