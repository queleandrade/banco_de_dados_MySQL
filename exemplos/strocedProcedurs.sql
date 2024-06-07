 --- Atualizar a nota de um aluno em uma disciplina específica
 DELIMITER //

CREATE PROCEDURE AtualizarNota(
    IN aluno_id INT,
    IN disciplina_id INT,
    IN nova_nota DECIMAL(5, 2)
)
BEGIN
    UPDATE Matricula
    SET nota = nova_nota
    WHERE aluno_id = aluno_id AND disciplina_id = disciplina_id;
END //

DELIMITER ;

--- retorna todos os alunos matriculados em uma turma específica
DELIMITER //

CREATE PROCEDURE ObterAlunosPorTurma(
    IN turma_id INT
)
BEGIN
    SELECT Aluno.id, Aluno.nome, Aluno.data_nascimento
    FROM Aluno
    JOIN Matricula ON Aluno.id = Matricula.aluno_id
    JOIN Disciplina ON Matricula.disciplina_id = Disciplina.id
    JOIN Turma ON Disciplina.id = Turma.id
    WHERE Turma.id = turma_id;
END //

DELIMITER ;


--- inserir um novo professor no banco de dados
DELIMITER //

CREATE PROCEDURE InserirProfessor(
    IN nome_professor VARCHAR(100),
    IN especialidade_professor VARCHAR(100),
    IN salario_professor DECIMAL(10, 2)
)
BEGIN
    INSERT INTO Professor (nome, especialidade, salario)
    VALUES (nome_professor, especialidade_professor, salario_professor);
END //

DELIMITER ;


--- remover um aluno do banco de dados, incluindo suas matrículas
DELIMITER //

CREATE PROCEDURE RemoverAluno(
    IN aluno_id INT
)
BEGIN
    DELETE FROM Matricula WHERE aluno_id = aluno_id;
    DELETE FROM Aluno WHERE id = aluno_id;
END //

DELIMITER ;


--- atualizar o salário de um professor
DELIMITER //

CREATE PROCEDURE AtualizarSalarioProfessor(
    IN professor_id INT,
    IN novo_salario DECIMAL(10, 2)
)
BEGIN
    UPDATE Professor
    SET salario = novo_salario
    WHERE id = professor_id;
END //

DELIMITER ;


-- Como chamar cada uma das stores procedures definidas anteriormente em uma query

CALL AtualizarNota(1, 2, 95.5); 
CALL ObterAlunosPorTurma(3);
CALL InserirProfessor('Maria Oliveira', 'Matemática', 5000.00);
CALL RelatorioDisciplinasPorProfessor(4);
CALL RemoverAluno(5);
CALL AtualizarSalarioProfessor(6, 6000.00);

