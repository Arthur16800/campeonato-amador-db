# Sistema de Campeonato Amador

Projeto desenvolvido para a disciplina de Banco de Dados, com o objetivo de modelar, implementar e manipular um banco de dados responsável pelo gerenciamento de um campeonato de futebol amador.

---

# Cenário

Uma liga de futebol amador busca modernizar o gerenciamento de suas competições por meio de um sistema capaz de centralizar as principais informações do campeonato. Atualmente, o controle é realizado de forma manual, dificultando o acompanhamento das equipes, dos profissionais envolvidos, dos atletas e dos resultados das partidas.

Para solucionar esse problema, foi proposto um banco de dados que organize o cadastro das equipes, de seus respectivos técnicos e dos jogadores, mantendo também informações sobre os estádios onde as partidas são realizadas e o calendário da competição.

Durante cada jogo, o sistema registra acontecimentos importantes, como gols e cartões, permitindo acompanhar o desempenho individual dos jogadores e das equipes ao longo do campeonato. Além disso, a associação entre técnicos, times, atletas e partidas possibilita uma visão completa da competição e facilita a consulta das informações armazenadas.

Com os dados estruturados e integrados, torna-se possível gerar relatórios estatísticos, identificar artilheiros, equipes com melhor desempenho, jogadores com maior número de cartões e diversas outras informações relevantes para a administração do campeonato. Dessa forma, o projeto oferece uma solução organizada, confiável e eficiente para o gerenciamento de todas as etapas da competição.

---

# Modelagem Conceitual

A modelagem conceitual foi desenvolvida utilizando o Modelo Entidade-Relacionamento (MER), identificando todas as entidades, atributos e relacionamentos necessários para representar o cenário proposto.

## DER

<p align="center">
    <img src="images/der.jpg" width="900">
</p>

---

# Modelagem Lógica

Após a modelagem conceitual, foi elaborado o modelo lógico contendo as tabelas, atributos, chaves primárias e chaves estrangeiras que compõem o banco de dados.

## Modelo Lógico

<p align="center">
    <img src="images/modelo_logico.jpg" width="900">
</p>

---

# Modelagem Física

A implementação foi realizada utilizando PostgreSQL, criando um schema denominado **campeonato**.

Foram definidas todas as tabelas, seus tipos de dados, chaves primárias, chaves estrangeiras e relacionamentos.

## Criação das tabelas

<p align="center">
    <img src="images/create_tables.jpg" width="900">
</p>

## Inserção dos dados

<p align="center">
    <img src="images/inserts.jpg" width="900">
</p>

Foram inseridos registros para:

- 50 Técnicos
- 50 Times
- 50 Jogadores
- 50 Telefones
- 50 Estádios
- 50 Partidas
- 100 Participações dos Times
- 150 Eventos dos Jogadores
- 3 Tipos de Eventos

---

# CRUD

## CREATE

Inserção de novos registros no banco de dados.

<p align="center">
    <img src="images/CREATE.jpg" width="900">
</p>

---

## READ

Consulta de informações utilizando relacionamentos entre as tabelas.

<p align="center">
    <img src="images/SELECT.jpg" width="900">
</p>

---

## UPDATE

Atualização de registros existentes.

<p align="center">
    <img src="images/UPDATE.jpg" width="900">
</p>

### Verificação da atualização

<p align="center">
    <img src="images/UPDATE_CHECK.png" width="900">
</p>

---

## DELETE

Exclusão de registros do banco de dados.

<p align="center">
    <img src="images/DELETE.jpg" width="900">
</p>

### Verificação da exclusão

<p align="center">
    <img src="images/DELETE_CHECK.jpg" width="900">
</p>

---

# Relatórios

Foram desenvolvidas consultas SQL utilizando SELECT, JOIN, WHERE, GROUP BY e ORDER BY, demonstrando os relacionamentos entre as tabelas e a extração de informações relevantes do campeonato.

## Artilheiro do campeonato

<p align="center">
    <img src="images/Artilheiro do campeonato.png" width="900">
</p>

---

## Jogador que recebeu mais cartões

<p align="center">
    <img src="images/Jogador que recebeu mais cartões.png" width="900">
</p>

---

## Time com mais gols marcados

<p align="center">
    <img src="images/Time com mais gols marcados.png" width="900">
</p>

---

## Time com mais vitórias

<p align="center">
    <img src="images/Time com mais vitórias.png" width="900">
</p>

---

## Partidas com mais gols

<p align="center">
    <img src="images/Partidas com mais gols.png" width="900">
</p>

---

## Jogadores do Liverpool

<p align="center">
    <img src="images/Jogadores do Liverpool.png" width="900">
</p>

---

## Estádios com capacidade superior a 50 mil pessoas

<p align="center">
    <img src="images/Estádios com capacidade superior a 50 mil pessoas.png" width="900">
</p>

---

## Quantidade de jogadores por posição

<p align="center">
    <img src="images/Quantidade de jogadores por posicao.png" width="900">
</p>

---

## Quantidade de jogadores por time

<p align="center">
    <img src="images/Quantidade de jogadores por time.png" width="900">
</p>

---

## Todos os eventos da partida 1

<p align="center">
    <img src="images/Todos os eventos da partida 1.png" width="900">
</p>

---

# Tecnologias Utilizadas

- PostgreSQL
- Supabase
- GitHub


---

# Conclusão

O projeto permitiu aplicar os conceitos de modelagem conceitual, lógica e física de banco de dados, além da utilização de chaves primárias, chaves estrangeiras, relacionamentos, normalização e consultas SQL.

Também foram implementadas operações CRUD e relatórios estatísticos que demonstram a utilização prática do banco de dados em um cenário de gerenciamento de campeonatos de futebol amador.
