-- Quais veículos pertencem a cada cliente?
SELECT c.nome, v.modelo, v.placa
FROM Cliente c
JOIN Veiculo v ON c.idCliente = v.idCliente;

-- Ordens de serviço em aberto
SELECT *
FROM OrdemServico
WHERE status = 'Aberta';

-- Valor total por Ordem de Serviço (atributo derivado)
SELECT os.idOS,
SUM(oss.quantidade * oss.precoUnit) AS valorTotal
FROM OrdemServico os
JOIN OrdemServico_Servico oss ON os.idOS = oss.idOS
GROUP BY os.idOS
ORDER BY valorTotal DESC;

-- Quantas OS cada mecânico realizou?
SELECT m.nome, COUNT(*) AS totalOS
FROM OrdemServico os
JOIN Mecanico m ON os.idMecanico = m.idMecanico
GROUP BY m.nome
ORDER BY totalOS DESC;

-- OS com valor acima de R$200 (HAVING)
SELECT os.idOS,
SUM(oss.quantidade * oss.precoUnit) AS valorTotal
FROM OrdemServico os
JOIN OrdemServico_Servico oss ON os.idOS = oss.idOS
GROUP BY os.idOS
HAVING valorTotal > 200;

-- Relação Cliente, Veículo e Mecânico
SELECT c.nome AS Cliente, v.modelo AS Veiculo, m.nome AS Mecanico
FROM OrdemServico os
JOIN Veiculo v ON os.idVeiculo = v.idVeiculo
JOIN Cliente c ON v.idCliente = c.idCliente
JOIN Mecanico m ON os.idMecanico = m.idMecanico;
