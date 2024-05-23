# Mini-mundo: Sistema de Gestão Financeira

## Descrição Geral

Você foi contratado para desenvolver um sistema de gestão financeira para uma empresa. Este sistema deve permitir o gerenciamento de fornecedores, contas a pagar, contas a receber, clientes, produtos, pedidos e pagamentos. A empresa precisa de uma solução para manter o controle de suas finanças e estoque, assegurando que todas as transações sejam registradas de maneira eficiente e precisa.

## Entidades e Relacionamentos

1. **Fornecedor**
   - Um fornecedor fornece produtos ou serviços para a empresa.
   - Cada fornecedor tem um identificador único, nome, endereço, telefone e email.

2. **Produto**
   - Produtos são fornecidos por fornecedores e vendidos para clientes.
   - Cada produto tem um identificador único, nome, descrição, preço e quantidade em estoque.
   - Cada produto é fornecido por um fornecedor.

3. **Cliente**
   - Um cliente adquire produtos ou serviços da empresa.
   - Cada cliente tem um identificador único, nome, endereço, telefone e email.

4. **Pedido**
   - Um pedido é feito por um cliente e contém vários produtos.
   - Cada pedido tem um identificador único, data, cliente que fez o pedido e status (pendente, enviado, entregue).
   - Um pedido pode ter múltiplos produtos e cada produto pode estar em múltiplos pedidos (relação muitos-para-muitos).

5. **Item do Pedido**
   - Associação entre pedido e produto.
   - Cada item do pedido tem um identificador único, referência ao pedido, referência ao produto, quantidade e preço unitário.

6. **Conta a Pagar**
   - Representa uma obrigação financeira da empresa para com os fornecedores.
   - Cada conta a pagar tem um identificador único, valor, data de vencimento, status de pagamento (paga/não paga), e referência ao fornecedor correspondente.

7. **Conta a Receber**
   - Representa uma entrada financeira esperada pela empresa de seus clientes.
   - Cada conta a receber tem um identificador único, valor, data de vencimento, status de recebimento (recebida/não recebida), e referência ao cliente correspondente.

8. **Pagamento**
   - Registra os pagamentos feitos pela empresa (para fornecedores) e recebidos (de clientes).
   - Cada pagamento tem um identificador único, valor, data, tipo (recebido/pago) e referência à conta correspondente (conta a pagar ou conta a receber).

## Regras de Negócio

1. Um fornecedor pode fornecer múltiplos produtos, mas cada produto está associado a um único fornecedor.
2. Um cliente pode fazer múltiplos pedidos, mas cada pedido está associado a um único cliente.
3. Um pedido pode incluir múltiplos produtos e a mesma combinação de produto e pedido deve ser rastreada na entidade Item do Pedido.
4. Um fornecedor pode gerar múltiplas contas a pagar, mas cada conta a pagar está associada a um único fornecedor.
5. Um cliente pode gerar múltiplas contas a receber, mas cada conta a receber está associada a um único cliente.
6. Todas as transações financeiras (contas a pagar e contas a receber) devem ter um status que indica se foram pagas ou recebidas.
7. A empresa precisa ser capaz de atualizar o status das contas a pagar e a receber.
8. A empresa precisa de relatórios que mostrem todas as contas a pagar e a receber, detalhando o status de cada uma.
9. A empresa precisa rastrear os pagamentos feitos e recebidos, relacionando-os às contas a pagar e a receber correspondentes.
