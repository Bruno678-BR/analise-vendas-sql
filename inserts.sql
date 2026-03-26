--Inserindo registros na tabela clientes
INSERT INTO clientes (nome, cidade) VALUES
('Ana', 'Porto Alegre'),
('Bruno', 'São Paulo'),
('Carlos', 'Rio de Janeiro'),
('Daniela', 'Curitiba'),
('Eduardo', 'Belo Horizonte');

--Inserindo registros na tabela pedidos
INSERT INTO pedidos (cliente_id, valor, data_pedido) VALUES
(1, 100, '2024-01-10'),
(1, 200, '2024-01-15'),
(2, 150, '2024-02-10'),
(3, 300, '2024-02-12'),
(3, 100, '2024-03-01'),
(4, 80, '2024-03-05');

--Inserindo registros na tabela produtos
INSERT INTO produtos (nome, preco) VALUES
('Notebook', 3000),
('Mouse', 100),
('Teclado', 200),
('Monitor', 1200),
('Headset', 250);