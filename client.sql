-- Créez la table clients
CREATE TABLE clients (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100),
    prenom VARCHAR(100),
    adresse VARCHAR(255),
    numero_de_telephone VARCHAR(20)
);

-- Insérez des données dans la table
INSERT INTO clients (nom, prenom, adresse, numero_de_telephone)
VALUES
('Dupont', 'Jean', '123 Rue de la Ville, Paris', '0601020304'),
('Durand', 'Marie', '456 Rue de la Campagne, Lyon', '0708091011'),
('Martin', 'Paul', '789 Rue de la Montagne, Grenoble', '0611121314'),
('Leclerc', 'Alice', '100 Rue des Champs, Lille', '0601020305'),
('Bernard', 'Luc', '200 Rue des Fleurs, Strasbourg', '0708091012'),
('Thomas', 'Sophie', '300 Rue de la Plage, Nice', '0611121315'),
('Petit', 'Patrick', '400 Rue de la Foret, Toulouse', '0601020306'),
('Robert', 'Chloe', '500 Rue des Rêves, Nantes', '0708091013'),
('Richard', 'David', '600 Rue des Vignes, Bordeaux', '0611121316'),
('Durand', 'Valerie', '700 Rue des Monts, Rennes', '0601020307'),
('Dufour', 'Marc', '800 Rue des Villes, Montpellier', '0708091014'),
('Moreau', 'Julie', '900 Rue des Chateaux, Dijon', '0611121317'),
('Simon', 'Christophe', '1000 Rue des Prairies, Limoges', '0601020308'),
('Laurent', 'Sandrine', '1100 Rue des Lacs, Perpignan', '0708091015'),
('Michel', 'Philippe', '1200 Rue des Oiseaux, Tours', '0611121318'),
('Lefevre', 'Isabelle', '1300 Rue des Forets, Reims', '0601020309'),
('David', 'Daniel', '1400 Rue des Rivières, Le Havre', '0708091016'),
('Bertrand', 'Nathalie', '1500 Rue des Mers, Cergy', '0611121319'),
('Roux', 'Dominique', '1600 Rue des Océans, Troyes', '0601020310'),
('Vincent', 'Thierry', '1700 Rue des Continents, Brest', '0708091017');
