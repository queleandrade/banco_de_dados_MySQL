-- Buscar quantos gols um jogador específico fez por time
-- buscando pelo cpf
SELECT j.nome AS jogador, c.nome AS clube, SUM(e.gols) AS total_gols
FROM escalacao e
JOIN jogador j ON e.cpf_jogador = j.cpf
JOIN jogador_time jt ON e.cpf_jogador = jt.cpf_jogador AND e.cnpj_time_mandante = jt.cnpj_time
JOIN clube c ON jt.cnpj_time = c.cnpj
WHERE j.cpf = '10' 
GROUP BY j.nome, c.nome;

-- pelo nome
SELECT j.nome AS jogador, c.nome AS clube, SUM(e.gols) AS total_gols
FROM escalacao e
JOIN jogador j ON e.cpf_jogador = j.cpf
JOIN jogador_time jt ON e.cpf_jogador = jt.cpf_jogador AND e.cnpj_time_mandante = jt.cnpj_time
JOIN clube c ON jt.cnpj_time = c.cnpj
WHERE j.nome = 'A1' 
GROUP BY j.nome, c.nome;