CREATE TABLE CLIENTE (
    CPF INTEGER PRIMARY KEY,
    NOME VARCHAR(20) NOT NULL,
    ENDERECO VARCHAR(50),
    CIDADE VARCHAR(20),
    TELEFONE INTEGER NOT NULL,
    RG VARCHAR(20),
    DATA_INSCRICAO DATE,
    PONTOS_FIDELIDADE INTEGER
);

CREATE TABLE CATEGORIA (
    COD_CATEGORIA INTEGER PRIMARY KEY,
    CATEGORIA VARCHAR(20) NOT NULL
);

CREATE TABLE CARRO (
    PLACA_CARRO VARCHAR(15) PRIMARY KEY,
    MARCA VARCHAR(15) NOT NULL,
    COD_CATEGORIA INTEGER REFERENCES CATEGORIA
);

CREATE TABLE SEGURO (
    ID_SEGURO INTEGER PRIMARY KEY,
    TIPO VARCHAR(20) NOT NULL
);

CREATE TABLE LOCACAO (
    COD_LOCACAO INTEGER PRIMARY KEY,
    DATA_LOCACAO DATE NOT NULL,
    DATA_DEVOLUCAO DATE NOT NULL,
    PRECO_DIARIA NUMBER(4,2) NOT NULL,
    VALOR_TOTAL NUMBER(5,2) NOT NULL,
    CARTAO_CLI INTEGER,
    CPF_CLIENTE INTEGER REFERENCES CLIENTE,
    PLACA_CARRO INTEGER REFERENCES CARRO
);

CREATE TABLE SEGURO_LOCACAO (
    ID INTEGER PRIMARY KEY,
    ID_SEGURO INTEGER REFERENCES SEGURO,
    COD_LOCACAO INTEGER REFERENCES LOCACAO
);