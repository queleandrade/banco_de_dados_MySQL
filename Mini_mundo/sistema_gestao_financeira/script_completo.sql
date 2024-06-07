CREATE DATABASE sistema_gestao_financeira;

USE sistema_gestao_financeira;

CREATE TABLE endereco (
    ID_endereco INT PRIMARY KEY AUTO_INCREMENT,
    rua VARCHAR(255),
    numero VARCHAR(20),
    complemento VARCHAR(255),
    cidade VARCHAR(100),
    estado VARCHAR(100),
    cep VARCHAR(20)
);

CREATE TABLE status_pagamento (
    ID_status_pagamento INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(255)
);

CREATE TABLE tipo_pagamento (
    ID_tipo_pagamento INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(255)
);

CREATE TABLE fornecedor (
    ID_fornecedor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255),
    endereco_id INT,
    telefone VARCHAR(20),
    email VARCHAR(255),
    FOREIGN KEY (endereco_id) REFERENCES endereco(ID_endereco)
);

CREATE TABLE cliente (
    ID_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255),
    endereco_id INT,
    telefone VARCHAR(20),
    email VARCHAR(255),
    FOREIGN KEY (endereco_id) REFERENCES endereco(ID_endereco)
);

CREATE TABLE produto (
    ID_produto INT PRIMARY KEY AUTO_INCREMENT,
    descricao TEXT,
    nome VARCHAR(255),
    preco DECIMAL(10, 2),
    quantidade_estoque INT,
    fornecedor_id INT,
    FOREIGN KEY (fornecedor_id) REFERENCES fornecedor(ID_fornecedor)
);

CREATE TABLE contas_pagar (
    ID_contasPagar INT PRIMARY KEY AUTO_INCREMENT,
    data_vencimento DATE,
    valor DECIMAL(10, 2),
    status_pagamento_id INT,
    fornecedor_id INT,
    FOREIGN KEY (status_pagamento_id) REFERENCES status_pagamento(ID_status_pagamento),
    FOREIGN KEY (fornecedor_id) REFERENCES fornecedor(ID_fornecedor)
);

CREATE TABLE contas_receber (
    ID_contasReceber INT PRIMARY KEY AUTO_INCREMENT,
    data_vencimento DATE,
    valor DECIMAL(10, 2),
    status_pagamento_id INT,
    cliente_id INT,
    FOREIGN KEY (status_pagamento_id) REFERENCES status_pagamento(ID_status_pagamento),
    FOREIGN KEY (cliente_id) REFERENCES cliente(ID_cliente)
);

CREATE TABLE pagamento (
    ID_pagamento INT PRIMARY KEY AUTO_INCREMENT,
    data DATE,
    valor DECIMAL(10, 2),
    tipo_pagamento_id INT,
    status_pagamento_id INT,
    conta_pagar_id INT,
    conta_receber_id INT,
    FOREIGN KEY (tipo_pagamento_id) REFERENCES tipo_pagamento(ID_tipo_pagamento),
    FOREIGN KEY (status_pagamento_id) REFERENCES status_pagamento(ID_status_pagamento),
    FOREIGN KEY (conta_pagar_id) REFERENCES contas_pagar(ID_contasPagar),
    FOREIGN KEY (conta_receber_id) REFERENCES contas_receber(ID_contasReceber)
);


CREATE TABLE pedido (
    ID_pedido INT PRIMARY KEY AUTO_INCREMENT,
    cliente_id INT,
    data DATE,
    status VARCHAR(50),
    FOREIGN KEY (cliente_id) REFERENCES cliente(ID_cliente)
);

CREATE TABLE item_pedido (
    ID_itemPedido INT PRIMARY KEY AUTO_INCREMENT,
    pedido_id INT,
    produto_id INT,
    quantidade INT,
    preco_unitario DECIMAL(10, 2),
    FOREIGN KEY (pedido_id) REFERENCES pedido(ID_pedido),
    FOREIGN KEY (produto_id) REFERENCES produto(ID_produto)
);

CREATE TABLE pagamento_referencia (
    ID_pagamento INT,
    contas_pagar_id INT,
    contas_receber_id INT,
    PRIMARY KEY (ID_pagamento),
    FOREIGN KEY (ID_pagamento) REFERENCES pagamento(ID_pagamento),
    FOREIGN KEY (contas_pagar_id) REFERENCES contas_pagar(ID_contasPagar),
    FOREIGN KEY (contas_receber_id) REFERENCES contas_receber(ID_contasReceber)
);
