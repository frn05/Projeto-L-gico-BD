-- Recuperação simples
SELECT * FROM Cliente;

-- Filtro com WHERE
SELECT *
FROM Entrega
WHERE statusEntrega = 'Em Transporte';

-- Atributo derivado
SELECT p.idPedido,
SUM(pp.quantidade * pr.preco) AS valorTotal
FROM Pedido p
JOIN Produto_has_Pedido pp ON p.idPedido = pp.idPedido
JOIN Produto pr ON pr.idProduto = pp.idProduto
GROUP BY p.idPedido
ORDER BY valorTotal DESC;

-- Quantos pedidos por cliente?
SELECT idCliente, COUNT(*) AS totalPedidos
FROM Pedido
GROUP BY idCliente
ORDER BY totalPedidos DESC;

-- HAVING
SELECT p.idPedido,
SUM(pp.quantidade * pr.preco) AS valorTotal
FROM Pedido p
JOIN Produto_has_Pedido pp ON p.idPedido = pp.idPedido
JOIN Produto pr ON pr.idProduto = pp.idProduto
GROUP BY p.idPedido
HAVING valorTotal > 500;

-- Fornecedor x Produto
SELECT f.nomeFornecedor, pr.nomeProduto
FROM Produto pr
JOIN Produto_has_Fornecedor pf 
ON pr.idProduto = pf.idProduto
JOIN Fornecedor f 
ON f.idFornecedor = pf.idFornecedor;

-- Produtos em estoque
SELECT pr.nomeProduto, e.local, es.quantidade
FROM Em_Estoque es
JOIN Produto pr ON pr.idProduto = es.idProduto
JOIN Estoque e ON e.idEstoque = es.idEstoque
ORDER BY es.quantidade DESC;
