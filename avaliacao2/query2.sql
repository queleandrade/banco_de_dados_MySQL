-- Exibir a tabela dos campeonatos registrados do campeão ao último colocado
-- Subconsulta para calcular os gols de cada time em cada partida
WITH placar AS (
    SELECT 
        p.idcampeonato,
        p.cnpj_time_mandante,
        p.cnpj_time_visitante,
        SUM(CASE WHEN e.cpf_jogador IN (SELECT cpf_jogador FROM jogador_time WHERE cnpj_time = p.cnpj_time_mandante) THEN e.gols ELSE 0 END) AS gols_mandante,
        SUM(CASE WHEN e.cpf_jogador IN (SELECT cpf_jogador FROM jogador_time WHERE cnpj_time = p.cnpj_time_visitante) THEN e.gols ELSE 0 END) AS gols_visitante
    FROM 
        federacao_clube.partida p
    JOIN 
        escalacao e ON p.idcampeonato = e.idcampeonato
    GROUP BY 
        p.idcampeonato, p.cnpj_time_mandante, p.cnpj_time_visitante
),
-- Subconsulta para calcular os pontos de cada time em cada partida
pontos AS (
    SELECT
        idcampeonato,
        cnpj_time_mandante,
        cnpj_time_visitante,
        CASE
            WHEN gols_mandante > gols_visitante THEN 3
            WHEN gols_mandante < gols_visitante THEN 0
            ELSE 1
        END AS pontos_mandante,
        CASE
            WHEN gols_mandante < gols_visitante THEN 3
            WHEN gols_mandante > gols_visitante THEN 0
            ELSE 1
        END AS pontos_visitante
    FROM 
        placar
),
-- Subconsulta para agregar os pontos de cada time ao longo do campeonato
tabela AS (
    SELECT
        cnpj_time_mandante AS cnpj,
        SUM(pontos_mandante) AS pontos
    FROM 
        pontos
    GROUP BY 
        cnpj_time_mandante

    UNION ALL

    SELECT
        cnpj_time_visitante AS cnpj,
        SUM(pontos_visitante) AS pontos
    FROM 
        pontos
    GROUP BY 
        cnpj_time_visitante
)
-- Consulta final para exibir a tabela do campeonato
SELECT
    c.nome AS time,
    SUM(t.pontos) AS pontos_totais
FROM 
    tabela t
JOIN 
    clube c ON t.cnpj = c.cnpj
GROUP BY 
    c.nome
ORDER BY 
    pontos_totais DESC;
