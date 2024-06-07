# Triggers 

Uma trigger é um bloco de código SQL que é associado a um evento em uma tabela, como INSERT, UPDATE ou DELETE, e é executado automaticamente quando o evento ocorre. Elas são ativadas pelo próprio sistema de gerenciamento de banco de dados (SGBD) e não precisam ser chamadas explicitamente pelo usuário.
As triggers no MySQL são uma ferramenta poderosa para automatizar ações no banco de dados e impor regras de negócios. 

## INSERT
 - O evento INSERT é acionado quando um novo registro é inserido em uma tabela.
   ### BEFORE INSERT
    -  É acionada antes que os dados sejam inseridos na tabela alvo. Isso permite que você execute determinadas ações ou aplique determinadas restrições antes que os novos dados sejam efetivamente adicionados à tabela.

   ### AFTER INSERT
    - É acionada depois que os dados foram inseridos na tabela alvo. Isso permite que você execute ações adicionais com base nos dados recém-inseridos.

## UPDATE
 - O evento UPDATE é acionado quando um ou mais registros existentes em uma tabela são atualizados.

## DELETE
 - O evento DELETE é acionado quando um ou mais registros são excluídos de uma tabela.

