--Consulta: Quantidade de clientes por cidade
SELECT cidade, COUNT(*) AS total_clientes
FROM clientes
GROUP BY cidade;

--Consulta: Total de vendas por região
SELECT clientes.cidade, SUM(pedidos.valor) AS total_vendas
FROM clientes
JOIN pedidos ON clientes.id = pedidos.cliente_id
GROUP BY clientes.cidade;

--Consulta:Media de gasto por cliente
SELECT clientes.nome, AVG(pedidos.valor) AS media_gasto
FROM clientes
JOIN pedidos ON clientes.id = pedidos.cliente_id
GROUP BY clientes.nome;

--Consulta:Identificação de clientes com maior consumo
SELECT clientes.nome, SUM(pedidos.valor) AS total_gasto
FROM clientes
JOIN pedidos ON clientes.id = pedidos.cliente_id
GROUP BY clientes.nome
HAVING SUM(pedidos.valor) > (
    SELECT AVG(valor) FROM pedidos
);

--Consulta:Total de pedidos por cidade(Incluindo cidades sem pedidos)
SELECT clientes.cidade, COUNT(pedidos.id) AS total_pedidos
FROM clientes
LEFT JOIN pedidos ON clientes.id = pedidos.cliente_id
GROUP BY clientes.cidade;