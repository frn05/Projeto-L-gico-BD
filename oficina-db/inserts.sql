INSERT INTO Cliente VALUES
(1,'João Silva','99999-1111'),
(2,'Maria Souza','99999-2222');

INSERT INTO Veiculo VALUES
(1,'ABC1234','Gol',1),
(2,'XYZ9876','Civic',2);

INSERT INTO Mecanico VALUES
(1,'Carlos','Motor'),
(2,'Ana','Suspensão');

INSERT INTO Servico VALUES
(1,'Troca de óleo',150),
(2,'Alinhamento',100),
(3,'Revisão geral',500);

INSERT INTO OrdemServico VALUES
(1,'2026-02-10','Aberta',1,1),
(2,'2026-02-11','Finalizada',2,2);

INSERT INTO OrdemServico_Servico VALUES
(1,1,1,150),
(1,2,1,100),
(2,3,1,500);

INSERT INTO Pagamento VALUES
(1,2,'Cartão',500);
