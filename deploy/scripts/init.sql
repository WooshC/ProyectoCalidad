CREATE
DATABASE IF NOT EXISTS javaweb;
USE
javaweb;

-- Establecer la zona horaria a Ecuador (America/Guayaquil)
SET
GLOBAL time_zone = 'America/Guayaquil';
SET
time_zone = 'America/Guayaquil';

-- Crear la tabla `cafeteria`
CREATE TABLE IF NOT EXISTS cafeteria
(
    id
    INT
    AUTO_INCREMENT
    PRIMARY
    KEY,
    fecha
    DATE
    NOT
    NULL,
    categoria
    VARCHAR
(
    255
) NOT NULL,
    nombrePlato VARCHAR
(
    255
) NOT NULL,
    descripcion VARCHAR
(
    255
) NOT NULL,
    precio DECIMAL
(
    10,
    2
) NOT NULL
    ) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE =utf8mb4_0900_ai_ci;

INSERT INTO cafeteria (fecha, categoria, nombrePlato, descripcion, precio)
VALUES ('2025-01-21', 'Almuerzos', 'Almuerzo Estudiantil',
        'Entrada: Ensalada mixta, Plato Fuerte: Pollo al horno, Bebida: Jugo de maracuyá, Postre: Flan', 2.50),
       ('2025-01-21', 'Almuerzos', 'Almuerzo Premium',
        'Entrada: Sopa de verduras, Plato Fuerte: Pescado al vapor, Bebida: Agua de piña, Postre: Tarta de manzana',
        3.25),
       ('2025-01-21', 'Desayunos', 'Desayuno Básico', 'Avena, Pan de leche, Café o Té', 1.00),
       ('2025-01-21', 'Desayunos', 'Desayuno Completo', 'Tortilla de huevos, Pan de pita, Jugo de naranja', 2.25),
       ('2025-01-21', 'Snacks', 'Empanada de pollo', 'Empanada rellena de pollo desmenuzado', 2.50),
       ('2025-01-21', 'Almuerzos', 'Almuerzo Premium',
        'Entrada: Crema de zanahoria, Plato Fuerte: Pechuga de pavo, Bebida: Jugo de uva, Postre: Helado', 3.00),
       ('2025-01-21', 'Snacks', 'Pan de yuca', 'Panecillo de yuca con queso', 2.50),
       ('2025-01-21', 'Snacks', 'Empanada de queso', 'Empanada de queso fresco', 2.50),
       ('2025-01-21', 'Desayunos', 'Desayuno Completo', 'Croissant con mermelada, Jugo de piña, Café o Té', 2.00),
       ('2025-01-21', 'Snacks', 'Cachito de jamón', 'Cachito relleno de jamón y queso', 2.50),
       ('2025-01-21', 'Almuerzos', 'Almuerzo Estudiantil',
        'Entrada: Ensalada de tomate y pepino, Plato Fuerte: Pollo al curry, Bebida: Limonada con hierba luisa, Postre: Gelatina de frutas',
        8.50),
       ('2025-01-21', 'Almuerzos', 'Almuerzo Premium',
        'Entrada: Crema de espárragos, Plato Fuerte: Pavo al horno, Bebida: Jugo de arándano, Postre: Mousse de chocolate',
        12.00),
       ('2025-01-21', 'Desayunos', 'Desayuno Básico', 'Tostadas con aguacate, Café o Té', 2.00),
       ('2025-01-21', 'Snacks', 'Empanadas Chilenas', 'Empanadas rellenas de jamón y queso con mayonesa', 2.50);

-- Crear la tabla `buses`
CREATE TABLE buses
(
    id_bus    bigint unsigned NOT NULL AUTO_INCREMENT,
    ruta      varchar(100) DEFAULT NULL,
    paradas   TEXT         DEFAULT NULL,
    horario   varchar(32)  DEFAULT NULL,
    ubicacion varchar(100) DEFAULT NULL,
    mapa_url  TEXT,
    PRIMARY KEY (id_bus),
    UNIQUE KEY id_bus (id_bus)
) ENGINE = InnoDB
  AUTO_INCREMENT = 5
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;

INSERT INTO buses
VALUES (1, 'CAPULI',
        'Ruta1 (Sur): EPN, Ladrón de Guevara, Av. Velasco Ibarra, Av. Pedro Vicente Maldonado, Av. Napo, calle Corazón, redondel de la Villaflora, Av. Pedro Vicente Maldonado hasta la parada EI Capulí del eco-vía.',
        '6:50 AM - 8:00 PM', 'Teatro',
        'https://www.google.com/maps/embed?pb=!1m46!1m12!1m3!1d63836.48473093413!2d-78.51623674999995!3d-0.2501462999999955!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m31!3e0!4m5!1s0x91d59a053b841d4f%3A0x87419c5f54833f95!2sAv.%20Ladr%C3%B3n%20de%20Guevara%2C%20Quito!3m2!1d-0.21269649999999998!2d-78.4883717!4m5!1s0x91d599983cffcc7b%3A0x663aa2147bf124d2!2sVelasco%20Ibarra%2C%20170121%20Quito!3m2!1d-0.2370216!2d-78.5098683!4m5!1s0x91d599a3c3f60021%3A0x6097c215567bef32!2sAv.%20Napo%2C%20170121%20Quito!3m2!1d-0.24164349999999998!2d-78.51248629999999!4m5!1s0x91d599a7139760c5%3A0x15b94a782376ed55!2sRedondel%20de%20la%20Villaflora%2C%20Quito!3m2!1d-0.24447149999999998!2d-78.5189635!4m5!1s0x91d5989e7a856e65%3A0x73a7df63e5f4da35!2sPedro%20Vicente%20Maldonado%2C%20Quito!3m2!1d-0.2930288!2d-78.5384005!5e0!3m2!1sen!2sec!4v1737476921652!5m2!1sen!2sec" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade'),
       (2, 'GUAMANI',
        'Ruta2 (Sur): EPN, Ladrón de Guevara, Oriental, Trébol, Av. Rumiñahui, Av. Simón Bolívar, Av. Morán Valverde, Av. Maldonado hasta el antiguo peaje.',
        '6:50 AM - 8:00 PM', 'Sistemas',
        'https://www.google.com/maps/embed?pb=!1m54!1m12!1m3!1d37957.448002383106!2d-78.52039385298842!3d-0.2333005147215619!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m39!3e0!4m5!1s0x91d59a053b841d4f%3A0x87419c5f54833f95!2sAvenida%20Ladr%C3%B3n%20de%20Guevara%2C%20Quito!3m2!1d-0.21269649999999998!2d-78.4883717!4m5!1s0x91d59990af0f227b%3A0x62f6d1482c86b5b0!2sAv.%20Oriental%2C%20170121%20Quito!3m2!1d-0.2333556!2d-78.5087806!4m5!1s0x91d59993df3e247b%3A0x7e5b64b6c4109d77!2s%22El%20Tr%C3%A9bol%22%20Roundabout%2C%20Avenida%20General%20Rumi%C3%B1ahui%2C%20Quito!3m2!1d-0.23244759999999998!2d-78.5035556!4m3!3m2!1d-0.2270178!2d-78.4930186!4m3!3m2!1d-0.24240769999999998!2d-78.4976934!4m5!1s0x91d598bc12037f8f%3A0x6a85e23ff1b0ff0b!2sAv.%20Moran%20Valverde%2C%20Quito!3m2!1d-0.2810806!2d-78.54824169999999!4m5!1s0x91d5a2f51569042d%3A0xb0ede11dd1122862!2sAv.%20Pedro%20Vicente%20Maldonado%2C%20Quito!3m2!1d-0.3106018!2d-78.5462336!5e0!3m2!1sen!2sec!4v1737478546868!5m2!1sen!2sec" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade'),
       (3, 'MACHACHI',
        'Ruta3 (Sur): EPN, Ladrón de Guevara, Av. Patria, Pérez Guerrero, Bolivia, Av. Universitaria, Av. Mariscal Sucre, Av. Morán Valverde, Av. OtayaÑan, Av. Pedro Vicente Maldonado, Carr. Panamericana hasta el Parque de Machachi.',
        '6:50 AM - 8:00 PM', 'Teatro',
        'https://www.google.com/maps/embed?pb=!1m70!1m12!1m3!1d255343.52709907!2d-78.63906704023445!3d-0.35296912389966584!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m55!3e0!4m5!1s0x91d59a053b841d4f%3A0x87419c5f54833f95!2sAv.%20Ladr%C3%B3n%20de%20Guevara%2C%20Quito!3m2!1d-0.21269649999999998!2d-78.4883717!4m5!1s0x91d59a1637018127%3A0xfaae0999ceb75bde!2sAvenida%20Patria%2C%20Quito!3m2!1d-0.20782989999999998!2d-78.4968808!4m5!1s0x91d59a3e541f6e7d%3A0x40efd819eb790587!2sAv.%20Alfredo%20Perez%20Guerrero%2C%20170129%20Quito!3m2!1d-0.2046469!2d-78.50020479999999!4m5!1s0x91d59a389213b79d%3A0xd83e9259be243bcc!2sBolivia%2C%20Quito!3m2!1d-0.2027909!2d-78.50500029999999!4m5!1s0x91d59a39040e52a1%3A0x60aefca84e35cbc0!2sAv.%20Universitaria%2C%20Quito!3m2!1d-0.2050685!2d-78.50750459999999!4m5!1s0x91d5997ff408676b%3A0xbe731fba57be847e!2sAv.%20Mariscal%20Sucre%2C%20Quito!3m2!1d-0.2473782!2d-78.5353159!4m5!1s0x91d598bc12037f8f%3A0x6a85e23ff1b0ff0b!2sAv.%20Moran%20Valverde%2C%20Quito!3m2!1d-0.2810806!2d-78.54824169999999!4m5!1s0x91d5a2f51569042d%3A0xb0ede11dd1122862!2sAv.%20Pedro%20Vicente%20Maldonado!3m2!1d-0.3106018!2d-78.5462336!4m5!1s0x91d5aeab33368cc3%3A0xad239dee0eb2cc2b!2sParque%20de%20Machachi%2C%20Machachi!3m2!1d-0.512308!2d-78.5659077!5e0!3m2!1sen!2sec!4v1737480144329!5m2!1sen!2sec" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade'),
       (4, 'QUITUMBE',
        'Ruta4 (Sur): EPN, Ladrón de Guevara, Av. Patria, Pérez Guerrero, Bolivia, Av. Universitaria, Av. Mariscal Sucre, Michelena, Av. Teniente Hugo Ortiz, Av. Cardenal de la Torre, Guanando, Cusubamba, Av. Mariscal Sucre, Cóndor Ñan hasta el terminal Quitumbe.',
        '6:50 AM - 8:00 PM', 'Teatro',
        'https://www.google.com/maps/embed?pb=!1m76!1m12!1m3!1d63836.48788618437!2d-78.5657257442096!3d-0.24949680255762124!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m61!3e0!4m5!1s0x91d59a107e1cd44b%3A0x88a284f66939ed4!2sEPN%2C%20Avenida%20Ladr%C3%B3n%20de%20Guevara%2C%20Quito!3m2!1d-0.2124413!2d-78.4905842!4m5!1s0x91d59a1637018127%3A0xfaae0999ceb75bde!2sAvenida%20Patria%2C%20Quito!3m2!1d-0.20782989999999998!2d-78.4968808!4m5!1s0x91d59a3dde813785%3A0x2cce0875d91d95ce!2sAv.%20Perez%20Guerrero%2C%20Quito!3m2!1d-0.204584!2d-78.50039509999999!4m5!1s0x91d59a389213b79d%3A0xd83e9259be243bcc!2sBolivia%2C%20Quito!3m2!1d-0.2027909!2d-78.50500029999999!4m5!1s0x91d59a39040e52a1%3A0x60aefca84e35cbc0!2sAv.%20Universitaria%2C%20Quito!3m2!1d-0.2050685!2d-78.50750459999999!4m5!1s0x91d5997ff408676b%3A0xbe731fba57be847e!2sAv.%20Mariscal%20Sucre%2C%20Quito!3m2!1d-0.2473782!2d-78.5353159!4m5!1s0x91d5991abd38143f%3A0xaee3c9ecffe1d7f5!2sAv.%20Michelena%2C%20Quito!3m2!1d-0.2480751!2d-78.5335449!4m5!1s0x91d598fb679d3a11%3A0x67c9468ba08824b3!2sAv.%20Tnte.%20Hugo%20Ortiz%2C%20Quito!3m2!1d-0.26445009999999997!2d-78.53187369999999!4m5!1s0x91d598e8066b103b%3A0xff0b272abca32794!2sAv.%20Cardenal%20de%20la%20Torre%2C%20Quito!3m2!1d-0.26291739999999997!2d-78.5383818!4m5!1s0x91d5a207ab741411%3A0x31bedd7cb65c9bde!2sTerminal%20Terrestre%20Quitumbe%20-%20Quito%20Sur%2C%20Av.%20Mariscal%20Sucre%2C%20Quito!3m2!1d-0.2963745!2d-78.55664159999999!5e0!3m2!1ses-419!2sec!4v1731188682163!5m2!1ses-419!2sec'),
       (5, 'ECUATORIANA',
        'Ruta5 (Sur): EPN, Ladrón de Guevara, Av. Patria, Pérez Guerrero, Bolivia, Av. Universitaria, Av. Mariscal Sucre hasta Ia iglesia de Ia Ecuatoriana.',
        '6:50 AM - 8:00 PM', 'Teatro',
        'https://www.google.com/maps/embed?pb=!1m52!1m12!1m3!1d31918.300266039314!2d-78.53244346146082!3d-0.2250845354525637!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m37!3e0!4m5!1s0x91d59a053b841d4f%3A0x87419c5f54833f95!2sAvenida%20Ladr%C3%B3n%20de%20Guevara%2C%20Quito!3m2!1d-0.21269649999999998!2d-78.4883717!4m5!1s0x91d59a1637018127%3A0xfaae0999ceb75bde!2sAvenida%20Patria%2C%20Quito!3m2!1d-0.20782989999999998!2d-78.4968808!4m5!1s0x91d59a3e541f6e7d%3A0x40efd819eb790587!2sAv.%20Alfredo%20Perez%20Guerrero%2C%20170129%20Quito!3m2!1d-0.2046469!2d-78.50020479999999!4m5!1s0x91d59a389213b79d%3A0xd83e9259be243bcc!2sBolivia%2C%20Quito!3m2!1d-0.2027909!2d-78.50500029999999!4m5!1s0x91d59a39040e52a1%3A0x60aefca84e35cbc0!2sAv.%20Universitaria%2C%20Quito!3m2!1d-0.2050685!2d-78.50750459999999!4m5!1s0x91d599003a646215%3A0x67c9251bde5d8f0c!2sLA%20ECUATORIANA%2C%20Avenida%20Mariscal%20Sucre%2C%20Quito!3m2!1d-0.2473782!2d-78.5353159!5e0!3m2!1sen!2sec!4v1737477916843!5m2!1sen!2sec" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade'),
       (6, 'ESTADIO DEL AUCAS',
        'Ruta6 (Sur): EPN, Ladrón de Guevara, Av. Patria, Pérez Guerrero, Bolivia, Av. Universitaria, Av. Mariscal Sucre, Cbo. Luis Iturralde, Av. Teniente Hugo Ortiz, Cardenal de la Torre, Av. Marquesa de Solanda, Av. Rumichaca, Estadio del Aucas.',
        '6:50 AM - 8:00 PM', 'Teatro',
        'https://www.google.com/maps/embed?pb=!1m64!1m12!1m3!1d63836.50428288535!2d-78.51925339999994!3d-0.24609399999999762!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m49!3e0!4m5!1s0x91d59a053b841d4f%3A0x87419c5f54833f95!2sAvenida%20Ladr%C3%B3n%20de%20Guevara%2C%20Quito!3m2!1d-0.21269649999999998!2d-78.4883717!4m5!1s0x91d59a1637018127%3A0xfaae0999ceb75bde!2sAvenida%20Patria%2C%20Quito!3m2!1d-0.20782989999999998!2d-78.4968808!4m5!1s0x91d59a3e541f6e7d%3A0x40efd819eb790587!2sAv.%20Alfredo%20Perez%20Guerrero%2C%20170129%20Quito!3m2!1d-0.2046469!2d-78.50020479999999!4m5!1s0x91d59a389213b79d%3A0xd83e9259be243bcc!2sBolivia%2C%20Quito!3m2!1d-0.2027909!2d-78.50500029999999!4m5!1s0x91d59a39040e52a1%3A0x60aefca84e35cbc0!2sAv.%20Universitaria%2C%20Quito!3m2!1d-0.2050685!2d-78.50750459999999!4m5!1s0x91d59a1399491421%3A0x35d6dbe700bf34c0!2sMariscal%20Sucre%2C%20Quito!3m2!1d-0.20552879999999998!2d-78.4919563!4m5!1s0x91d599102ed8766f%3A0x37bf86c436ecac98!2sCbo.%20Luis%20Iturralde%2C%20Quito!3m2!1d-0.2460861!2d-78.5304246!4m5!1s0x91d598bc35944c0b%3A0x6e83c5666577ebe6!2sAv.%20Rumichaca%20%C3%91an%2C%20Quito!3m2!1d-0.2892125!2d-78.5501268!5e0!3m2!1sen!2sec!4v1737478093932!5m2!1sen!2sec" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade'),
       (7, 'QUICENTRO SUR',
        'Ruta7 (Sur): EPN, Oriental, Oriental, Av. Napo, Villaflora, Alonso de Angulo, Av. Teniente Hugo Ortiz, Quicentro Sur.',
        '6:50 AM - 8:00 PM', 'Sistemas',
        'https://www.google.com/maps/embed?pb=!1m58!1m12!1m3!1d63836.50464466061!2d-78.54883996162103!3d-0.24601839020642988!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m43!3e0!4m5!1s0x91d59a053b841d4f%3A0x87419c5f54833f95!2sAvenida%20Ladr%C3%B3n%20de%20Guevara%2C%20Quito!3m2!1d-0.21269649999999998!2d-78.4883717!4m5!1s0x91d59990af0f227b%3A0x62f6d1482c86b5b0!2sAv.%20Oriental%2C%20170121%20Quito!3m2!1d-0.2333556!2d-78.5087806!4m5!1s0x91d599a3c3f60021%3A0x6097c215567bef32!2sAv.%20Napo%2C%20170121%20Quito!3m2!1d-0.24164349999999998!2d-78.51248629999999!4m5!1s0x91d59909cb1103c1%3A0xe6e218e86d025ad4!2sVillaflora%2C%20Quito!3m2!1d-0.2441149!2d-78.5220701!4m5!1s0x91d599a789676809%3A0xc43ca6969c4675c1!2sAve%20Alonso%20De%20Angulo%2C%20Quito!3m2!1d-0.2459355!2d-78.5206489!4m5!1s0x91d598fb679d3a11%3A0x67c9468ba08824b3!2sAv.%20Tnte.%20Hugo%20Ortiz%2C%20Quito!3m2!1d-0.26445009999999997!2d-78.53187369999999!4m5!1s0x91d598a2acf1a997%3A0x14dc7499d813fb50!2sQuicentro%20Sur%2C%20Avenida%20Mor%C3%A1n%20Valverde%2C%20Quito!3m2!1d-0.28575449999999997!2d-78.5433214!5e0!3m2!1sen!2sec!4v1737478656787!5m2!1sen!2sec" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade'),
       (8, 'SAN ANTONIO DE PICHINCHA',
        'Ruta8 (Norte): EPN, Ladrón de Guevara, Av. Patria, Pérez Guerrero, Bolivia, Av. Universitaria Av. Mariscal Sucre, redondel del Condado, Manuel Córdoba Galarza hasta la Plaza Equinoccial en San Antonio de Pichincha.',
        '6:50 AM - 8:00 PM', 'Sistemas',
        'https://www.google.com/maps/embed?pb=!1m60!1m12!1m3!1d127673.95888323493!2d-78.56455832230462!3d-0.108131088171497!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m45!3e0!4m5!1s0x91d59a053b841d4f%3A0x87419c5f54833f95!2sAvenida%20Ladr%C3%B3n%20de%20Guevara%2C%20Quito!3m2!1d-0.21269649999999998!2d-78.4883717!4m3!3m2!1d-0.2098622!2d-78.4941633!4m5!1s0x91d59a3e541f6e7d%3A0x40efd819eb790587!2sAv.%20Alfredo%20Perez%20Guerrero%2C%20170129%20Quito!3m2!1d-0.2046469!2d-78.50020479999999!4m3!3m2!1d-0.2031632!2d-78.5038351!4m5!1s0x91d59a39040e52a1%3A0x60aefca84e35cbc0!2sAv.%20Universitaria%2C%20Quito!3m2!1d-0.2050685!2d-78.50750459999999!4m5!1s0x91d59a1399491421%3A0x35d6dbe700bf34c0!2sMariscal%20Sucre%2C%20Quito!3m2!1d-0.20552879999999998!2d-78.4919563!4m5!1s0x91d5859a75acea35%3A0x4f8051412e2d0b19!2sManuel%20Cordova%20Galarza%20(Redondel%20El%20Condado)%2C%20Quito!3m2!1d-0.1007907!2d-78.4906156!4m5!1s0x91d5881f5fa2f2c7%3A0x4611549bc8cbf299!2sPlaza%20Equinoccial%2C%20y%2C%20Quito!3m2!1d-0.003532!2d-78.45269669999999!5e0!3m2!1sen!2sec!4v1737478913572!5m2!1sen!2sec" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade'),
       (9, 'CARCELEN 1',
        'Ruta9 (Norte): EPN, Ladrón de Guevara, Av. 10 de Agosto o Juan León Mera, EI labrador, Av. Galo Plaza, Panamericana Norte, intercambiador entrada Av. Simón Bolívar, calle Isidro Ayora hasta el Colegio Americano de Quito en Carcelén.',
        '6:50 AM - 8:00 PM', 'Sistemas',
        'https://www.google.com/maps/embed?pb=!1m62!1m12!1m3!1d22569.790324609716!2d-78.47991667958262!3d-0.09403260248749493!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m47!3e0!4m5!1s0x91d59a053b841d4f%3A0x87419c5f54833f95!2sAvenida%20Ladr%C3%B3n%20de%20Guevara%2C%20Quito!3m2!1d-0.21269649999999998!2d-78.4883717!4m5!1s0x91d59aa32f6932a5%3A0x9567df6f01c21342!2sAv.%2010%20de%20Agosto%2C%20Quito!3m2!1d-0.18847709999999998!2d-78.4921147!4m5!1s0x91d59aa515a185e1%3A0xbb8b5e1a2b54a437!2sEl%20Labrador%2C%20Quito!3m2!1d-0.15697149999999999!2d-78.4850422!4m5!1s0x91d5856065c09d7f%3A0x126855f708cd7e58!2sAv.%20Galo%20Plaza%20Lasso%2C%20Quito!3m2!1d-0.1265645!2d-78.4807483!4m5!1s0x91d58f5ea9b1b7ad%3A0x7d6770c8fee5fda3!2sAve.%20Isidro%20Ayora%2C%20170120%20Quito!3m2!1d-0.087338!2d-78.4672581!4m3!3m2!1d-0.1091936!2d-78.457859!4m5!1s0x91d58f00189f676f%3A0xe53e1677e1610221!2sPanamericana%20norte%20y%20Av%20carapungo%20sector%20Calder%C3%B3n%2C%20Quito!3m2!1d-0.10503219999999999!2d-78.4256616!4m5!1s0x91d591e721f65c65%3A0x39cdf61820552d90!2sSim%C3%B3n%20Bol%C3%ADvar%20intercambiador%20sur%2Fnorte%2C%20Avenida%20Sim%C3%B3n%20Bol%C3%ADvar%2C%20Quito!3m2!1d-0.2024782!2d-78.4581626!5e0!3m2!1sen!2sec!4v1737479419419!5m2!1sen!2sec" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade'),
       (10, 'Condado Shopping',
        'EPN, Ladrón de Guevara, Av. Patria, Av. América, Av. 10 de Agosto, Av. La Prensa hasta Condado Shopping.',
        '6:50 AM - 8:00 PM', 'Teatro',
        'https://www.google.com/maps/embed?pb=!1m46!1m12!1m3!1d63836.88430415552!2d-78.51056626335038!3d-0.14655'
            '094762443632!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m31!3e0!4m5!1s0x91d59a107e1cd44b%3A0x88a284f66939'
            'ed4!2sEPN%2C%20Avenida%20Ladr%C3%B3n%20de%20Guevara%2C%20Quito!3m2!1d-0.2124413!2d-78.4905842!4m5!1s0x9'
            '1d59a1637018127%3A0xfaae0999ceb75bde!2sAvenida%20Patria%2C%20Quito!3m2!1d-0.20782989999999998!2d-78.496'
            '8808!4m3!3m2!1d-0.2019211!2d-78.5013554!4m3!3m2!1d-0.1668849!2d-78.4871896!4m3!3m2!1d-0.1594198!2d-78.4'
            '877702!4m5!1s0x91d58f8c44d66223%3A0x2c91bf3e204c1c09!2sCondado%20Shopping%2C%20Av.%20Mariscal%20Sucre%2'
            'C%20Quito!3m2!1d-0.10434679999999999!2d-78.4913996!5e0!3m2!1ses-419!2sec!4v1731204631878!5m2!1ses-419!2sec'),
       (11, 'Carcelen 2',
        'EPN, Ladrón de Guevara, Av. Patria, Av. 10 de Agosto, Av. La Prensa, Av. Diego Vásquez Cepeda, Av Jaime Roldos Aguilera hasta Av Isidro Ayora.',
        '6:50 AM - 8:00 PM', 'Teatro',
        'https://www.google.com/maps/embed?pb=!1m64!1m12!1m3!1d127673.78729117896!2d-78.51034216514991!3d-0.1432355314314995!2m3'
            '!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m49!3e0!4m5!1s0x91d59a107e1cd44b%3A0x88a284f66939ed4!2sEPN%2C%20Avenida%20Ladr%C3%'
            'B3n%20de%20Guevara%2C%20Quito!3m2!1d-0.2123252!2d-78.49027099999999!4m5!1s0x91d59a053b841d4f%3A0x87419c5f54833f95!2sAv.'
            '%20Ladr%C3%B3n%20de%20Guevara%2C%20Quito!3m2!1d-0.21269649999999998!2d-78.4883717!4m5!1s0x91d59a1637018127%3A0xfaae0999c'
            'eb75bde!2sAvenida%20Patria%2C%20Quito!3m2!1d-0.20782989999999998!2d-78.4968808!4m5!1s0x91d59aa32f6932a5%3A0x9567df6f01c2'
            '1342!2sAv.%2010%20de%20Agosto%2C%20Quito!3m2!1d-0.18847709999999998!2d-78.4921147!4m5!1s0x91d58542dff375cb%3A0x42bb61676'
            '9bbd81b!2sAvenida%20la%20Prensa%2C%20Quito!3m2!1d-0.1351972!2d-78.49370859999999!4m5!1s0x91d5859d3cfec3b7%3A0x40df46ea15'
            'adde35!2sAv%20Diego%20V%C3%A1squez%20de%20Cepeda%2C%20Quito!3m2!1d-0.105142!2d-78.4834498!4m5!1s0x91d58f5c006ca5c5%3A0x1'
            '4fc616a38e3f59c!2sAv%20Jaime%20Rold%C3%B3s%20Aguilera%2C%20170120%20Quito!3m2!1d-0.0852733!2d-78.4726989!4m5!1s0x91d58f5'
            'ea9b1b7ad%3A0x7d6770c8fee5fda3!2sAv.%20Isidro%20Ayora%2C%20170120%20Quito!3m2!1d-0.087338!2d-78.4672581!5e0!3m2!1ses-419'
            '!2sec!4v1737477726458!5Fm2!1ses-419!2sec'),
       (12, 'Carapungo',
        'EPN, Ladrón de Guevara, Av. Patria, Av. 6 de Diciembre, Av. Eloy Alfaro (terminal terrestre de Carcelén), Panamericana Norte, Capitán Giovanni Calles, Luis Vacarí, Galo Plaza hasta el estadio de Carapungo.',
        '6:50 AM - 8:00 PM', 'Teatro',
        'https://www.google.com/maps/embed?pb=!1m76!1m12!1m3!1d127673.80855506474!2d-78.47968770116547!3d-0.13936615953361112!2m3!'
            '1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m61!3e0!4m5!1s0x91d59a107e1cd44b%3A0x88a284f66939ed4!2sEPN%2C%20Avenida%20Ladr%C3%B3'
            'n%20de%20Guevara%2C%20Quito!3m2!1d-0.2123252!2d-78.49027099999999!4m5!1s0x91d59a053b841d4f%3A0x87419c5f54833f95!2sAv.%20L'
            'adr%C3%B3n%20de%20Guevara%2C%20Quito!3m2!1d-0.21269649999999998!2d-78.4883717!4m5!1s0x91d59a1637018127%3A0xfaae0999ceb75bd'
            'e!2sAvenida%20Patria%2C%20Quito!3m2!1d-0.20782989999999998!2d-78.4968808!4m5!1s0x91d585578ceef7cf%3A0x43a4da2a83fa669!2sAv'
            '.%206%20de%20Diciembre%2C%20Quito!3m2!1d-0.1693043!2d-78.476377!4m5!1s0x91d58fff8c502237%3A0xf28c229380f25c88!2sAv.%20Eloy%'
            '20Alfaro%2C%20Quito!3m2!1d-0.1467533!2d-78.46940169999999!4m5!1s0x91d58f0fa7e59051%3A0xb146d1e92b0b7597!2sPanamericana%20Nt'
            'e.%2C%20Quito!3m2!1d-0.08546709999999999!2d-78.3990108!4m5!1s0x91d58f19b89f9e67%3A0x20fab4d92d9fb2b9!2sCapit%C3%A1n%20Giovan'
            'ni%20Calles%2C%20Quito!3m2!1d-0.09515499999999999!2d-78.4386942!4m5!1s0x91d58f6d59043c33%3A0xd9c21a3ce037fb27!2sAv.%20Padre%'
            '20Luis%20Vaccari%2C%20Quito!3m2!1d-0.1006374!2d-78.4536092!4m5!1s0x91d58f15385e1a0d%3A0xb5b076c28b40678f!2sGalo%20Pl.%20Lass'
            'o%2C%20Quito!3m2!1d-0.0923166!2d-78.4516518!4m5!1s0x91d58f156106d26b%3A0x72657ed09ee8d24f!2sEstadio%20Liga%20Barrial%20de%20'
            'Carapungo%2C%20Quito!3m2!1d-0.0916213!2d-78.4508603!5e0!3m2!1ses-419!2sec!4v1737478469054!5m2!1ses-419!2sec'),
       (13, 'Panamericana',
        'EPN, Ladrón de Guevara, Av. Patria, Av. 10 de Agosto, Av. La Prensa, Av. Diego Vásquez Cepeda, '
            'Av Jaime Roldos Aguilera hasta Av Isidro Ayora.',
        '6:50 AM - 8:00 PM',
        'Teatro',
        'https://www.google.com/maps/embed?pb=!1m68!1m12!1m3!1d255347.81348631036!2d-78.58005195419433!3d-0.11989005130620471!2m3'
            '!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m53!3e0!4m5!1s0x91d59a107e1cd44b%3A0x88a284f66939ed4!2sEPN%2C%20Avenida%20Ladr%C3%'
            'B3n%20de%20Guevara%2C%20Quito!3m2!1d-0.2123252!2d-78.49027099999999!4m5!1s0x91d59a053b841d4f%3A0x87419c5f54833f95!2sAv.%'
            '20Ladr%C3%B3n%20de%20Guevara%2C%20Quito!3m2!1d-0.21269649999999998!2d-78.4883717!4m5!1s0x91d59a11f1259ccf%3A0xc1aa281167'
            '783587!2sAve%2012%20de%20Octubre%2C%20Quito!3m2!1d-0.207753!2d-78.4896844!4m5!1s0x91d59a7892e4a921%3A0xd8c721b7149956da!'
            '2sAv.%20Gonzalez%20Suarez%2C%20Quito!3m2!1d-0.1949235!2d-78.47786769999999!4m5!1s0x91d59a7f3d0e8011%3A0x160f9a79898a08a!'
            '2sFernando%20Ayarza%2C%20170102%20Quito!3m2!1d-0.186557!2d-78.47756799999999!4m5!1s0x91d58fff8c502237%3A0xf28c229380f25c'
            '88!2sAv.%20Eloy%20Alfaro%2C%20Quito!3m2!1d-0.1467533!2d-78.46940169999999!4m5!1s0x91d59008d7f807df%3A0xd906bda7de498cc0!'
            '2sAv.%20de%20las%20Palmeras%2C%20170138%20Quito!3m2!1d-0.1566747!2d-78.471082!4m3!3m2!1d-0.1465565!2d-78.44589359999999!'
            '4m5!1s0x91d58f0fa7e59051%3A0xb146d1e92b0b7597!2sPanamericana%20Norte%2C%20Quito!3m2!1d-0.08546709999999999!2d-78.3990108'
            '!5e0!3m2!1ses-419!2sec!4v1737479056362!5m2!1ses-419!2sec'),
       (14, 'Sangolqui',
        'EPN, Ladrón de Guevara, Av. Oriental, Av. General Rumiñahui, el Triángulo, EL Colibrí, el Choclo, Av. Calderón. Monumento Rumiñahui, '
            'SANTA MARIA, Parque El Turismo.',
        '6:50 AM - 8:00 PM',
        'Teatro',
        'https://www.google.com/maps/embed?pb=!1m70!1m12!1m3!1d127672.73441850091!2d-78.55796668040817!3d-0.27324029564138247!2m3!'
            '1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m55!3e0!4m5!1s0x91d59a107e1cd44b%3A0x88a284f66939ed4!2sEPN%2C%20Avenida%20Ladr%C3%B3'
            'n%20de%20Guevara%2C%20Quito!3m2!1d-0.2123252!2d-78.49027099999999!4m5!1s0x91d59a053b841d4f%3A0x87419c5f54833f95!2sAv.%20L'
            'adr%C3%B3n%20de%20Guevara%2C%20Quito!3m2!1d-0.21269649999999998!2d-78.4883717!4m5!1s0x91d59990af0f227b%3A0x62f6d1482c86b5'
            'b0!2sAv.%20Oriental%2C%20Quito!3m2!1d-0.2333556!2d-78.5087806!4m5!1s0x91d597f500db5c4b%3A0x79b46ed371fecc35!2sAv.%20Gral.'
            '%20Rumi%C3%B1ahui%2C%20Quito!3m2!1d-0.2971955!2d-78.4612836!4m5!1s0x91d5990061a11a2b%3A0xc0d8633040cbea24!2sEl%20triangul'
            'o%2C%20S18%2C%20Quito!3m2!1d-0.2774666!2d-78.5161269!4m5!1s0x91d5bcfe63b07dff%3A0x7f560944f8cef7d!2zRWwgQ29saWJyw60sIERlb'
            'CBDb2xpYnLDrSwgU2FuZ29scXXDrQ!3m2!1d-0.3329822!2d-78.4347925!4m5!1s0x91d5bcfcb54b1305%3A0x9d833f0d1caae117!2sEl%20Choclo%'
            '2C%20Sangolqu%C3%AD!3m2!1d-0.3338658!2d-78.441082!4m5!1s0x91d5bce23bfe3153%3A0xf77c92fdafcadcfc!2zQXYuIEFiZMOzbiBDYWxkZXL'
            'Ds24sIFNhbmdvbHF1w60!3m2!1d-0.33230129999999997!2d-78.4458149!4m5!1s0x91d5bd1f10c82fc1%3A0xb1d95638fcd119d9!2sParque%20El'
            '%20Tur%C3%ADsmo!3m2!1d-0.3270044!2d-78.4507459!5e0!3m2!1ses-419!2sec!4v1737481941214!5m2!1ses-419!2sec'),
       (15, 'Quinche',
        'EPN, Ladrón de Guevara, Queseras del Medio, Av. De los conquistadores, Av. Simón Bolívar, Ruta Viva, Av. Escalón Lumbisi, '
            'Intervalles, Calle Carchi, Ruta Viva, Pifo, Tababela, Yaruquí, Parque de Checa, El Quinche',
        '6:50 AM - 8:00 PM',
        'Teatro',
        'https://www.google.com/maps/embed?pb=!1m76!1m12!1m3!1d1994.9015004569765!2d-78.2985641497268!3d-0.1587751387656351!2m3!1f0!'
            '2f0!3f0!3m2!1i1024!2i768!4f13.1!4m61!3e0!4m5!1s0x91d59a107e1cd44b%3A0x88a284f66939ed4!2sEPN%2C%20Avenida%20Ladr%C3%B3n%20d'
            'e%20Guevara%2C%20Quito!3m2!1d-0.2123252!2d-78.49027099999999!4m5!1s0x91d59a053b841d4f%3A0x87419c5f54833f95!2sAv.%20Ladr%C3'
            '%B3n%20de%20Guevara%2C%20Quito!3m2!1d-0.21269649999999998!2d-78.4883717!4m5!1s0x91d59a197f097c6b%3A0x3c1af04ffa11efa2!2sQue'
            'seras%20del%20Medio%2C%20Quito!3m2!1d-0.2126381!2d-78.4924832!4m5!1s0x91d59a0a0dbc256b%3A0x8a5965ed7c00b5b7!2sAv.%20de%20lo'
            's%20Conquistadores%2C%20Quito!3m2!1d-0.20143429999999998!2d-78.474817!4m5!1s0x91d59811c0539531%3A0x407bd1f267c4cb0e!2sAv%20'
            'Simon%20Bolivar%2C%20Quito!3m2!1d-0.2837264!2d-78.4868378!4m5!1s0x91d590c8658770c5%3A0x3e6d4d1c2e204a05!2sRuta%20Viva%2C%20'
            'Quito!3m2!1d-0.22190159999999998!2d-78.4171307!4m5!1s0x91d59721503f13a5%3A0x6e609e6be70c9b8a!2sAv.%202%20de%20Agosto%2C%20Q'
            'uito!3m2!1d-0.246767!2d-78.4290918!4m5!1s0x91d5947d17a0b7c1%3A0xa97336a482c98d40!2sPifo!3m2!1d-0.23202589999999998!2d-78.33'
            '69554!4m5!1s0x91d58d893c19ae11%3A0xd6cb3134153c34f5!2sTababela%2C%20Quito!3m2!1d-0.19034399999999999!2d-78.33856279999999!4'
            'm5!1s0x91d58d2a7e7f8de9%3A0x15e04e572354cfa1!2sEl%20Quinche%2C%20Quito!3m2!1d-0.11088379999999999!2d-78.2945939!5e0!3m2!1se'
            's-419!2sec!4v1737482230730!5m2!1ses-419!2sec'),
       (16, 'Puembo',
        'EPN, Ladrón de Guevara, Queseras del Medio, Vicentina, Guapulo, EI Cebollar, Cumbaya, El Nacional, La Primavera, '
            'Tumbaco, EI Arenal, Puembo hasta el Redondel.',
        '6:50 AM - 8:00 PM',
        'Teatro',
        'https://www.google.com/maps/embed?pb=!1m76!1m12!1m3!1d63836.69025735789!2d-78.47106614426383!3d-0.2035554641625792'
            '2!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m61!3e0!4m5!1s0x91d59a107e1cd44b%3A0x88a284f66939ed4!2sEPN%2C%20Avenida'
            '%20Ladr%C3%B3n%20de%20Guevara%2C%20Quito!3m2!1d-0.2123252!2d-78.49027099999999!4m5!1s0x91d59a053b841d4f%3A0x87419c'
            '5f54833f95!2sAv.%20Ladr%C3%B3n%20de%20Guevara%2C%20Quito!3m2!1d-0.21269649999999998!2d-78.4883717!4m5!1s0x91d59a19'
            '7f097c6b%3A0x3c1af04ffa11efa2!2sQueseras%20del%20Medio%2C%20Quito!3m2!1d-0.2126381!2d-78.4924832!4m5!1s0x91d59a1cc'
            '0619dad%3A0x54dd6f133ae10d3e!2sVicentina%2C%20Quito!3m2!1d-0.21725819999999998!2d-78.48519089999999!4m5!1s0x91d59a'
            '7553637835%3A0x55de1fba69ca7efb!2zR3XDoXB1bG8sIFF1aXRv!3m2!1d-0.1995461!2d-78.4773038!4m5!1s0x91d590ef44c0df3d%3A0'
            'x5db464ca514f791e!2sEl%20Cebollar%2C%20170157%20Quito!3m2!1d-0.1961152!2d-78.44156939999999!4m5!1s0x91d5911fc4a2d3'
            '01%3A0x75c0df62f9a789b0!2zQ3VtYmF5w6EsIFF1aXRv!3m2!1d-0.2107252!2d-78.44108949999999!4m5!1s0x91d59125160c7209%3A0x'
            '6470cc6234c2377f!2sComplejo%20Deportivo%20El%20Sauce%20-%20Club%20Deportivo%20El%20Nacional!3m2!1d-0.2094823999999'
            '9999!2d-78.4202152!4m5!1s0x91d59137d5222c07%3A0x9f0a3a00fdcfb2b2!2sTumbaco!3m2!1d-0.210691!2d-78.3955986!4m5!1s0x9'
            '1d593edbb0d6283%3A0x729f0e3e2236aae2!2sRedondel%20Ruta%20Viva%2C%20Puembo!3m2!1d-0.20938559999999998!2d-78.3653764'
            '!5e0!3m2!1ses-419!2sec!4v1737482445051!5m2!1ses-419!2sec'),
       (17, 'Trole Norte Estación',
        'EPN, Av. 12 de Octubre, Av. Coruña, Ernesto Noboa Camaño Av. República, A. 10 de Agosto, Av. Rio Coca, '
            'Av. Amazonas hasta estación del Trole de Norte',
        '6:50 AM - 8:00 PM',
        'Teatro',
        'https://www.google.com/maps/embed?pb=!1m70!1m12!1m3!1d63836.753745042115!2d-78.52547479428334!3d-0.186829168401446'
            '26!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m55!3e0!4m5!1s0x91d59a107e1cd44b%3A0x88a284f66939ed4!2sEPN%2C%20Avenid'
            'a%20Ladr%C3%B3n%20de%20Guevara%2C%20Quito!3m2!1d-0.2123252!2d-78.49027099999999!4m5!1s0x91d59a11f1259ccf%3A0xc1aa2'
            '81167783587!2sAve%2012%20de%20Octubre%2C%20Quito!3m2!1d-0.207753!2d-78.4896844!4m5!1s0x91d59a0ccd0183bf%3A0x133867'
            'f787c3fca8!2sAv.%20La%20Coru%C3%B1a%2C%20Quito!3m2!1d-0.2015864!2d-78.4828962!4m5!1s0x91d59a73f694d9b7%3A0xaa9e533'
            '6255eeac3!2sErnesto%20Noboa%20Caama%C3%B1o%2C%20170517%20Quito!3m2!1d-0.1977032!2d-78.4813053!4m5!1s0x91d59a63173d'
            'ab41%3A0x7412eb480c6fbb9e!2sAv.%20de%20la%20Rep%C3%BAblica%2C%20Quito!3m2!1d-0.18583149999999998!2d-78.4884861!4m5'
            '!1s0x91d59aa32f6932a5%3A0x9567df6f01c21342!2sAv.%2010%20de%20Agosto%2C%20Quito!3m2!1d-0.18847709999999998!2d-78.49'
            '21147!4m5!1s0x91d59aa043262481%3A0x3c9b95f1388491b5!2sAv.%20R%C3%ADo%20Coca%2C%20Quito!3m2!1d-0.1631963!2d-78.4764'
            '345!4m5!1s0x91d59a14be543f1d%3A0x2d3818550ca8f27!2sAv.%20R%C3%ADo%20Amazonas%2C%20Quito!3m2!1d-0.1774376!2d-78.485'
            '9215!4m5!1s0x91d59aa2be40eefb%3A0xf64890c95794975d!2sEstaci%C3%B3n%20del%20Trole%20Norte%2C%20Quito!3m2!1d-0.16383'
            '75!2d-78.4853172!5e0!3m2!1ses-419!2sec!4v1737482717751!5m2!1ses-419!2sec'),
       (18, 'El Recreo',
        'EPN, Av. Ladrón de Guevara , Av. Velasco Ibarra, Av. Napo, Av. Pedro Maldonado, Estación El Recreo.',
        '6:50 AM - 8:00 PM',
        'Teatro',
        'https://www.google.com/maps/embed?pb=!1m40!1m12!1m3!1d31918.269623726846!2d-78.51741761763492!3d-0.2386'
            '7584284919183!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m25!3e0!4m5!1s0x91d59a107e1cd44b%3A0x88a284f6693'
            '9ed4!2sEPN%2C%20Avenida%20Ladr%C3%B3n%20de%20Guevara%2C%20Quito!3m2!1d-0.2124413!2d-78.4905842!4m3!3m2!'
            '1d-0.21560269999999998!2d-78.4908821!4m3!3m2!1d-0.2376587!2d-78.50923139999999!4m3!3m2!1d-0.2459429!2d-'
            '78.5196485!4m5!1s0x91d599074de788f7%3A0x9a7b61c31c35ee8b!2sTerminal%20El%20Recreo%20(Parada)%2C%20Quito'
            '!3m2!1d-0.2519058!2d-78.5214481!5e0!3m2!1ses-419!2sec!4v1731201968360!5m2!1ses-419!2sec')
;

ALTER
DATABASE javaweb CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci;