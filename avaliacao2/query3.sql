-- Exibir jogadores que fizeram gols no ano anterior ao último campeonato mas estão sem clube.

WITH ano_anterior AS (
    SELECT 
        MAX(c.edicao) - 1 AS ano_anterior
    FROM 
        campeonato c
),
gols_ano_anterior AS (
    SELECT 
        e.cpf_jogador,
        SUM(e.gols) AS total_gols
    FROM 
        escalacao e
    JOIN 
        partida p ON e.idcampeonato = p.idcampeonato
    JOIN 
        ano_anterior a ON p.idcampeonato = (
            SELECT idcampeonato 
            FROM campeonato 
            WHERE edicao = a.ano_anterior
        )
    GROUP BY 
        e.cpf_jogador
),
jogadores_sem_clube AS (
    SELECT 
        j.cpf AS cpf_jogador,
        j.nome AS jogador
    FROM 
        jogador j
    LEFT JOIN 
        jogador_time jt ON j.cpf = jt.cpf_jogador
    WHERE 
        jt.cpf_jogador IS NULL
)
SELECT 
    jsc.jogador,
    g.total_gols
FROM 
    gols_ano_anterior g
JOIN 
    jogadores_sem_clube jsc ON g.cpf_jogador = jsc.cpf_jogador
ORDER BY 
    g.total_gols DESC;