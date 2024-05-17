--selecionar todos os registros da tabela aluno
SELECT * FROM Aluno;

--selecionar alunos com o nome João Silva
SELECT * FROM Aluno WHERE nome = 'João Silva';

-- selecionar apenas nome e data de nascimenro do aluno
SELECT nome, data_nascimento FROM Aluno;

-- ordenar os alunos por nome em ordem alfabética
SELECT * FROM Aluno ORDER BY nome;

-- obter o nome do aluno e o nome da disciplina em que ele está matriculado
-- Junção de tabelas(JOIN Clause)
SELECT a.nome AS nome_aluno, d.nome AS nome_disciplina
FROM Aluno a
JOIN Matricula m ON a.id = m.aluno_id
JOIN Disciplina d ON m.disciplina_id = d.id;

--obter o nome de cada disciplina e a medias das notas dos alunos
-- função agregada
SELECT d.nome AS nome_disciplina, AVG(m.nota) AS media_notas
FROM Disciplina d
LEFT JOIN Matricula m ON d.id = m.disciplina_id
GROUP BY d.nome;

--classificar alunos com base em sua média de notas
-- filtragem com clásulas condicionais (CASE Statement)
SELECT 
    aluno_id,
    CASE
        WHEN nota >= 7.0 THEN 'Aprovado'
        ELSE 'Reprovado'
    END AS situacao
FROM Matricula;

--encontrar o professor com o maior salário
--consultas aninhadas(suubqueries)
SELECT nome, salario
FROM Professor
WHERE salario = (SELECT MAX(salario) FROM Professor);








