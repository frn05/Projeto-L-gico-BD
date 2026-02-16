INSERT INTO Dim_Professor VALUES
(1,'Carlos Silva','Mestrado','Integral'),
(2,'Ana Souza','Doutorado','Parcial');

INSERT INTO Dim_Curso VALUES
(1,'Sistemas de Informação','Graduação'),
(2,'Engenharia de Software','Graduação');

INSERT INTO Dim_Departamento VALUES
(1,'Computação'),
(2,'Engenharia');

INSERT INTO Dim_Disciplina VALUES
(1,'Banco de Dados',60),
(2,'Algoritmos',80);

INSERT INTO Dim_Tempo VALUES
(1,'2026-02-01',2026,1,2),
(2,'2026-08-01',2026,2,8);

INSERT INTO Fato_Professor VALUES
(1,1,1,1,1,1,2),
(2,2,2,2,2,2,3);
