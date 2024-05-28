### 1FN

contas_pagar(ID_contasPagar, data_vencimento, valor, status_pagamento, fornecedor_correspondente)
fornecedor(ID_fornecedor, endereco, nome, telefone, e-mail)
produto(ID_produto, descrição, nome, preço, quantidade_estoque)
pagamento(ID_pagamento, data, valor, tipo, conta_correspondente)
cliente(ID_cliente, nome, telefone, endereco, e-mail)
pedido(ID_pedido, cliente, data, status)
contas_receber(ID_contasReceber, data_vencimento, valor, status_pagamento, fornecedor_correspondente)
item_pedido(ID_itemPedido, referencia_produto, referencia_produto, quantidade, preco_unitario)

### 2FN

contas_pagar(# __ID_contasPagar__, data_vencimento, valor, status_pagamento, # __fornecedor_id__)
fornecedor(# __ID_fornecedor__, nome, endereco, telefone, e-mail)
contas_receber(# __ID_contasReceber__, data_vencimento, valor, status_pagamento, # __cliente_id__)
cliente(# __ID_cliente__, nome, endereco, telefone, e-mail)
produto(# __ID_produto__, descrição, nome, preço, quantidade_estoque, # __fornecedor_id__)
pagamento(# __ID_pagamento__, data, valor, tipo, # __conta_id__)
pedido(# __ID_pedido__, # __cliente_id__, data, status)
item_pedido(# __ID_itemPedido__, # __pedido_id__, # __produto_id__, quantidade, preco_unitario)

### 3FN

contas_pagar(# __ID_contasPagar__, data_vencimento, valor, # __status_pagamento_id__, # __fornecedor_id__)
fornecedor(# __ID_fornecedor__, nome, # __endereco_id__, telefone, e-mail)
contas_receber(# __ID_contasReceber__, data_vencimento, valor, # __status_pagamento_id__, # __cliente_id__)
cliente(# __ID_cliente__, nome, # __endereco_id__, telefone, e-mail)
produto(# __ID_produto__, descrição, nome, preço, quantidade_estoque, # __fornecedor_id__)
pagamento(# __ID_pagamento__, data, valor, # __tipo_pagamento_id__, # __status_pagamento_id__, # __conta_id__)
pedido(# __ID_pedido__, # __cliente_id__, data, status)
item_pedido(# __ID_itemPedido__, # __pedido_id__, # __produto_id__, quantidade, preco_unitario)
endereco(# __ID_endereco__, rua, numero, complemento, cidade, estado, cep)
status_pagamento(# __ID_status_pagamento__, descricao)
tipo_pagamento(# __ID_tipo_pagamento__, descricao)
pagamento_referencia(# __ID_pagamento__, # __contas_pagar_id__, # __contas_receber_id__)

### 4FN

contas_pagar(# __ID_contasPagar__, data_vencimento, valor, # __status_pagamento_id__, # __fornecedor_id__)
fornecedor(# __ID_fornecedor__, nome, # __endereco_id__, telefone, e-mail)
contas_receber(# __ID_contasReceber__, data_vencimento, valor, # __status_pagamento_id__, # __cliente_id__)
cliente(# __ID_cliente__, nome, # __endereco_id__, telefone, e-mail)
produto(# __ID_produto__, descrição, nome, preço, quantidade_estoque, # __fornecedor_id__)
pagamento(# __ID_pagamento__, data, valor, # __tipo_pagamento_id__, # __status_pagamento_id__, # __conta_id__)
pedido(# __ID_pedido__, # __cliente_id__, data, status)
item_pedido(# __ID_itemPedido__, # __pedido_id__, # __produto_id__, quantidade, preco_unitario)
endereco(# __ID_endereco__, rua, numero, complemento, cidade, estado, cep)
status_pagamento(# __ID_status_pagamento__, descricao)
tipo_pagamento(# __ID_tipo_pagamento__, descricao)
pagamento_referencia(# __ID_pagamento__, # __contas_pagar_id__, # __contas_receber_id__)


### 5FN

contas_pagar(# __ID_contasPagar__, data_vencimento, valor, # __status_pagamento_id__, # __fornecedor_id__)
fornecedor(# __ID_fornecedor__, nome, # __endereco_id__, telefone, e-mail)
contas_receber(# __ID_contasReceber__, data_vencimento, valor, # __status_pagamento_id__, # __cliente_id__)
cliente(# __ID_cliente__, nome, # __endereco_id__, telefone, e-mail)
produto(# __ID_produto__, descrição, nome, preço, quantidade_estoque, # __fornecedor_id__)
pagamento(# __ID_pagamento__, data, valor, # __tipo_pagamento_id__, # __status_pagamento_id__, # __conta_id__)
pedido(# __ID_pedido__, # __cliente_id__, data, status)
item_pedido(# __ID_itemPedido__, # __pedido_id__, # __produto_id__, quantidade, preco_unitario)
endereco(# __ID_endereco__, rua, numero, complemento, cidade, estado, cep)
status_pagamento(# __ID_status_pagamento__, descricao)
tipo_pagamento(# __ID_tipo_pagamento__, descricao)
pagamento_referencia(# __ID_pagamento__, # __contas_pagar_id__, # __contas_receber_id__)
