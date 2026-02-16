CREATE TABLE Cliente (
    idCliente INT PRIMARY KEY,
    nome VARCHAR(100),
    telefone VARCHAR(20)
);

CREATE TABLE Veiculo (
    idVeiculo INT PRIMARY KEY,
    placa VARCHAR(10) UNIQUE,
    modelo VARCHAR(50),
    idCliente INT,
    FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente)
);

CREATE TABLE Mecanico (
    idMecanico INT PRIMARY KEY,
    nome VARCHAR(100),
    especialidade VARCHAR(50)
);

CREATE TABLE Servico (
    idServico INT PRIMARY KEY,
    descricao VARCHAR(100),
    precoBase FLOAT
);

CREATE TABLE OrdemServico (
    idOS INT PRIMARY KEY,
    dataAbertura DATE,
    status VARCHAR(45),
    idVeiculo INT,
    idMecanico INT,
    FOREIGN KEY (idVeiculo) REFERENCES Veiculo(idVeiculo),
    FOREIGN KEY (idMecanico) REFERENCES Mecanico(idMecanico)
);

CREATE TABLE OrdemServico_Servico (
    idOS INT,
    idServico INT,
    quantidade INT,
    precoUnit FLOAT,
    PRIMARY KEY (idOS, idServico),
    FOREIGN KEY (idOS) REFERENCES OrdemServico(idOS),
    FOREIGN KEY (idServico) REFERENCES Servico(idServico)
);

CREATE TABLE Pagamento (
    idPagamento INT PRIMARY KEY,
    idOS INT,
    formaPagamento VARCHAR(45),
    valor FLOAT,
    FOREIGN KEY (idOS) REFERENCES OrdemServico(idOS)
);
