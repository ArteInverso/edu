CREATE TABLE IF NOT EXISTS `Peliculas`.`Director` (
  `idDirector` INT NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Lastname` VARCHAR(45) NOT NULL,
  `Nacionalidad` VARCHAR(45) NULL,
  PRIMARY KEY (`idDirector`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Peliculas`.`Pelicula`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Peliculas`.`Pelicula` (
  `idPelicula` INT NOT NULL,
  `Title` VARCHAR(45) NOT NULL,
  `Summary` VARCHAR(250) NULL,
  `Year` INT NULL,
  `Director_idDirector` INT NOT NULL,
  PRIMARY KEY (`idPelicula`, `Director_idDirector`),
  INDEX `fk_Pelicula_Director_idx` (`Director_idDirector` ASC) VISIBLE,
  CONSTRAINT `fk_Pelicula_Director`
    FOREIGN KEY (`Director_idDirector`)
    REFERENCES `Peliculas`.`Director` (`idDirector`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Peliculas`.`Serie`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Peliculas`.`Serie` (
  `idSerie` INT NOT NULL,
  `Title` VARCHAR(45) NOT NULL,
  `NumSeason` INT NOT NULL,
  `NumEpisodes` INT NOT NULL,
  PRIMARY KEY (`idSerie`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Peliculas`.`Usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Peliculas`.`Usuario` (
  `Nickname` VARCHAR(45) NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Lastname` VARCHAR(45) NOT NULL,
  `Email` VARCHAR(45) NULL,
  `Celphone` VARCHAR(25) NULL,
  `Password` VARCHAR(45) NOT NULL,
  `BirthDate` DATE NULL,
  PRIMARY KEY (`Nickname`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Peliculas`.`Contenidos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Peliculas`.`Contenidos` (
  `IdContenido` INT NOT NULL,
  `Pelicula_idPelicula` INT NULL,
  `Serie_idSerie` INT NULL,
  PRIMARY KEY (`IdContenido`),
  INDEX `fk_Pelicula_has_Serie_Serie1_idx` (`Serie_idSerie` ASC) VISIBLE,
  INDEX `fk_Pelicula_has_Serie_Pelicula1_idx` (`Pelicula_idPelicula` ASC) VISIBLE,
  CONSTRAINT `fk_Pelicula_has_Serie_Pelicula1`
    FOREIGN KEY (`Pelicula_idPelicula`)
    REFERENCES `Peliculas`.`Pelicula` (`idPelicula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pelicula_has_Serie_Serie1`
    FOREIGN KEY (`Serie_idSerie`)
    REFERENCES `Peliculas`.`Serie` (`idSerie`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Peliculas`.`Transmisiones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Peliculas`.`Transmisiones` (
  `Usuario_Nickname` VARCHAR(45) NOT NULL,
  `Contenidos_IdContenido` INT NOT NULL,
  `FecTransmision` DATETIME NOT NULL,
  PRIMARY KEY (`Usuario_Nickname`, `Contenidos_IdContenido`),
  INDEX `fk_Contenido_has_Usuario_Usuario1_idx` (`Usuario_Nickname` ASC) VISIBLE,
  INDEX `fk_Transmisiones_Contenidos1_idx` (`Contenidos_IdContenido` ASC) VISIBLE,
  CONSTRAINT `fk_Contenido_has_Usuario_Usuario1`
    FOREIGN KEY (`Usuario_Nickname`)
    REFERENCES `Peliculas`.`Usuario` (`Nickname`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Transmisiones_Contenidos1`
    FOREIGN KEY (`Contenidos_IdContenido`)
    REFERENCES `Peliculas`.`Contenidos` (`IdContenido`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
INSERT INTO `peliculas`.`serie`
(`idSerie`,
`Title`,
`NumEpisodes`,
`NumSeason`)
VALUES
("101","The walking dead",153,11);

INSERT INTO `peliculas`.`serie`
VALUES
("102","Viaje a las estrellas: la serie original",80,3);

INSERT INTO `peliculas`.`serie`
VALUES
("103","Glow",30,3);

INSERT INTO `peliculas`.`serie`
VALUES
("104","La casa de papel",31,4);

INSERT INTO `peliculas`.`serie`
VALUES
("105","Friends",236,10);

INSERT INTO `peliculas`.`serie`
VALUES
("106","Arrow",170,8);

INSERT INTO `peliculas`.`serie`
VALUES
("107","The big bang theory",279,12);

INSERT INTO `peliculas`.`serie`
VALUES
("108","Vikingos",79,6);

INSERT INTO `peliculas`.`usuario`
(`Nickname`,
`Name`,
`Lastname`,
`Email`,
`Celphone`,
`Password`,
`BirthDate`)
VALUES
("lucky", "Pedro", "Perez",null,null,"gato",null);

INSERT INTO `peliculas`.`usuario`
VALUES
("malopez", "Maria", "Lopez",null,null,"perro",null);

INSERT INTO `peliculas`.`usuario`
VALUES
("diva", "Ana", "Diaz",null,null,"loro",null);

INSERT INTO `peliculas`.`usuario`
VALUES
("dreamer", "Luis","Rojas",null,null,"tigre",null);

INSERT INTO `peliculas`.`usuario`
VALUES
("ninja", "Andres","Cruz",null,null,"leon",null);

INSERT INTO `peliculas`.`usuario`
VALUES
("neon", "Nelson","Ruiz",null,null,"dolly",null);

INSERT INTO `peliculas`.`usuario`
VALUES
("rose", "Claudia","Mendez",null,null,"carnaval",null);

INSERT INTO `peliculas`.`usuario`
VALUES
("green", "Jorge","Rodriguez",null,null,"jupiter",null);

INSERT INTO `peliculas`.`director`
(`idDirector`,
`Name`,
`Lastname`,
`Nacionalidad`)
VALUES
(101,"Hayo", "Miyazaki","japones");

INSERT INTO `peliculas`.`director`
VALUES
(102,"Joss", "Whedon","Estadounidense");

INSERT INTO `peliculas`.`director`
VALUES
(103,"Christopher", "Nolan","Estadounidense");

INSERT INTO `peliculas`.`director`
VALUES
(104,"Bong", "Joon-ho","Coreano");

INSERT INTO `peliculas`.`director`
VALUES
(105,"Vincent","Ward","Neozelandes");

INSERT INTO `peliculas`.`pelicula`
(`idPelicula`,
`Title`,
`Summary`,
`Year`,
`Director_idDirector`)
VALUES
(1,"Los Vengadores",
"Pelicula de superheroes basada en Marvel Comics. Nick Fury director de SHIELD recluta a Tony Stark, Steve Rogers, Bruce Banner y Thor para forma un equipo y evitar que Loki, hermano de Thor, se apodere de la tierra.",
1990,102);
INSERT INTO `peliculas`.`pelicula`
(`idPelicula`,
`Title`,
`Summary`,
`Year`,
`Director_idDirector`)
VALUES
(2,"Interestelar",
"Pelicula de ciencia ficción, donde la humanidad lucha por sobrevivir. La pelicula cuenta una historia de un grupo de astronautas que viajan a traves de un agujero de gusano en busca de un nuevo hogar.",
2014,103);
INSERT INTO `peliculas`.`pelicula`
VALUES
(3,"El viaje de Chihiro",
"Pelicula de animación japonesa. Es la historia de una niña de 12 años, quien se ve atrapada por un mundo mágico y sobrenatural, teniendo como misión buscar su libertad y la de sus padres y regresar al mundo real.",
2001,101);
INSERT INTO `peliculas`.`pelicula`
VALUES
(4,"Parasitos",
"Pelicula de drama, suspenso y humor negro. Toca temas como las diferencias sociales y vulnerabilidad del espiritu humano.",
2019,104);
INSERT INTO `peliculas`.`pelicula`
VALUES
(4,"Mas alla de los sueños",
"Pelicula de drama, narra una historia trágica de una familia, donde el padre va en busca de sus esposa al mas allá para recuperarla.",
1998,105);

INSERT INTO `peliculas`.`transmisiones`
(`Usuario_Nickname`,
`Contenidos_IdContenido`,
`FecTransmision`)
VALUES ("lucky",1,'2017-10-25 20:00:00');

INSERT INTO `peliculas`.`transmisiones`
VALUES ("lucky",4,'2019-03-15 18:30:00');

INSERT INTO `peliculas`.`transmisiones`
VALUES ("lucky",9,'2019-05-20 20:30:00');

INSERT INTO `peliculas`.`transmisiones`
VALUES ("malopez",1,'2018-05-20 20:30:00');

INSERT INTO `peliculas`.`transmisiones`
VALUES ("malopez",9,'2020-01-20 20:30:00');

INSERT INTO `peliculas`.`transmisiones`
VALUES ("diva",2,'2019-05-20 20:30:00');

INSERT INTO `peliculas`.`transmisiones`
VALUES ("diva",3,'2018-06-22 21:30:00');

INSERT INTO `peliculas`.`transmisiones`
VALUES ("diva",6,'2020-03-17 15:30:20');

INSERT INTO `peliculas`.`transmisiones`
VALUES ("dreamer",6,'2020-03-17 15:30:20');

INSERT INTO `peliculas`.`transmisiones`
VALUES ("dreamer",7,'2020-04-10 18:30:20');

INSERT INTO `peliculas`.`transmisiones`
VALUES ("ninja",8,'2020-02-17 20:30:20');

INSERT INTO `peliculas`.`transmisiones`
VALUES ("ninja",9,'2020-02-20 16:30:20');

INSERT INTO `peliculas`.`transmisiones`
VALUES ("ninja",11,'2020-03-27 18:30:20');

INSERT INTO `peliculas`.`transmisiones`
VALUES ("rose",10,'2020-03-20 21:30:20');

INSERT INTO `peliculas`.`transmisiones`
VALUES ("green",2,'2020-01-10 17:30:20');

INSERT INTO `peliculas`.`transmisiones`
VALUES ("green",4,'2020-02-15 20:30:20');

INSERT INTO `peliculas`.`transmisiones`
VALUES ("green",5,'2020-03-17 18:30:20');