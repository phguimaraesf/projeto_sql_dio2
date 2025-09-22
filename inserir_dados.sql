-- Inserir dados na tabela de Clientes
INSERT INTO Clientes (Nome, Endereco, Telefone) 
VALUES
    ('João Silva', 'Rua A, 123', '987654321'),
    ('Maria Oliveira', 'Rua B, 456', '912345678');

-- Inserir dados na tabela de Veículos
INSERT INTO Veiculos (Modelo, Ano, Placa, Cor, ID_Cliente) 
VALUES
    ('Fusca', 1978, 'ABC-1234', 'Azul', 1),
    ('Gol', 2020, 'XYZ-5678', 'Preto', 2);

-- Inserir dados na tabela de Mecânicos
INSERT INTO Mecanicos (Nome, Endereco, Especialidade) 
VALUES
    ('Carlos Souza', 'Rua C, 789', 'Motorista'),
    ('Ana Costa', 'Rua D, 1011', 'Eletrônica');

-- Inserir dados na tabela de Ordens de Serviço (OS)
INSERT INTO Ordem_Servico (Numero_OS, Data_Emissao, Valor_Total, Status, Data_Conclusao, ID_Veiculo, ID_Mecanico)
VALUES
    (1, '2023-09-21', 350.00, 'Em andamento', '2023-09-23', 1, 1),
    (2, '2023-09-22', 150.00, 'Pendente', NULL, 2, 2);

-- Inserir dados na tabela de Serviços
INSERT INTO Servicos (Descricao, Valor, ID_OS)
VALUES
    ('Troca de óleo', 50.00, 1),
    ('Alinhamento', 100.00, 2);

-- Inserir dados na tabela de Peças
INSERT INTO Pecas (Nome, Valor, ID_OS)
VALUES
    ('Filtro de óleo', 30.00, 1),
    ('Pneu', 120.00, 2);

