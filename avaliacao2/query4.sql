-- exibir o placar de todos os jogos do campeonato, somando os gols do mandante e do visitante

WITH placar AS (
    SELECT 
        p.idcampeonato,
        p.cnpj_time_mandante,
        p.cnpj_time_visitante,
        p.gols_mandante,
        p.gols_visitante
    FROM 
        federacao_clube.partida p
),
gols_totais AS (
    SELECT 
        idcampeonato,
        cnpj_time_mandante AS time,
        SUM(gols_mandante) AS gols_mandante,
        SUM(gols_visitante) AS gols_visitante,
        SUM(gols_mandante + gols_visitante) AS total_gols
    FROM 
        placar
    GROUP BY 
        idcampeonato, 
        cnpj_time_mandante
    UNION ALL
    SELECT 
        idcampeonato,
        cnpj_time_visitante AS time,
        SUM(gols_visitante) AS gols_mandante,
        SUM(gols_mandante) AS gols_visitante,
        SUM(gols_visitante + gols_mandante) AS total_gols
    FROM 
        placar
    GROUP BY 
        idcampeonato, 
        cnpj_time_visitante
)
SELECT 
    c.nome AS time,
    COALESCE(SUM(g.gols_mandante), 0) AS gols_mandante,
    COALESCE(SUM(g.gols_visitante), 0) AS gols_visitante,
    COALESCE(SUM(g.total_gols), 0) AS total_gols
FROM 
    gols_totais g
JOIN 
    federacao_clube.clube c ON g.time = c.cnpj
GROUP BY 
    c.nome
ORDER BY 
    total_gols DESC;