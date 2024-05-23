

## LIMIT

A cláusula `LIMIT` é usada para restringir o número de registros retornados por uma consulta. É útil para paginar resultados ou obter uma amostra dos dados.
- `LIMIT 0, 5`: Inicia na primeira linha da tabela e retorna os primeiros 5 registros. O primeiro valor (0) indica o ponto de partida (primeira linha), e o segundo valor (5) indica quantos registros serão retornados a partir desse ponto.

## Valores DEFAULT

A palavra-chave `DEFAULT` define um valor padrão para uma coluna. Se nenhum valor for especificado durante a inserção de dados, o valor padrão é utilizado.

### Modificar Coluna

Utiliza-se `MODIFY` para alterar o tipo de dado ou outras características de uma coluna existente.

## Uso de TIMESTAMP

A coluna `TIMESTAMP` armazena data e hora. É frequentemente utilizada para rastrear quando um registro foi criado ou atualizado. `CURRENT_TIMESTAMP` define automaticamente o valor atual de data e hora no momento da inserção ou atualização.
