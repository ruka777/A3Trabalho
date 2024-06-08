create database a3;
CREATE TABLE ferramenta (
    id INT PRIMARY KEY,
    nome VARCHAR(200) NOT NULL,
    marca VARCHAR(100) NOT NULL,
    custo NUMERIC NOT NULL
);

CREATE TABLE amigo (
    id INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20) NOT NULL
);

CREATE TABLE emprestimo (
	id INT PRIMARY KEY,
	id_ferramenta INT NOT NULL,
	id_amigo INT NOT NULL,
    data_emprestimo DATE NOT NULL,
    data_devolucao DATE,
    FOREIGN KEY (id_ferramenta) REFERENCES ferramenta(id),
    FOREIGN KEY (id_amigo) REFERENCES amigo(id)
);
