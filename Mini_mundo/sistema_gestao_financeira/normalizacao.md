### 1FN
```
contas_pagar(ID_contasPagar, data_vencimento, valor, status_pagamento, fornecedor_correspondente)<br>
fornecedor(ID_fornecedor, endereco, nome, telefone, e-mail)<br>
produto(ID_produto, descrição, nome, preço, quantidade_estoque)<br>
pagamento(ID_pagamento, data, valor, tipo, conta_correspondente)<br>
cliente(ID_cliente, nome, telefone, endereco, e-mail)<br>
pedido(ID_pedido, cliente, data, status)<br>
contas_receber(ID_contasReceber, data_vencimento, valor, status_pagamento, fornecedor_correspondente)<br>
item_pedido(ID_itemPedido, referencia_produto, referencia_produto, quantidade, preco_unitario)<br>
```
### 2FN
```
contas_pagar(# __ID_contasPagar__, data_vencimento, valor, status_pagamento, # __fornecedor_id__)<br>
fornecedor(# __ID_fornecedor__, nome, endereco, telefone, e-mail)<br>
contas_receber(# __ID_contasReceber__, data_vencimento, valor, status_pagamento, # __cliente_id__)<br>
cliente(# __ID_cliente__, nome, endereco, telefone, e-mail)<br>
produto(# __ID_produto__, descrição, nome, preço, quantidade_estoque, # __fornecedor_id__)<br>
pagamento(# __ID_pagamento__, data, valor, tipo, # __conta_id__)<br>
pedido(# __ID_pedido__, # __cliente_id__, data, status)<br>
item_pedido(# __ID_itemPedido__, # __pedido_id__, # __produto_id__, quantidade, preco_unitario)<br>
```
### 3FN
```
contas_pagar(# __ID_contasPagar__, data_vencimento, valor, # __status_pagamento_id__, # __fornecedor_id__)<br>
fornecedor(# __ID_fornecedor__, nome, # __endereco_id__, telefone, e-mail)<br>
contas_receber(# __ID_contasReceber__, data_vencimento, valor, # __status_pagamento_id__, # __cliente_id__)<br>
cliente(# __ID_cliente__, nome, # __endereco_id__, telefone, e-mail)<br>
produto(# __ID_produto__, descrição, nome, preço, quantidade_estoque, # __fornecedor_id__)<br>
pagamento(# __ID_pagamento__, data, valor, # __tipo_pagamento_id__, # __status_pagamento_id__, # __conta_id__)<br>
pedido(# __ID_pedido__, # __cliente_id__, data, status)<br>
item_pedido(# __ID_itemPedido__, # __pedido_id__, # __produto_id__, quantidade, preco_unitario)<br>
endereco(# __ID_endereco__, rua, numero, complemento, cidade, estado, cep)<br>
status_pagamento(# __ID_status_pagamento__, descricao)<br>
tipo_pagamento(# __ID_tipo_pagamento__, descricao)<br>
pagamento_referencia(# __ID_pagamento__, # __contas_pagar_id__, # __contas_receber_id__)<br>
```
### 4FN
```
contas_pagar(# __ID_contasPagar__, data_vencimento, valor, # __status_pagamento_id__, # __fornecedor_id__)<br>
fornecedor(# __ID_fornecedor__, nome, # __endereco_id__, telefone, e-mail)<br>
contas_receber(# __ID_contasReceber__, data_vencimento, valor, # __status_pagamento_id__, # __cliente_id__)<br>
cliente(# __ID_cliente__, nome, # __endereco_id__, telefone, e-mail)<br>
produto(# __ID_produto__, descrição, nome, preço, quantidade_estoque, # __fornecedor_id__)<br>
pagamento(# __ID_pagamento__, data, valor, # __tipo_pagamento_id__, # __status_pagamento_id__, # __conta_id__)<br>
pedido(# __ID_pedido__, # __cliente_id__, data, status)<br>
item_pedido(# __ID_itemPedido__, # __pedido_id__, # __produto_id__, quantidade, preco_unitario)<br>
endereco(# __ID_endereco__, rua, numero, complemento, cidade, estado, cep)<br>
status_pagamento(# __ID_status_pagamento__, descricao)<br>
tipo_pagamento(# __ID_tipo_pagamento__, descricao)<br>
pagamento_referencia(# __ID_pagamento__, # __contas_pagar_id__, # __contas_receber_id__)<br>
```

### 5FN
```
contas_pagar(# __ID_contasPagar__, data_vencimento, valor, # __status_pagamento_id__, # __fornecedor_id__)<br>
fornecedor(# __ID_fornecedor__, nome, # __endereco_id__, telefone, e-mail)<br>
contas_receber(# __ID_contasReceber__, data_vencimento, valor, # __status_pagamento_id__, # __cliente_id__)<br>
cliente(# __ID_cliente__, nome, # __endereco_id__, telefone, e-mail)<br>
produto(# __ID_produto__, descrição, nome, preço, quantidade_estoque, # __fornecedor_id__)<br>
pagamento(# __ID_pagamento__, data, valor, # __tipo_pagamento_id__, # __status_pagamento_id__, # __conta_id__)<br>
pedido(# __ID_pedido__, # __cliente_id__, data, status)<br>
item_pedido(# __ID_itemPedido__, # __pedido_id__, # __produto_id__, quantidade, preco_unitario)<br>
endereco(# __ID_endereco__, rua, numero, complemento, cidade, estado, cep)<br>
status_pagamento(# __ID_status_pagamento__, descricao)<br>
tipo_pagamento(# __ID_tipo_pagamento__, descricao)<br>
pagamento_referencia(# __ID_pagamento__, # __contas_pagar_id__, # __contas_receber_id__)<br>
```
