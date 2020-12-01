-- -----------------------------------------------------
-- Schema Peliculas
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `reto5` ;

-- -----------------------------------------------------
-- Schema Peliculas
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `reto5` DEFAULT CHARACTER SET utf8 ;
USE `reto5` ;

-- -----------------------------------------------------
-- Table `Peliculas`.`Director`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `reto5`.`Director` ;

CREATE TABLE IF NOT EXISTS `reto5`.`Director` (
  `idDirector` INT NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Lastname` VARCHAR(45) NOT NULL,
  `Nacionalidad` VARCHAR(45) NULL,
  PRIMARY KEY (`idDirector`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Peliculas`.`Pelicula`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `reto5`.`Pelicula` ;

CREATE TABLE IF NOT EXISTS `reto5`.`Pelicula` (
  `idPelicula` INT NOT NULL,
  `Title` VARCHAR(45) NOT NULL,
  `Summary` VARCHAR(250) NULL,
  `Year` INT NULL,
  `Director_idDirector` INT NOT NULL,
  PRIMARY KEY (`idPelicula`, `Director_idDirector`),
  INDEX `fk_Pelicula_Director_idx` (`Director_idDirector` ASC) VISIBLE,
  CONSTRAINT `fk_Pelicula_Director`
    FOREIGN KEY (`Director_idDirector`)
    REFERENCES `reto5`.`Director` (`idDirector`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Peliculas`.`Serie`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `reto5`.`Serie` ;

CREATE TABLE IF NOT EXISTS `reto5`.`Serie` (
  `idSerie` INT NOT NULL,
  `Title` VARCHAR(45) NOT NULL,
  `NumSeason` INT NOT NULL,
  `NumEpisodes` INT NOT NULL,
  PRIMARY KEY (`idSerie`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Peliculas`.`Usuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `reto5`.`Usuario` ;

CREATE TABLE IF NOT EXISTS `reto5`.`Usuario` (
  `Nickname` VARCHAR(45) NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Lastname` VARCHAR(45) NOT NULL,
  `Email` VARCHAR(45) NULL,
  `Cellphone` VARCHAR(25) NULL,
  `Password` VARCHAR(45) NOT NULL,
  `BirthDate` DATE NULL,
  PRIMARY KEY (`Nickname`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Peliculas`.`Contenidos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `reto5`.`Contenidos` ;

CREATE TABLE IF NOT EXISTS `reto5`.`Contenidos` (
  `IdContenido` INT NOT NULL,
  `Pelicula_idPelicula` INT NOT NULL,
  `Serie_idSerie` INT NOT NULL,
  PRIMARY KEY (`Serie_idSerie`, `IdContenido`, `Pelicula_idPelicula`),
  INDEX `fk_Pelicula_has_Serie_Serie1_idx` (`Serie_idSerie` ASC) VISIBLE,
  INDEX `fk_Pelicula_has_Serie_Pelicula1_idx` (`Pelicula_idPelicula` ASC) VISIBLE,
  CONSTRAINT `fk_Pelicula_has_Serie_Pelicula1`
    FOREIGN KEY (`Pelicula_idPelicula`)
    REFERENCES `reto5`.`Pelicula` (`idPelicula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pelicula_has_Serie_Serie1`
    FOREIGN KEY (`Serie_idSerie`)
    REFERENCES `reto5`.`Serie` (`idSerie`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `Peliculas`.`Transmisiones`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `reto5`.`Transmisiones` ;

CREATE TABLE IF NOT EXISTS `Transmisiones` (
  `Usuario_Nickname` VARCHAR(45) NOT NULL,
  `Contenidos_IdContenido` INT NOT NULL,
  `FecTransmision` DATETIME NOT NULL,
  PRIMARY KEY (`Usuario_Nickname`, `Contenidos_IdContenido`),
  INDEX `fk_Contenido_has_Usuario_Usuario1_idx` (`Usuario_Nickname` ASC) VISIBLE,
    FOREIGN KEY (`Usuario_Nickname`)
    REFERENCES `Usuario` (`Nickname`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
