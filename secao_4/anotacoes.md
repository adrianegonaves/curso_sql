# Comandos do CRUD :question:
São as ações mais utilizadas em aplicações 

Create = criar/ inserir (insert)
Read = ler dados (select)
Update = atualizar dados (update)
Delete = deletar/ remover dados ( delete)


## Seleção específica
SELECT coluna1, coluna2 FROM <tabela>

## Inserindo dados 
INSERTO INTO <tabela> (<coluna, ...>) VALUES (< VALORES, ...>)

where (UPDATE e DELETE)

Determina quais registros vamos atualizar
Exemplo:
WHERE id = 1

## Atualizando dados 
UPDATE tabela SET <coluna = valor> WHERE <condição>

## Deletando dados 

DELETE FROM <tabela> WHERE <condições>