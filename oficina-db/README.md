# Projeto: Banco de Dados Oficina Mecânica (3FN)

## Descrição

Este projeto implementa um esquema lógico simples para uma oficina mecânica,
normalizado até a 3ª Forma Normal (3FN).

Entidades principais:

- Cliente
- Veículo
- Mecânico
- Serviço
- Ordem de Serviço
- Pagamento

Relacionamentos:

- Cliente possui Veículos
- Veículo possui Ordens de Serviço
- Ordem de Serviço possui Serviços
- Ordem de Serviço possui Pagamento

## Estrutura

```
oficina-db
 ┣ schema.sql
 ┣ inserts.sql
 ┣ queries.sql
 ┗ README.md
```

## Como usar

1. Execute o schema.sql
2. Execute o inserts.sql
3. Teste com queries.sql
