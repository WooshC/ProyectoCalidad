CREATE DATABASE javaweb;

USE javaweb;

CREATE TABLE cafeteria (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATE NOT NULL,
    categoria VARCHAR(255) NOT NULL,
    nombrePlato VARCHAR(255) NOT NULL,
    descripcion TEXT NOT NULL,
    precio DECIMAL(10, 2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO cafeteria (fecha, categoria, nombrePlato, descripcion, precio)
VALUES
    ('2024-11-10', 'Almuerzos', 'Almuerzo Estudiantil', 'Entrada: Ensalada César, Plato Fuerte: Pollo a la plancha, Bebida: Limonada, Postre: Gelatina', 8.50),
    ('2024-11-10', 'Almuerzos', 'Almuerzo Premium', 'Entrada: Sopa de tomate, Plato Fuerte: Filete de res, Bebida: Jugo de naranja, Postre: Cheesecake', 12.00),
    ('2024-11-10', 'Desayunos', 'Desayuno Básico', 'Huevos revueltos, Pan tostado, Café o Té', 5.00);

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