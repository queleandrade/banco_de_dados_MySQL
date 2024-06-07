-- inserir um novo fornecedor e seu endereço

DELIMITER //

CREATE PROCEDURE InserirFornecedor(
    IN nomeFornecedor VARCHAR(255),
    IN ruaEndereco VARCHAR(255),
    IN numeroEndereco VARCHAR(20),
    IN complementoEndereco VARCHAR(255),
    IN cidadeEndereco VARCHAR(100),
    IN estadoEndereco VARCHAR(100),
    IN cepEndereco VARCHAR(20),
    IN telefoneFornecedor VARCHAR(20),
    IN emailFornecedor VARCHAR(255)
)
BEGIN
    DECLARE novoEnderecoId INT;
    
    INSERT INTO endereco (rua, numero, complemento, cidade, estado, cep)
    VALUES (ruaEndereco, numeroEndereco, complementoEndereco, cidadeEndereco, estadoEndereco, cepEndereco);
    
    SET novoEnderecoId = LAST_INSERT_ID();
    
    INSERT INTO fornecedor (nome, endereco_id, telefone, email)
    VALUES (nomeFornecedor, novoEnderecoId, telefoneFornecedor, emailFornecedor);
END //

DELIMITER ;

-- retorna a quantidade de produtos em estoque de um determinado fornecedor
DELIMITER //

CREATE PROCEDURE ObterQuantidadeEstoqueFornecedor(
    IN fornecedorId INT,
    OUT quantidadeTotal INT
)
BEGIN
    SELECT SUM(quantidade_estoque)
    INTO quantidadeTotal
    FROM produto
    WHERE fornecedor_id = fornecedorId;
END //

DELIMITER ;

-- atualiza o preço de um produto e retorna o preço atualizado
DELIMITER //

CREATE PROCEDURE AtualizarPrecoProduto(
    IN produtoId INT,
    INOUT precoProduto DECIMAL(10, 2)
)
BEGIN
    UPDATE produto
    SET preco = precoProduto
    WHERE ID_produto = produtoId;

    SELECT preco
    INTO precoProduto
    FROM produto
    WHERE ID_produto = produtoId;
END //

DELIMITER ;

-- inserir novo pagamento
DELIMITER //

CREATE PROCEDURE InserirPagamento(
    IN dataPagamento DATE,
    IN valorPagamento DECIMAL(10, 2),
    IN tipoPagamentoId INT,
    IN statusPagamentoId INT,
    IN contaPagarId INT,
    IN contaReceberId INT
)
BEGIN
    INSERT INTO pagamento (data, valor, tipo_pagamento_id, status_pagamento_id, conta_pagar_id, conta_receber_id)
    VALUES (dataPagamento, valorPagamento, tipoPagamentoId, statusPagamentoId, contaPagarId, contaReceberId);
END //

DELIMITER ;

-- Atualizar o status de uma conta a pagar
DELIMITER //

CREATE PROCEDURE AtualizarStatusContaPagar(
    IN contaPagarId INT,
    IN novoStatusPagamentoId INT
)
BEGIN
    UPDATE contas_pagar
    SET status_pagamento_id = novoStatusPagamentoId
    WHERE ID_contasPagar = contaPagarId;
END //

DELIMITER ;


-- Usando Stored Procedurs
CALL InserirFornecedor(
    'Fornecedor Exemplo', 
    'Rua Exemplo', 
    '123', 
    'Apto 1', 
    'Cidade Exemplo', 
    'Estado Exemplo', 
    '12345-678', 
    '123456789', 
    'email@example.com'
);


SET @quantidade = 0;
CALL ObterQuantidadeEstoqueFornecedor(1, @quantidade);
SELECT @quantidade AS quantidadeTotal;

SET @preco = 150.00;
CALL AtualizarPrecoProduto(1, @preco);
SELECT @preco AS precoAtualizado;

CALL InserirPagamento('2024-06-15', 150.00, 1, 2, 1, NULL);

CALL AtualizarStatusContaPagar(1, 3);
