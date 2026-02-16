CREATE TABLE Cliente (
    idCliente INT PRIMARY KEY,
    tipoCliente ENUM('PF','PJ') NOT NULL
);

CREATE TABLE ClientePF (
    idCliente INT PRIMARY KEY,
    nome VARCHAR(100),
    cpf CHAR(11) UNIQUE,
    FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente)
);

CREATE TABLE ClientePJ (
    idCliente INT PRIMARY KEY,
    razaoSocial VARCHAR(100),
    cnpj CHAR(14) UNIQUE,
    FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente)
);

CREATE TABLE Produto (
    idProduto INT PRIMARY KEY,
    nomeProduto VARCHAR(100),
    preco FLOAT
);

CREATE TABLE Fornecedor (
    idFornecedor INT PRIMARY KEY,
    nomeFornecedor VARCHAR(100),
    cnpj CHAR(14)
);

CREATE TABLE Estoque (
    idEstoque INT PRIMARY KEY,
    local VARCHAR(45)
);

CREATE TABLE Pedido (
    idPedido INT PRIMARY KEY,
    idCliente INT,
    status VARCHAR(45),
    FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente)
);

CREATE TABLE Pagamento (
    idPagamento INT PRIMARY KEY,
    idCliente INT,
    tipoPagamento VARCHAR(45),
    FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente)
);

CREATE TABLE Entrega (
    idEntrega INT PRIMARY KEY,
    idPedido INT,
    statusEntrega VARCHAR(45),
    codigoRastreio VARCHAR(45),
    FOREIGN KEY (idPedido) REFERENCES Pedido(idPedido)
);

CREATE TABLE Produto_has_Fornecedor (
    idProduto INT,
    idFornecedor INT,
    PRIMARY KEY (idProduto, idFornecedor),
    FOREIGN KEY (idProduto) REFERENCES Produto(idProduto),
    FOREIGN KEY (idFornecedor) REFERENCES Fornecedor(idFornecedor)
);

CREATE TABLE Produto_has_Pedido (
    idProduto INT,
    idPedido INT,
    quantidade INT,
    PRIMARY KEY (idProduto, idPedido),
    FOREIGN KEY (idProduto) REFERENCES Produto(idProduto),
    FOREIGN KEY (idPedido) REFERENCES Pedido(idPedido)
);

CREATE TABLE Em_Estoque (
    idProduto INT,
    idEstoque INT,
    quantidade INT,
    PRIMARY KEY (idProduto, idEstoque),
    FOREIGN KEY (idProduto) REFERENCES Produto(idProduto),
    FOREIGN KEY (idEstoque) REFERENCES Estoque(idEstoque)
);
