-- Mostrar os árbritos que são tendenciosos para um time, ou seja, todos os jogos que ele 
-- apitou um time ganhou

WITH jogos_que_arbitrou AS (
    SELECT 
        pa.rg_arbitro,
        pa.cnpj_time_mandante,
        pa.cnpj_time_visitante,
        p.gols_mandante,
        p.gols_visitante
    FROM 
        federacao_clube.partida_arbitro pa
    JOIN 
        federacao_clube.partida p 
    ON 
        pa.idcampeonato = p.idcampeonato 
        AND pa.cnpj_time_mandante = p.cnpj_time_mandante 
        AND pa.cnpj_time_visitante = p.cnpj_time_visitante
),
resultado_jogos AS (
    SELECT 
        rg_arbitro,
        COUNT(*) AS jogos,
        SUM(CASE 
            WHEN (cnpj_time_mandante = pa.cnpj_time_mandante AND gols_mandante > gols_visitante) OR 
                 (cnpj_time_visitante = pa.cnpj_time_visitante AND gols_visitante > gols_mandante)
            THEN 1 
            ELSE 0 
        END) AS vitórias
    FROM 
        jogos_que_arbitrou pa
    GROUP BY 
        rg_arbitro
    HAVING 
        COUNT(*) = SUM(CASE 
            WHEN (cnpj_time_mandante = pa.cnpj_time_mandante AND gols_mandante > gols_visitante) OR 
                 (cnpj_time_visitante = pa.cnpj_time_visitante AND gols_visitante > gols_mandante)
            THEN 1 
            ELSE 0 
        END)
),
tendenciosos AS (
    SELECT 
        rg_arbitro,
        jogos,
        vitórias
    FROM 
        resultado_jogos
)
SELECT 
    a.rg,
    a.nome,
    a.tipo_habilitacao,
    a.filiacao_materna,
    t.jogos,
    t.vitórias
FROM 
    federacao_clube.arbitro a
JOIN 
    tendenciosos t ON a.rg = t.rg_arbitro;