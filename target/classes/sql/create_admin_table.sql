-- Création de la table admins
CREATE TABLE IF NOT EXISTS admins (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    user_id BIGINT NOT NULL,
    telephone VARCHAR(15),
    adresse TEXT,
    departement VARCHAR(100),
    date_creation TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Insertion d'un administrateur de test (à adapter avec vos données)
INSERT INTO admins (user_id, telephone, adresse, departement) 
VALUES (1, '0600000000', 'Adresse de l''administrateur', 'Direction Générale'); 