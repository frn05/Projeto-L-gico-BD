-- Quantas disciplinas cada professor ministra por semestre?
SELECT p.nome, t.semestre,
SUM(f.qtdDisciplinas) AS totalDisciplinas
FROM Fato_Professor f
JOIN Dim_Professor p ON f.idProfessor = p.idProfessor
JOIN Dim_Tempo t ON f.idTempo = t.idTempo
GROUP BY p.nome, t.semestre
ORDER BY totalDisciplinas DESC;

-- Total de disciplinas por curso
SELECT c.nomeCurso,
SUM(f.qtdDisciplinas) AS total
FROM Fato_Professor f
JOIN Dim_Curso c ON f.idCurso = c.idCurso
GROUP BY c.nomeCurso;

-- Professores que ministraram mais de 2 disciplinas
SELECT p.nome,
SUM(f.qtdDisciplinas) AS total
FROM Fato_Professor f
JOIN Dim_Professor p ON f.idProfessor = p.idProfessor
GROUP BY p.nome
HAVING total > 2;

-- Relação Professor, Disciplina e Departamento
SELECT p.nome, d.nomeDisciplina, dep.nomeDepartamento
FROM Fato_Professor f
JOIN Dim_Professor p ON f.idProfessor = p.idProfessor
JOIN Dim_Disciplina d ON f.idDisciplina = d.idDisciplina
JOIN Dim_Departamento dep ON f.idDepartamento = dep.idDepartamento;
