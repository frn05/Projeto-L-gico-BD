INSERT INTO Cliente VALUES (1,'PF'),(2,'PJ');

INSERT INTO ClientePF VALUES (1,'Carlos Silva','12345678900');
INSERT INTO ClientePJ VALUES (2,'Tech LTDA','12345678000199');

INSERT INTO Produto VALUES 
(1,'Notebook',3500),
(2,'Mouse',80),
(3,'Teclado',150);

INSERT INTO Fornecedor VALUES 
(1,'Dell','11111111000100'),
(2,'Logitech','22222222000100');

INSERT INTO Pedido VALUES 
(1,1,'Processando'),
(2,2,'Enviado');

INSERT INTO Produto_has_Pedido VALUES
(1,1,1),
(2,1,2),
(3,2,5);

INSERT INTO Entrega VALUES
(1,1,'Em Transporte','BR123'),
(2,2,'Entregue','BR456');
