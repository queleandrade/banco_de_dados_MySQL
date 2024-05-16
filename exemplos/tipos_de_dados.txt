
# Resumo dos Tipos de Dados em SQL

1. INT (Integer)
   - O tipo INT é usado para armazenar números inteiros.
   - Pode representar valores positivos ou negativos.
   - Exemplo: 10, -5, 1000.

2. FLOAT / DOUBLE
   - Os tipos FLOAT e DOUBLE são usados para armazenar números decimais (com ponto flutuante).
   - FLOAT é usado para valores menores e DOUBLE para valores maiores e mais precisos.
   - Exemplo: 3.14, -0.005, 1000.12345.

3. VARCHAR (Variable Character)
   - O tipo VARCHAR é usado para armazenar strings de caracteres com comprimento variável.
   - É especificado com um comprimento máximo, por exemplo, VARCHAR(255).
   - Exemplo: 'John Doe', 'example@email.com'.

4. CHAR (Character)
   - O tipo CHAR é usado para armazenar strings de caracteres com comprimento fixo.
   - O espaço não utilizado é preenchido com espaços em branco.
   - Exemplo: 'ABC', 'X'.

5. DATE / TIME / DATETIME
   - Os tipos DATE, TIME e DATETIME são usados para armazenar datas e horários.
   - DATE: Armazena apenas a data ('YYYY-MM-DD').
   - TIME: Armazena apenas o horário ('HH:MM:SS').
   - DATETIME: Armazena data e horário ('YYYY-MM-DD HH:MM:SS').
   - Exemplo: 2022-05-15, 12:30:00, 2022-05-15 12:30:00.

6. BOOL / BOOLEAN
   - O tipo BOOL ou BOOLEAN é usado para armazenar valores booleanos (verdadeiro ou falso).
   - Geralmente representado como 0 (falso) ou 1 (verdadeiro).
   - Exemplo: 1 (verdadeiro), 0 (falso).

7. BLOB (Binary Large Object)
   - O tipo BLOB é usado para armazenar dados binários, como imagens, arquivos, etc.
   - Adequado para armazenamento de grandes quantidades de dados binários.
   - Exemplo: Dados binários de uma imagem.

8. ENUM (Enumerated Type)
   - O tipo ENUM é usado para especificar um conjunto de valores permitidos para uma coluna.
   - É semelhante a uma lista fixa de opções.
   - Exemplo: ENUM('Red', 'Green', 'Blue').

9. DECIMAL / NUMERIC
   - Os tipos DECIMAL e NUMERIC são usados para armazenar números decimais precisos.
   - Permitem controlar a precisão e a escala dos valores.
   - Exemplo: 10.55, -123.456.

