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

CREATE TABLE buses
(
    id_bus  bigint unsigned NOT NULL AUTO_INCREMENT,
    ruta    varchar(100) DEFAULT NULL,
    paradas varchar(250) DEFAULT NULL,
    horario varchar(32)  DEFAULT NULL,
    PRIMARY KEY (id_bus),
    UNIQUE KEY id_bus (id_bus)
) ENGINE = InnoDB
  AUTO_INCREMENT = 5
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;

INSERT INTO buses
VALUES (1, 'ruta 1-Quitumbe', 'La Bolivia, Universidades, Tejar, La mascota', '6:50 AM - 8:00 PM'),
       (2, 'ruta 2-Cochabamba', 'La Bolivia, Universidad Central, Hospital, Ferroviaria', '6:50 AM - 8:00 PM'),
       (3, 'Ruta 3-Guajalo', 'Redondel, La plaza', '6:50 AM - 8:00 PM'),
       (4, 'ruta 4-Nueva Ruta', 'Parada1, Parada2, Parada3', '6:50 AM - 8:00 PM');

/*Actualizacion de tabla buses para añadir la ubicacion y url del mapa de cada ruta*/
ALTER TABLE buses
    ADD COLUMN ubicacion varchar(100) DEFAULT NULL,
    ADD COLUMN mapa_url  TEXT;

UPDATE buses
SET ruta      = 'Quitumbe',
    paradas   = 'EPN, Ladrón de Guevara, Av. Patria, Pérez Guerrero, Bolivia, Av. Universitaria, Av. Mariscal Sucre, '
                'Michelena, Av. Teniente Hugo Ortiz, Av. Cardenal de la Torre, Guanando, Cusubamba, Av. Mariscal Sucre, '
                'Cóndor Ñan hasta el terminal Quitumbe.',
    horario   = '6:50 AM - 8:00 PM',
    ubicacion = 'Teatro',
    mapa_url  = 'https://www.google.com/maps/embed?pb=!1m76!1m12!1m3!1d63836.48788618437!2d-78.5657257442096!3d-0.249496'
                '80255762124!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m61!3e0!4m5!1s0x91d59a107e1cd44b%3A0x88a284f66939ed4!'
                '2sEPN%2C%20Avenida%20Ladr%C3%B3n%20de%20Guevara%2C%20Quito!3m2!1d-0.2124413!2d-78.4905842!4m5!1s0x91d59'
                'a1637018127%3A0xfaae0999ceb75bde!2sAvenida%20Patria%2C%20Quito!3m2!1d-0.20782989999999998!2d-78.4968808!'
                '4m5!1s0x91d59a3dde813785%3A0x2cce0875d91d95ce!2sAv.%20Perez%20Guerrero%2C%20Quito!3m2!1d-0.204584!2d-78.'
                '50039509999999!4m5!1s0x91d59a389213b79d%3A0xd83e9259be243bcc!2sBolivia%2C%20Quito!3m2!1d-0.2027909!2d-78.'
                '50500029999999!4m5!1s0x91d59a39040e52a1%3A0x60aefca84e35cbc0!2sAv.%20Universitaria%2C%20Quito!3m2!1d-0.'
                '2050685!2d-78.50750459999999!4m5!1s0x91d5997ff408676b%3A0xbe731fba57be847e!2sAv.%20Mariscal%20Sucre%2C%20'
                'Quito!3m2!1d-0.2473782!2d-78.5353159!4m5!1s0x91d5991abd38143f%3A0xaee3c9ecffe1d7f5!2sAv.%20Michelena%2C%20'
                'Quito!3m2!1d-0.2480751!2d-78.5335449!4m5!1s0x91d598fb679d3a11%3A0x67c9468ba08824b3!2sAv.%20Tnte.%20Hugo%20'
                'Ortiz%2C%20Quito!3m2!1d-0.26445009999999997!2d-78.53187369999999!4m5!1s0x91d598e8066b103b%3A0xff0b272abca32794!'
                '2sAv.%20Cardenal%20de%20la%20Torre%2C%20Quito!3m2!1d-0.26291739999999997!2d-78.5383818!4m5!1s0x91d5a207ab741411'
                '%3A0x31bedd7cb65c9bde!2sTerminal%20Terrestre%20Quitumbe%20-%20Quito%20Sur%2C%20Av.%20Mariscal%20Sucre%2C%20'
                'Quito!3m2!1d-0.2963745!2d-78.55664159999999!5e0!3m2!1ses-419!2sec!4v1731188682163!5m2!1ses-419!2sec'
WHERE id_bus = 1;

UPDATE buses
SET ruta      = 'El Recreo',
    paradas   = 'EPN, Av. Ladrón de Guevara , Av. Velasco Ibarra, Av. Napo, Av. Pedro Maldonado, Estación El Recreo.',
    horario   = '6:50 AM - 8:00 PM',
    ubicacion = 'Teatro',
    mapa_url  = 'https://www.google.com/maps/embed?pb=!1m40!1m12!1m3!1d31918.269623726846!2d-78.51741761763492!3d-0.2386'
                '7584284919183!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m25!3e0!4m5!1s0x91d59a107e1cd44b%3A0x88a284f6693'
                '9ed4!2sEPN%2C%20Avenida%20Ladr%C3%B3n%20de%20Guevara%2C%20Quito!3m2!1d-0.2124413!2d-78.4905842!4m3!3m2!'
                '1d-0.21560269999999998!2d-78.4908821!4m3!3m2!1d-0.2376587!2d-78.50923139999999!4m3!3m2!1d-0.2459429!2d-'
                '78.5196485!4m5!1s0x91d599074de788f7%3A0x9a7b61c31c35ee8b!2sTerminal%20El%20Recreo%20(Parada)%2C%20Quito'
                '!3m2!1d-0.2519058!2d-78.5214481!5e0!3m2!1ses-419!2sec!4v1731201968360!5m2!1ses-419!2sec'
WHERE id_bus = 2;

UPDATE buses
SET ruta      = 'Condado Shopping',
    paradas   = 'EPN, Ladrón de Guevara, Av. Patria, Av. América, Av. 10 de Agosto, Av. La Prensa hasta Condado Shopping.',
    horario   = '6:50 AM - 8:00 PM',
    ubicacion = 'Sistemas',
    mapa_url  = 'https://www.google.com/maps/embed?pb=!1m46!1m12!1m3!1d63836.88430415552!2d-78.51056626335038!3d-0.14655'
                '094762443632!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m31!3e0!4m5!1s0x91d59a107e1cd44b%3A0x88a284f66939'
                'ed4!2sEPN%2C%20Avenida%20Ladr%C3%B3n%20de%20Guevara%2C%20Quito!3m2!1d-0.2124413!2d-78.4905842!4m5!1s0x9'
                '1d59a1637018127%3A0xfaae0999ceb75bde!2sAvenida%20Patria%2C%20Quito!3m2!1d-0.20782989999999998!2d-78.496'
                '8808!4m3!3m2!1d-0.2019211!2d-78.5013554!4m3!3m2!1d-0.1668849!2d-78.4871896!4m3!3m2!1d-0.1594198!2d-78.4'
                '877702!4m5!1s0x91d58f8c44d66223%3A0x2c91bf3e204c1c09!2sCondado%20Shopping%2C%20Av.%20Mariscal%20Sucre%2'
                'C%20Quito!3m2!1d-0.10434679999999999!2d-78.4913996!5e0!3m2!1ses-419!2sec!4v1731204631878!5m2!1ses-419!2sec'
WHERE id_bus = 3;

UPDATE buses
SET ruta      = 'Nueva Ruta',
    paradas   = 'Parada1, Parada2, Parada3',
    horario   = '6:50 AM - 8:00 PM',
    ubicacion = 'Sistemas',
    mapa_url  = 'https://www.google.com/maps/embed?pb=!1m46!1m12!1m3!1d63836.88430415552!2d-78.51056626335038!3d-0.14655'
                '094762443632!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m31!3e0!4m5!1s0x91d59a107e1cd44b%3A0x88a284f66939'
                'ed4!2sEPN%2C%20Avenida%20Ladr%C3%B3n%20de%20Guevara%2C%20Quito!3m2!1d-0.2124413!2d-78.4905842!4m5!1s0x9'
                '1d59a1637018127%3A0xfaae0999ceb75bde!2sAvenida%20Patria%2C%20Quito!3m2!1d-0.20782989999999998!2d-78.496'
                '8808!4m3!3m2!1d-0.2019211!2d-78.5013554!4m3!3m2!1d-0.1668849!2d-78.4871896!4m3!3m2!1d-0.1594198!2d-78.4'
                '877702!4m5!1s0x91d58f8c44d66223%3A0x2c91bf3e204c1c09!2sCondado%20Shopping%2C%20Av.%20Mariscal%20Sucre%2'
                'C%20Quito!3m2!1d-0.10434679999999999!2d-78.4913996!5e0!3m2!1ses-419!2sec!4v1731204631878!5m2!1ses-419!2sec'
WHERE id_bus = 4;