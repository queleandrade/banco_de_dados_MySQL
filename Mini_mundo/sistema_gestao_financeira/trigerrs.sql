-- Aciona antes de inserir uma nova linha na tabela contas_pagar. Ela verifica se o status de pagamento 
-- é válido (existente na tabela status_pagamento) antes de permitir a inserção.

DELIMITER //
CREATE TRIGGER before_insert_contas_pagar
BEFORE INSERT ON contas_pagar
FOR EACH ROW
BEGIN
    DECLARE status_exists INT;

    SELECT COUNT(*) INTO status_exists FROM status_pagamento WHERE ID_status_pagamento = NEW.status_pagamento_id;

    IF status_exists = 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'O status de pagamento fornecido é inválido.';
    END IF;
END //
DELIMITER ;

-- Aciona após a inserção de uma nova linha na tabela contas_receber. 
-- Ela exibe uma mensagem de log indicando que uma nova conta a receber foi adicionada.

DELIMITER //
CREATE TRIGGER after_insert_contas_receber
AFTER INSERT ON contas_receber
FOR EACH ROW
BEGIN
    INSERT INTO log (mensagem) VALUES ('Uma nova conta a receber foi adicionada com o ID: ' + CAST(NEW.ID_contasReceber AS CHAR));
END //
DELIMITER ;


-- verifica se a quantidade em estoque não é negativa antes de permitir a atualização.

DELIMITER //
CREATE TRIGGER before_update_produto
BEFORE UPDATE ON produto
FOR EACH ROW
BEGIN
    IF NEW.quantidade_estoque < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'A quantidade em estoque não pode ser negativa.';
    END IF;
END //
DELIMITER ;

-- atualiza automaticamente a quantidade disponível do produto associado.

DELIMITER //
CREATE TRIGGER after_delete_item_pedido
AFTER DELETE ON item_pedido
FOR EACH ROW
BEGIN
    UPDATE produto
    SET quantidade_estoque = quantidade_estoque + OLD.quantidade
    WHERE ID_produto = OLD.produto_id;
END //
DELIMITER ;
