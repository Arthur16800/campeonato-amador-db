-- ===========================================
-- CRIAÇÃO DO SCHEMA
-- ===========================================

CREATE SCHEMA campeonato;

SET search_path TO campeonato;

-- ===========================================
-- TABELA TECNICO
-- ===========================================

CREATE TABLE tecnico (
    id_tecnico SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20) NOT NULL
);

-- ===========================================
-- TABELA TIME
-- ===========================================

CREATE TABLE time (
    id_time SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    fk_tecnico INT REFERENCES tecnico(id_tecnico)
);

-- ===========================================
-- TABELA JOGADOR
-- ===========================================

CREATE TABLE jogador (
    id_jogador SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    posicao VARCHAR(50) NOT NULL,
    data_nascimento DATE NOT NULL,
    fk_time INT NOT NULL REFERENCES time(id_time)
);

-- ===========================================
-- TABELA TELEFONE
-- ===========================================

CREATE TABLE telefone (
    id_telefone SERIAL PRIMARY KEY,
    numero VARCHAR(20) NOT NULL,
    fk_jogador INT NOT NULL REFERENCES jogador(id_jogador)
);

-- ===========================================
-- TABELA ESTADIO
-- ===========================================

CREATE TABLE estadio (
    id_estadio SERIAL PRIMARY KEY,
    endereco VARCHAR(200) NOT NULL,
    cep VARCHAR(10) NOT NULL,
    uf CHAR(2) NOT NULL,
    cidade VARCHAR(30) NOT NULL,
    capacidade INT NOT NULL
);

-- ===========================================
-- TABELA TIPO_EVENTO
-- ===========================================

CREATE TABLE tipo_evento (
    id_tipo_evento SERIAL PRIMARY KEY,
    descricao VARCHAR(30) NOT NULL
);

-- ===========================================
-- TABELA PARTIDA
-- ===========================================

CREATE TABLE partida (
    id_partida SERIAL PRIMARY KEY,
    fk_estadio INT NOT NULL REFERENCES estadio(id_estadio),
    fk_time_mandante INT NOT NULL REFERENCES time(id_time),
    fk_time_visitante INT NOT NULL REFERENCES time(id_time),
    placar_mandante INT NOT NULL,
    placar_visitante INT NOT NULL,
    data DATE NOT NULL,
    horario TIME NOT NULL
);

-- ===========================================
-- TABELA PARTICIPACAO_TIME
-- ===========================================

CREATE TABLE participacao_time (
    id_participacao_time SERIAL PRIMARY KEY,
    fk_time INT NOT NULL REFERENCES time(id_time),
    fk_partida INT NOT NULL REFERENCES partida(id_partida),
    tipo_participacao VARCHAR(20) NOT NULL
);

-- ===========================================
-- TABELA PARTICIPACAO_JOG
-- ===========================================

CREATE TABLE participacao_jog (
    id_participacao SERIAL PRIMARY KEY,
    fk_partida INT NOT NULL REFERENCES partida(id_partida),
    fk_jogador INT NOT NULL REFERENCES jogador(id_jogador),
    fk_tipo_evento INT REFERENCES tipo_evento(id_tipo_evento),
    minuto INT
);

