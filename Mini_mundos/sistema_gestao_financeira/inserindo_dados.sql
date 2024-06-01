INSERT INTO endereco (rua, numero, complemento, cidade, estado, cep) VALUES
('Rua das Flores', '123', 'Apt 101', 'São Paulo', 'SP', '12345-678'),
('Avenida Paulista', '456', 'Sala 201', 'São Paulo', 'SP', '23456-789'),
('Rua Augusta', '789', '', 'São Paulo', 'SP', '34567-890'),
('Rua 7 de Setembro', '321', '', 'Rio de Janeiro', 'RJ', '45678-901'),
('Avenida Atlântica', '654', 'Cobertura', 'Rio de Janeiro', 'RJ', '56789-012'),
('Rua XV de Novembro', '987', 'Apt 301', 'Curitiba', 'PR', '67890-123'),
('Avenida Brasil', '147', '', 'Curitiba', 'PR', '78901-234'),
('Rua das Palmeiras', '258', 'Casa 1', 'Florianópolis', 'SC', '89012-345'),
('Rua das Acácias', '369', '', 'Florianópolis', 'SC', '90123-456'),
('Avenida das Nações', '159', 'Apt 401', 'Porto Alegre', 'RS', '01234-567'),
('Rua Independência', '753', '', 'Porto Alegre', 'RS', '12345-678'),
('Rua da Praia', '852', 'Casa 2', 'Salvador', 'BA', '23456-789'),
('Avenida Sete de Setembro', '951', '', 'Salvador', 'BA', '34567-890'),
('Rua do Carmo', '159', 'Apt 501', 'Recife', 'PE', '45678-901'),
('Avenida Boa Viagem', '357', '', 'Recife', 'PE', '56789-012'),
('Rua das Flores', '456', 'Casa 3', 'Belo Horizonte', 'MG', '67890-123'),
('Avenida Afonso Pena', '654', 'Apt 601', 'Belo Horizonte', 'MG', '78901-234'),
('Rua da Paz', '123', '', 'Fortaleza', 'CE', '89012-345'),
('Avenida Beira Mar', '456', 'Cobertura', 'Fortaleza', 'CE', '90123-456'),
('Rua das Orquídeas', '789', '', 'Manaus', 'AM', '01234-567');

INSERT INTO status_pagamento (descricao) VALUES
('Pendente'),
('Pago'),
('Cancelado'),
('Em Processamento'),
('Reembolsado'),
('Aguardando Pagamento'),
('Concluído'),
('Falha no Pagamento'),
('Estornado'),
('Parcialmente Pago'),
('Em Revisão'),
('Aprovado'),
('Recusado'),
('Atrasado'),
('Devolvido'),
('Suspenso'),
('Confirmado'),
('Não Autorizado'),
('Retido'),
('Processado');

INSERT INTO tipo_pagamento (descricao) VALUES
('Cartão de Crédito'),
('Cartão de Débito'),
('Boleto Bancário'),
('Transferência Bancária'),
('Pix'),
('PayPal'),
('Dinheiro'),
('Cheque'),
('Vale Alimentação'),
('Vale Refeição'),
('Crédito Loja'),
('Débito Automático'),
('Bitcoin'),
('Google Pay'),
('Apple Pay'),
('Samsung Pay'),
('AliPay'),
('WeChat Pay'),
('TransferWise'),
('Pagar.me');


INSERT INTO fornecedor (nome, endereco_id, telefone, email) VALUES
('Fornecedor A', 1, '1111-1111', 'fornecedor_a@example.com'),
('Fornecedor B', 2, '2222-2222', 'fornecedor_b@example.com'),
('Fornecedor C', 3, '3333-3333', 'fornecedor_c@example.com'),
('Fornecedor D', 4, '4444-4444', 'fornecedor_d@example.com'),
('Fornecedor E', 5, '5555-5555', 'fornecedor_e@example.com'),
('Fornecedor F', 6, '6666-6666', 'fornecedor_f@example.com'),
('Fornecedor G', 7, '7777-7777', 'fornecedor_g@example.com'),
('Fornecedor H', 8, '8888-8888', 'fornecedor_h@example.com'),
('Fornecedor I', 9, '9999-9999', 'fornecedor_i@example.com'),
('Fornecedor J', 10, '1010-1010', 'fornecedor_j@example.com'),
('Fornecedor K', 11, '1111-1111', 'fornecedor_k@example.com'),
('Fornecedor L', 12, '1212-1212', 'fornecedor_l@example.com'),
('Fornecedor M', 13, '1313-1313', 'fornecedor_m@example.com'),
('Fornecedor N', 14, '1414-1414', 'fornecedor_n@example.com'),
('Fornecedor O', 15, '1515-1515', 'fornecedor_o@example.com'),
('Fornecedor P', 16, '1616-1616', 'fornecedor_p@example.com'),
('Fornecedor Q', 17, '1717-1717', 'fornecedor_q@example.com'),
('Fornecedor R', 18, '1818-1818', 'fornecedor_r@example.com'),
('Fornecedor S', 19, '1919-1919', 'fornecedor_s@example.com'),
('Fornecedor T', 20, '2020-2020', 'fornecedor_t@example.com');


INSERT INTO cliente (nome, endereco_id, telefone, email) VALUES
('Cliente A', 1, '2111-1111', 'cliente_a@example.com'),
('Cliente B', 2, '2222-2222', 'cliente_b@example.com'),
('Cliente C', 3, '2333-3333', 'cliente_c@example.com'),
('Cliente D', 4, '2444-4444', 'cliente_d@example.com'),
('Cliente E', 5, '2555-5555', 'cliente_e@example.com'),
('Cliente F', 6, '2666-6666', 'cliente_f@example.com'),
('Cliente G', 7, '2777-7777', 'cliente_g@example.com'),
('Cliente H', 8, '2888-8888', 'cliente_h@example.com'),
('Cliente I', 9, '2999-9999', 'cliente_i@example.com'),
('Cliente J', 10, '3010-1010', 'cliente_j@example.com'),
('Cliente K', 11, '3111-1111', 'cliente_k@example.com'),
('Cliente L', 12, '3212-1212', 'cliente_l@example.com'),
('Cliente M', 13, '3313-1313', 'cliente_m@example.com'),
('Cliente N', 14, '3414-1414', 'cliente_n@example.com'),
('Cliente O', 15, '3515-1515', 'cliente_o@example.com'),
('Cliente P', 16, '3616-1616', 'cliente_p@example.com'),
('Cliente Q', 17, '3717-1717', 'cliente_q@example.com'),
('Cliente R', 18, '3818-1818', 'cliente_r@example.com'),
('Cliente S', 19, '3919-1919', 'cliente_s@example.com'),
('Cliente T', 20, '4020-2020', 'cliente_t@example.com');


INSERT INTO produto (descricao, nome, preco, quantidade_estoque, fornecedor_id) VALUES
('Descrição do Produto 1', 'Produto 1', 10.00, 100, 1),
('Descrição do Produto 2', 'Produto 2', 20.00, 200, 2),
('Descrição do Produto 3', 'Produto 3', 30.00, 300, 3),
('Descrição do Produto 4', 'Produto 4', 40.00, 400, 4),
('Descrição do Produto 5', 'Produto 5', 50.00, 500, 5),
('Descrição do Produto 6', 'Produto 6', 60.00, 600, 6),
('Descrição do Produto 7', 'Produto 7', 70.00, 700, 7),
('Descrição do Produto 8', 'Produto 8', 80.00, 800, 8),
('Descrição do Produto 9', 'Produto 9', 90.00, 900, 9),
('Descrição do Produto 10', 'Produto 10', 100.00, 1000, 10),
('Descrição do Produto 11', 'Produto 11', 110.00, 1100, 11),
('Descrição do Produto 12', 'Produto 12', 120.00, 1200, 12),
('Descrição do Produto 13', 'Produto 13', 130.00, 1300, 13),
('Descrição do Produto 14', 'Produto 14', 140.00, 1400, 14),
('Descrição do Produto 15', 'Produto 15', 150.00, 1500, 15),
('Descrição do Produto 16', 'Produto 16', 160.00, 1600, 16),
('Descrição do Produto 17', 'Produto 17', 170.00, 1700, 17),
('Descrição do Produto 18', 'Produto 18', 180.00, 1800, 18),
('Descrição do Produto 19', 'Produto 19', 190.00, 1900, 19),
('Descrição do Produto 20', 'Produto 20', 200.00, 2000, 20);

INSERT INTO contas_pagar (data_vencimento, valor, status_pagamento_id, fornecedor_id) VALUES
('2024-06-01', 100.00, 1, 1),
('2024-06-02', 200.00, 2, 2),
('2024-06-03', 300.00, 3, 3),
('2024-06-04', 400.00, 4, 4),
('2024-06-05', 500.00, 5, 5),
('2024-06-06', 600.00, 6, 6),
('2024-06-07', 700.00, 7, 7),
('2024-06-08', 800.00, 8, 8),
('2024-06-09', 900.00, 9, 9),
('2024-06-10', 1000.00, 10, 10),
('2024-06-11', 1100.00, 11, 11),
('2024-06-12', 1200.00, 12, 12),
('2024-06-13', 1300.00, 13, 13),
('2024-06-14', 1400.00, 14, 14),
('2024-06-15', 1500.00, 15, 15),
('2024-06-16', 1600.00, 16, 16),
('2024-06-17', 1700.00, 17, 17),
('2024-06-18', 1800.00, 18, 18),
('2024-06-19', 1900.00, 19, 19),
('2024-06-20', 2000.00, 20, 20);

INSERT INTO contas_receber (data_vencimento, valor, status_pagamento_id, cliente_id) VALUES
('2024-06-01', 100.00, 1, 1),
('2024-06-02', 200.00, 2, 2),
('2024-06-03', 300.00, 3, 3),
('2024-06-04', 400.00, 4, 4),
('2024-06-05', 500.00, 5, 5),
('2024-06-06', 600.00, 6, 6),
('2024-06-07', 700.00, 7, 7),
('2024-06-08', 800.00, 8, 8),
('2024-06-09', 900.00, 9, 9),
('2024-06-10', 1000.00, 10, 10),
('2024-06-11', 1100.00, 11, 11),
('2024-06-12', 1200.00, 12, 12),
('2024-06-13', 1300.00, 13, 13),
('2024-06-14', 1400.00, 14, 14),
('2024-06-15', 1500.00, 15, 15),
('2024-06-16', 1600.00, 16, 16),
('2024-06-17', 1700.00, 17, 17),
('2024-06-18', 1800.00, 18, 18),
('2024-06-19', 1900.00, 19, 19),
('2024-06-20', 2000.00, 20, 20);


INSERT INTO pedido (cliente_id, data, status) VALUES
(1, '2024-05-01', 'Pendente'),
(2, '2024-05-02', 'Enviado'),
(3, '2024-05-03', 'Entregue'),
(4, '2024-05-04', 'Pendente'),
(5, '2024-05-05', 'Enviado'),
(6, '2024-05-06', 'Entregue'),
(7, '2024-05-07', 'Pendente'),
(8, '2024-05-08', 'Enviado'),
(9, '2024-05-09', 'Entregue'),
(10, '2024-05-10', 'Pendente'),
(11, '2024-05-11', 'Enviado'),
(12, '2024-05-12', 'Entregue'),
(13, '2024-05-13', 'Pendente'),
(14, '2024-05-14', 'Enviado'),
(15, '2024-05-15', 'Entregue'),
(16, '2024-05-16', 'Pendente'),
(17, '2024-05-17', 'Enviado'),
(18, '2024-05-18', 'Entregue'),
(19, '2024-05-19', 'Pendente'),
(20, '2024-05-20', 'Enviado');

INSERT INTO item_pedido (pedido_id, produto_id, quantidade, preco_unitario) VALUES
(1, 1, 2, 10.00),
(2, 2, 3, 20.00),
(3, 3, 1, 30.00),
(4, 4, 5, 40.00),
(5, 5, 2, 50.00),
(6, 6, 3, 60.00),
(7, 7, 1, 70.00),
(8, 8, 5, 80.00),
(9, 9, 2, 90.00),
(10, 10, 3, 100.00),
(11, 11, 1, 110.00),
(12, 12, 5, 120.00),
(13, 13, 2, 130.00),
(14, 14, 3, 140.00),
(15, 15, 1, 150.00),
(16, 16, 5, 160.00),
(17, 17, 2, 170.00),
(18, 18, 3, 180.00),
(19, 19, 1, 190.00),
(20, 20, 5, 200.00);

INSERT INTO pagamento (data, valor, tipo_pagamento_id, status_pagamento_id, conta_pagar_id, conta_receber_id) VALUES
('2024-05-01', 100.00, 1, 2, 1, 1),
('2024-05-02', 200.00, 2, 1, 2, 2),
('2024-05-03', 300.00, 3, 3, 3, 3),
('2024-05-04', 400.00, 4, 1, 4, 4),
('2024-05-05', 500.00, 5, 2, 5, 5),
('2024-05-06', 600.00, 6, 3, 6, 6),
('2024-05-07', 700.00, 7, 1, 7, 7),
('2024-05-08', 800.00, 8, 2, 8, 8),
('2024-05-09', 900.00, 9, 3, 9, 9),
('2024-05-10', 1000.00, 10, 1, 10, 10),
('2024-05-11', 1100.00, 11, 2, 11, 11),
('2024-05-12', 1200.00, 12, 3, 12, 12),
('2024-05-13', 1300.00, 13, 1, 13, 13),
('2024-05-14', 1400.00, 14, 2, 14, 14),
('2024-05-15', 1500.00, 15, 3, 15, 15),
('2024-05-16', 1600.00, 16, 1, 16, 16),
('2024-05-17', 1700.00, 17, 2, 17, 17),
('2024-05-18', 1800.00, 18, 3, 18, 18),
('2024-05-19', 1900.00, 19, 1, 19, 19),
('2024-05-20', 2000.00, 20, 2, 20, 20);

INSERT INTO pagamento_referencia (ID_pagamento, contas_pagar_id, contas_receber_id) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 17),
(18, 18, 18),
(19, 19, 19),
(20, 20, 20);

