-- consultando todos os fornecedores 

SELECT 
    ID_fornecedor,
    nome,
    telefone,
    email,
    rua,
    numero,
    complemento,
    cidade,
    estado,
    cep
FROM 
    fornecedor
JOIN 
    endereco ON fornecedor.endereco_id = endereco.ID_endereco;
    

-- Consulta para selecionar todos os produtos e seus fornecedores
SELECT 
    produto.ID_produto,
    produto.nome AS nome_produto,
    produto.descricao,
    produto.preco,
    produto.quantidade_estoque,
    fornecedor.nome AS nome_fornecedor
FROM 
    produto
JOIN 
    fornecedor ON produto.fornecedor_id = fornecedor.ID_fornecedor;

-- Consulta para selecionar todos os pedidos e seus status
SELECT 
    pedido.ID_pedido,
    pedido.data,
    pedido.status,
    cliente.nome AS nome_cliente
FROM 
    pedido
JOIN 
    cliente ON pedido.cliente_id = cliente.ID_cliente;
    

-- Consulta para selecionar todos os itens de um pedido específico
SELECT 
    item_pedido.ID_itemPedido,
    item_pedido.quantidade,
    item_pedido.preco_unitario,
    produto.nome AS nome_produto
FROM 
    item_pedido
JOIN 
    produto ON item_pedido.produto_id = produto.ID_produto
WHERE 
    item_pedido.pedido_id = 15; 
    