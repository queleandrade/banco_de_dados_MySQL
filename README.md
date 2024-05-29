# Estudo de SQL com MySQL

Este repositório contém materiais relacionados ao estudo de SQL usando o MySQL, abordando os seguintes tópicos:

- **Criação de Banco de Dados**
  - Demonstrações e exemplos de como criar e gerenciar bancos de dados no MySQL.

- **Tabelas**
  - Exemplos de criação de tabelas, definição de esquemas e operações básicas de CRUD (Create, Read, Update, Delete).

- **Tipos de Dados**
  - Visão geral dos tipos de dados suportados pelo MySQL e exemplos práticos de uso.

- **Stored Procedures**
  - Implementação de stored procedures no MySQL para encapsular lógica de negócios no banco de dados.

- **Triggers**
  - Exploração do conceito de triggers e como usá-los para automatizar ações no banco de dados.

---

## Estrutura do Repositório

```
├── Mini_mundos/
|   └── sistema_gestao_financeira/
│       ├── descricao.md
│       ├── diagrama.md
│       ├── modelo_ER.md
│       ├── normalizacao.md
│       └── script_completo.sql
└── exemplos/
|    ├── criar_banco.sql
│    ├── criar_tabela.sql
│    ├── insert.sql
│    ├── limit_valoresDefault.md
|    ├── principais_comandos.md
│    ├── select.md
│    └── tipos_de_dados.md
└── recursos/
|   ├── config.md
│   └── dowload_MySQL.sql
```

## Como Usar

Certifique-se de ter o MySQL instalado localmente ou utilize um servidor MySQL remoto para executar os exemplos. Os scripts estão organizados por tópico dentro do diretório `exemplos/`.

### Executando Exemplos

1. Clone este repositório:
   ```bash
   git clone https://github.com/queleandrade/banco_de_dados_MySQL.git
   ```

2. Navegue até o diretório `exemplos/`:
   ```bash
   cd exemplos/
   ```

3. Execute os scripts SQL utilizando o cliente MySQL:
   ```bash
   mysql -u queleandrade -p < criar_banco.sql
   ```

   Substitua `queleandrade` pelo seu usuário do MySQL e `criar_banco.sql` pelo nome do script que deseja executar.

### Recursos Adicionais

Dentro do diretório `recursos/`, você encontrará arquivos adicionais relevantes para os exemplos, como configurações ou dados de amostra.

## Contribuições

Contribuições são bem-vindas! Se você deseja contribuir com exemplos adicionais, correções ou melhorias, sinta-se à vontade para abrir uma issue ou enviar um pull request.

## Licença

Este projeto está licenciado sob a [MIT License](LICENSE).

