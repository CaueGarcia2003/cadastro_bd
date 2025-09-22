CREATE TABLE usuarios (
	id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    sobrenome VARCHAR(100) NOT NULL,
    celular_email VARCHAR(150) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL,
    data_nascimento DATE NOT NULL,
    genero VARCHAR(20) CHECK (genero IN ('Feminino', 'Masculino', 'Personalizado')),
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

