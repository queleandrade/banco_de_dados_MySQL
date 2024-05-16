-- 20 INSERÇÕES DE DADOS NA TABELA ENDEREÇO
-- PARA VISUALIZAR OS DADOS APÓS A INSERÇÃO EM CADA TABELA "SELECT * FROM NOME_TABELA"

INSERT INTO Endereco (rua, numero, complemento, cidade, estado, cep) VALUES
('Rua A', '123', 'Apartamento 101', 'São Paulo', 'SP', '01234-567'),
('Avenida B', '456', 'Casa Verde', 'Rio de Janeiro', 'RJ', '20000-123'),
('Rua C', '789', NULL, 'Belo Horizonte', 'MG', '30000-456'),
('Rua D', '321', 'Sala 201', 'Porto Alegre', 'RS', '90000-789'),
('Avenida E', '654', NULL, 'Salvador', 'BA', '40000-321'),
('Rua F', '987', 'Bloco B', 'Recife', 'PE', '50000-654'),
('Rua G', '135', NULL, 'Curitiba', 'PR', '80000-987'),
('Avenida H', '246', 'Lote 50', 'Fortaleza', 'CE', '60000-135'),
('Rua I', '579', NULL, 'Florianópolis', 'SC', '88000-246'),
('Avenida J', '864', 'Andar 3', 'Brasília', 'DF', '70000-579'),
('Rua K', '753', NULL, 'Manaus', 'AM', '69000-864'),
('Avenida L', '159', 'Bloco C', 'Goiânia', 'GO', '74000-753'),
('Rua M', '357', NULL, 'Porto Velho', 'RO', '76800-159'),
('Avenida N', '852', 'Casa 10', 'Campo Grande', 'MS', '79000-357'),
('Rua O', '951', NULL, 'Vitória', 'ES', '29000-852'),
('Avenida P', '426', 'Apartamento 20', 'Natal', 'RN', '59000-951'),
('Rua Q', '789', NULL, 'João Pessoa', 'PB', '58000-426'),
('Avenida R', '123', 'Bloco D', 'Teresina', 'PI', '64000-789'),
('Rua S', '456', NULL, 'Maceió', 'AL', '57000-123'),
('Avenida T', '789', 'Casa Amarela', 'Aracaju', 'SE', '49000-456');


INSERT INTO Aluno (nome, data_nascimento, endereco_id) VALUES
('João Silva', '2000-05-10', 1),
('Maria Oliveira', '1999-08-15', 2),
('Carlos Santos', '2001-02-20', 3),
('Ana Souza', '2000-11-25', 4),
('Pedro Almeida', '1998-04-30', 5),
('Juliana Pereira', '2002-09-05', 6),
('Lucas Costa', '1999-12-12', 7),
('Camila Rodrigues', '2001-03-18', 8),
('Fernando Lima', '2000-06-22', 9),
('Mariana Xavier', '1997-10-28', 10),
('Rodrigo Oliveira', '1999-07-14', 11),
('Aline Martins', '2001-01-08', 12),
('Gustavo Vieira', '1998-03-03', 13),
('Isabela Pereira', '2000-08-07', 14),
('Rafaela Santos', '1997-11-23', 15),
('Paulo Mendes', '2002-04-19', 16),
('Silvia Costa', '1999-09-25', 17),
('Thiago Alves', '2001-05-30', 18),
('Luiza Fernandes', '1998-12-05', 19),
('Bruno Oliveira', '2000-02-15', 20);


INSERT INTO Professor (nome, especialidade, salario) VALUES
('Maria Silva', 'Matemática', 3500.00),
('José Santos', 'Física', 3800.00),
('Ana Souza', 'História', 3200.00),
('Pedro Almeida', 'Química', 3600.00),
('Carla Oliveira', 'Biologia', 3400.00);


INSERT INTO Disciplina (nome, carga_horaria, professor_id, turma_id) VALUES
('Matemática Básica', 60, 1),
('Física Geral', 80, 2),
('História do Brasil', 40, 3),
('Química Orgânica', 70, 4),
('Biologia Celular', 65, 5);

INSERT INTO Turma (nome, ano, periodo) VALUES
('Turma A', 2022, 'Primeiro Semestre'),
('Turma B', 2022, 'Segundo Semestre'),
('Turma C', 2023, 'Primeiro Semestre'),
('Turma D', 2023, 'Segundo Semestre'),
('Turma E', 2024, 'Primeiro Semestre');


INSERT INTO Matricula (aluno_id, disciplina_id, nota) VALUES
(1, 1, 8.5),
(2, 2, 7.0),
(3, 3, 9.0),
(4, 4, 8.0),
(5, 5, 8.5),
(6, 1, 7.0),
(7, 2, 9.0),
(8, 3, 8.0),
(9, 4, 8.5),
(10, 5, 7.0),
(11, 1, 9.0),
(12, 2, 8.0),
(13, 3, 8.5),
(14, 4, 7.0),
(15, 5, 9.0),
(16, 1, 8.0),
(17, 2, 8.5),
(18, 3, 7.0),
(19, 4, 9.0),
(20, 5, 8.0);


