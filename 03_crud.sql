-- CREATE
INSERT INTO campeonato.jogador
(nome, posicao, data_nascimento, fk_time)
VALUES
('Endrick', 'Atacante', '2006-07-21', 47);

-- READ
SELECT
    j.nome AS jogador,
    j.posicao,
    t.nome AS time
FROM campeonato.jogador j
JOIN campeonato.time t
    ON j.fk_time = t.id_time
WHERE j.nome = 'Endrick';

-- UPDATE

UPDATE campeonato.jogador
SET posicao = 'Centroavante'
WHERE nome = 'Endrick';

SELECT *
FROM campeonato.jogador
WHERE nome = 'Endrick';

-- DELETE
DELETE FROM campeonato.jogador
WHERE nome = 'Endrick';

SELECT *
FROM campeonato.jogador
WHERE nome = 'Endrick';