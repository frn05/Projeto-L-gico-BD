# Projeto: Star Schema - Professores

## Descrição

Este projeto apresenta a modelagem dimensional utilizando o esquema em estrela (Star Schema),
com foco na análise dos dados dos professores e disciplinas ofertadas.

A tabela fato centraliza as métricas relacionadas à oferta de disciplinas por professor,
enquanto as tabelas dimensão armazenam os atributos descritivos relacionados a:

- Professores
- Cursos
- Departamentos
- Disciplinas
- Tempo

Foi adicionada a dimensão tempo para permitir análises temporais sobre a oferta
das disciplinas e cursos ao longo dos períodos letivos.

## Estrutura

```
star-schema-professor
 ┣ schema.sql
 ┣ inserts.sql
 ┣ queries.sql
 ┗ README.md
```

## Como usar

1. Execute o schema.sql
2. Execute o inserts.sql
3. Teste com queries.sql
