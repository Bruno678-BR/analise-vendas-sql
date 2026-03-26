--Criação do Database
CREATE DATABASE analise_pedidos;
USE analise_pedidos;

--Criação da tabela de clientes
CREATE TABLE clientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) not null,
    cidade VARCHAR(100) not null
);

--Criação da tabela de pedidos
CREATE TABLE pedidos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cliente_id INT,
    valor DECIMAL(10,2),
    data_pedido DATE,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

--Criação da tabela de produtos
CREATE TABLE produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    preco DECIMAL(10,2)
);