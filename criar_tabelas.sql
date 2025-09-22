-- Tabela de Clientes
CREATE TABLE Clientes (
    ID_Cliente INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Endereco VARCHAR(255),
    Telefone VARCHAR(20)
);

-- Tabela de Veículos
CREATE TABLE Veiculos (
    ID_Veiculo INT AUTO_INCREMENT PRIMARY KEY,
    Modelo VARCHAR(50),
    Ano INT,
    Placa VARCHAR(10),
    Cor VARCHAR(20),
    ID_Cliente INT,
    FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID_Cliente)
);

-- Tabela de Mecânicos
CREATE TABLE Mecanicos (
    ID_Mecanico INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Endereco VARCHAR(255),
    Especialidade VARCHAR(50)
);

-- Tabela de Ordens de Serviço (OS)
CREATE TABLE Ordem_Servico (
    ID_OS INT AUTO_INCREMENT PRIMARY KEY,
    Numero_OS INT,
    Data_Emissao DATE,
    Valor_Total DECIMAL(10,2),
    Status VARCHAR(20),
    Data_Conclusao DATE,
    ID_Veiculo INT,
    ID_Mecanico INT,
    FOREIGN KEY (ID_Veiculo) REFERENCES Veiculos(ID_Veiculo),
    FOREIGN KEY (ID_Mecanico) REFERENCES Mecanicos(ID_Mecanico)
);

-- Tabela de Serviços
CREATE TABLE Servicos (
    ID_Servico INT AUTO_INCREMENT PRIMARY KEY,
    Descricao VARCHAR(255),
    Valor DECIMAL(10,2),
    ID_OS INT,
    FOREIGN KEY (ID_OS) REFERENCES Ordem_Servico(ID_OS)
);

-- Tabela de Peças
CREATE TABLE Pecas (
    ID_Peca INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Valor DECIMAL(10,2),
    ID_OS INT,
    FOREIGN KEY (ID_OS) REFERENCES Ordem_Servico(ID_OS)
);

-- Tabela de Referência de Mão-de-Obra
CREATE TABLE Tabela_Referencia_Mao_Obra (
    ID_Tabela INT AUTO_INCREMENT PRIMARY KEY,
    Descricao VARCHAR(255),
    Valor_Unitario DECIMAL(10,2)
);
