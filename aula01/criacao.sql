create or replicate database fatec;

use fatec;

show databases;

sudo apt update && sudo apt install mariadb-server -y


sudo service mysql start

sudo mysql -u root -p

#se ele pedir senha apenas pressione ENTER


CREATE DATABASE trabaio1;
USE trabaio1;


-- Criando a tabela clientes
CREATE TABLE clientes (
    id_cliente INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    telefone VARCHAR(15),
    data_cadastro DATE NOT NULL,
    ativo BOOLEAN NOT NULL
);

-- Criando a tabela funcionarios
CREATE TABLE funcionarios (
    id_funcionario INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nome_completo VARCHAR(150) NOT NULL,
    cpf VARCHAR(14) NOT NULL UNIQUE,
    data_nascimento DATE NOT NULL,
    cargo VARCHAR(50) NOT NULL,
    salario DECIMAL(10,2) UNSIGNED NOT NULL,
    data_admissao DATE NOT NULL,
    data_demissao DATE,
    endereco VARCHAR(200),
    telefone VARCHAR(15),
    email VARCHAR(100) NOT NULL UNIQUE,
    ativo BOOLEAN NOT NULL
);

-- Criando a tabela livros
CREATE TABLE livros (
    id_livro INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    autor VARCHAR(150) NOT NULL,
    genero VARCHAR(50),
    editora VARCHAR(100),
    ano_publicacao YEAR,
    isbn VARCHAR(20) NOT NULL UNIQUE,
    paginas SMALLINT UNSIGNED,
    idioma VARCHAR(30),
    edicao TINYINT UNSIGNED,
    preco DECIMAL(8,2) UNSIGNED NOT NULL,
    quantidade_estoque SMALLINT UNSIGNED NOT NULL,
    data_aquisicao DATE NOT NULL,
    disponivel BOOLEAN NOT NULL,
    descricao TEXT,
    capa_url VARCHAR(255)
);

-- Criando a tabela veiculos
CREATE TABLE veiculos (
    id_veiculo INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(50) NOT NULL,
    modelo VARCHAR(100) NOT NULL,
    ano_fabricacao YEAR NOT NULL,
    ano_modelo YEAR NOT NULL,
    cor VARCHAR(30),
    placa VARCHAR(10) NOT NULL UNIQUE,
    chassi VARCHAR(20) NOT NULL UNIQUE,
    quilometragem INT UNSIGNED NOT NULL,
    tipo_combustivel ENUM('gasolina', 'álcool', 'diesel', 'flex', 'elétrico') NOT NULL,
    preco DECIMAL(10,2) UNSIGNED NOT NULL,
    data_entrada DATE NOT NULL,
    disponivel BOOLEAN NOT NULL,
    descricao TEXT,
    numero_portas TINYINT UNSIGNED,
    cambio ENUM('manual', 'automático'),
    airbag BOOLEAN NOT NULL,
    ar_condicionado BOOLEAN NOT NULL,
    direcao_hidraulica BOOLEAN NOT NULL,
    vidro_eletrico BOOLEAN NOT NULL,
    tipo_veiculo ENUM('carro', 'moto', 'caminhão', 'ônibus', 'outros'),
    url_foto VARCHAR(255)
);

-- Criando a tabela projetos
CREATE TABLE projetos (
    id_projeto INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nome_projeto VARCHAR(200) NOT NULL,
    descricao TEXT NOT NULL,
    responsavel VARCHAR(150) NOT NULL,
    equipe VARCHAR(500),
    data_inicio DATE NOT NULL,
    data_prevista_termino DATE NOT NULL,
    data_termino_real DATE,
    status ENUM('planejamento', 'em andamento', 'pausado', 'cancelado', 'concluído') NOT NULL,
    orcamento_total DECIMAL(12,2) UNSIGNED NOT NULL,
    gasto_atual DECIMAL(12,2) UNSIGNED NOT NULL,
    prioridade ENUM('baixa', 'média', 'alta', 'urgente') NOT NULL,
    cliente VARCHAR(150) NOT NULL,
    setor ENUM('TI', 'Marketing', 'RH', 'Financeiro', 'Operações', 'Outros') NOT NULL,
    risco ENUM('baixo', 'médio', 'alto') NOT NULL,
    dependencias VARCHAR(500),
    tecnologias VARCHAR(500),
    documentacao_url VARCHAR(255),
    reunioes_agendadas TINYINT UNSIGNED,
    tarefas_concluidas SMALLINT UNSIGNED,
    tarefas_pendentes SMALLINT UNSIGNED,
    feedback_cliente TEXT,
    observacoes TEXT,
    ativo BOOLEAN NOT NULL
);


SHOW TABLES;
