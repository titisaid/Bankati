-- Table des clients
CREATE TABLE IF NOT EXISTS clients (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(100) NOT NULL,
    prenom VARCHAR(100) NOT NULL,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    role VARCHAR(20) NOT NULL,
    created_at DATE NOT NULL,
    telephone VARCHAR(20),
    adresse TEXT,
    actif BOOLEAN DEFAULT true,
    CONSTRAINT uk_username UNIQUE (username)
);

-- Table des comptes
CREATE TABLE IF NOT EXISTS comptes (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    id_client BIGINT NOT NULL,
    solde DECIMAL(15,2) NOT NULL DEFAULT 0.0,
    devise VARCHAR(10) NOT NULL,
    date_creation DATE NOT NULL,
    CONSTRAINT fk_client FOREIGN KEY (id_client) REFERENCES clients(id),
    CONSTRAINT uk_client_id UNIQUE (id_client)
);

-- Index pour améliorer les performances
CREATE INDEX idx_client_username ON clients(username);
CREATE INDEX idx_compte_client ON comptes(id_client); 