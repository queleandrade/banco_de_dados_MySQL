# Stored Procedures

Stored Procedures (ou Procedimentos Armazenados) são blocos de código SQL armazenados e executados diretamente no servidor de banco de dados. Elas permitem encapsular consultas, operações de inserção, atualização e exclusão, além de lógica de programação como loops e condicionais.

## Vantagens das Stored Procedures
### Desempenho Melhorado
- O código SQL é pré-compilado e armazenado no servidor, resultando em uma execução mais rápida do que enviar consultas SQL individuais do cliente para o servidor.

### Reutilização de Código
- Permitem a reutilização de código SQL complexo em várias partes de uma aplicação sem duplicação de código.

### Segurança
- Pode ajudar a proteger contra injeção de SQL, encapsulando a lógica SQL e aceitando apenas parâmetros.

### Manutenção Facilitada
- Centraliza a lógica de negócios no banco de dados, facilitando a manutenção e a atualização do código.

### Redução do Tráfego de Rede
- Reduz o tráfego de rede, já que o cliente pode chamar uma procedure com uma única chamada em vez de enviar múltiplas instruções SQL.

## parâmetros: IN, OUT, e INOUT
### Parâmetros IN
 Passa valores para a stored procedure, não pode ser modificado dentro da procedure.

### Parâmetros OUT
Retorna valores da stored procedure para o chamador, pode ser modificado dentro da procedure.

### Parâmetros INOUT
Passa valores para a stored procedure e retorna valores modificados para o chamador.