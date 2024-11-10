CREATE DATABASE javaweb;

USE javaweb;

CREATE TABLE cafeteria (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombreMenu VARCHAR(100) NOT NULL,
    descripcionMenu TEXT NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    tipoMenu VARCHAR(50) NOT NULL
);

INSERT INTO cafeteria (nombreMenu, descripcionMenu, precio, tipoMenu)
VALUES 
('Desayuno Continental', 'Incluye jugo de naranja, huevos fritos y café con pan.', 2.50, 'Desayuno'),
('Ensalada César', 'Lechuga, pollo a la parrilla, aderezo César y crutones.', 3.50, 'Almuerzo'),
('Limonada', 'Bebida refrescante de limón natural.', 1.00, 'Bebida');

CREATE TABLE buses (
  id_bus bigint unsigned NOT NULL AUTO_INCREMENT,
  ruta varchar(100) DEFAULT NULL,
  paradas varchar(250) DEFAULT NULL,
  horario varchar(32) DEFAULT NULL,
  PRIMARY KEY (id_bus),
  UNIQUE KEY id_bus (id_bus)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO buses VALUES 
(1, 'ruta 1-Quitumbe', 'La Bolivia, Universidades, Tejar, La mascota', '6:50 AM - 8:00 PM'),
(2, 'ruta 2-Cochabamba', 'La Bolivia, Universidad Central, Hospital, Ferroviaria', '6:50 AM - 8:00 PM'),
(3, 'Ruta 3-Guajalo', 'Redondel, La plaza', '6:50 AM - 8:00 PM'),
(4, 'ruta 4-Nueva Ruta', 'Parada1, Parada2, Parada3', '6:50 AM - 8:00 PM');