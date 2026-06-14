-- 1. Artilheiro do campeonato

SELECT
    j.nome AS jogador,
    t.nome AS time,
    COUNT(*) AS gols
FROM campeonato.participacao_jog pj
JOIN campeonato.jogador j
    ON pj.fk_jogador = j.id_jogador
JOIN campeonato.time t
    ON j.fk_time = t.id_time
WHERE pj.fk_tipo_evento = 1
GROUP BY j.nome, t.nome
ORDER BY gols DESC
LIMIT 1;


-- 2. Jogador que recebeu mais cartões

SELECT
    j.nome AS jogador,
    t.nome AS time,
    COUNT(*) AS total_cartoes
FROM campeonato.participacao_jog pj
JOIN campeonato.jogador j
    ON pj.fk_jogador = j.id_jogador
JOIN campeonato.time t
    ON j.fk_time = t.id_time
WHERE pj.fk_tipo_evento IN (2,3)
GROUP BY j.nome, t.nome
ORDER BY total_cartoes DESC
LIMIT 1;


-- 3. Time com mais gols marcados

SELECT
    t.nome AS time,
    COUNT(*) AS gols
FROM campeonato.participacao_jog pj
JOIN campeonato.jogador j
    ON pj.fk_jogador = j.id_jogador
JOIN campeonato.time t
    ON j.fk_time = t.id_time
WHERE pj.fk_tipo_evento = 1
GROUP BY t.nome
ORDER BY gols DESC;


-- 4. Time com mais vitórias

SELECT
    t.nome AS time,
    COUNT(*) AS vitorias
FROM campeonato.partida p
JOIN campeonato.time t
ON (
    (p.fk_time_mandante = t.id_time AND p.placar_mandante > p.placar_visitante)
    OR
    (p.fk_time_visitante = t.id_time AND p.placar_visitante > p.placar_mandante)
)
GROUP BY t.nome
ORDER BY vitorias DESC;


-- 5. Partidas com mais gols

SELECT
    p.id_partida,
    tm.nome AS mandante,
    tv.nome AS visitante,
    p.placar_mandante,
    p.placar_visitante,
    (p.placar_mandante + p.placar_visitante) AS total_gols,
    p.data
FROM campeonato.partida p
JOIN campeonato.time tm
    ON p.fk_time_mandante = tm.id_time
JOIN campeonato.time tv
    ON p.fk_time_visitante = tv.id_time
ORDER BY total_gols DESC;

-- 6. Jogadores do Palmeiras

SELECT
    j.nome,
    j.posicao
FROM campeonato.jogador j
JOIN campeonato.time t
    ON j.fk_time = t.id_time
WHERE t.nome = 'Palmeiras'
ORDER BY j.nome;


-- 7. Estádios com capacidade superior a 50 mil pessoas

SELECT
    cidade,
    endereco,
    capacidade
FROM campeonato.estadio
WHERE capacidade > 50000
ORDER BY capacidade DESC;


-- 8. Quantidade de jogadores por posição

SELECT
    posicao,
    COUNT(*) AS quantidade
FROM campeonato.jogador
GROUP BY posicao
ORDER BY quantidade DESC;


-- 9. Todos os eventos da partida 1

SELECT
    j.nome AS jogador,
    te.descricao AS evento,
    pj.minuto
FROM campeonato.participacao_jog pj
JOIN campeonato.jogador j
    ON pj.fk_jogador = j.id_jogador
JOIN campeonato.tipo_evento te
    ON pj.fk_tipo_evento = te.id_tipo_evento
WHERE pj.fk_partida = 1
ORDER BY pj.minuto;


-- 10. Quantidade de jogadores por time

SELECT
    t.nome AS time,
    COUNT(j.id_jogador) AS jogadores
FROM campeonato.time t
JOIN campeonato.jogador j
    ON t.id_time = j.fk_time
GROUP BY t.nome
ORDER BY jogadores DESC;