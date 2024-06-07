-- BEFORE INSERT, verifiando se a data de nascimento é menor que a data atual

DELIMITER //

CREATE TRIGGER aluno_before_insert
BEFORE INSERT ON Aluno
FOR EACH ROW
BEGIN
    IF NEW.data_nascimento > CURDATE() THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'A data de nascimento não pode ser no futuro';
    END IF;
END //

DELIMITER ;


-- AFTER INSERT, atualiza a tabela aluno para definir a última nota inserida
DELIMITER //

CREATE TRIGGER matricula_after_insert
AFTER INSERT ON Matricula
FOR EACH ROW
BEGIN
    UPDATE Aluno
    SET nota_ultima_matricula = NEW.nota
    WHERE id = NEW.aluno_id;
END //

DELIMITER ;

-- BEFORE DELETE, verificando se há alunos matriculados na turma que está sendo excluída 
DELIMITER //

CREATE TRIGGER turma_before_delete
BEFORE DELETE ON Turma
FOR EACH ROW
BEGIN
    DECLARE num_matriculas INT;
    SELECT COUNT(*) INTO num_matriculas FROM Matricula WHERE disciplina_id = OLD.id;
    IF num_matriculas > 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Não é possível excluir esta turma, pois existem alunos matriculados nela';
    END IF;
END //

DELIMITER ;
