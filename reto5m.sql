-- -----------------------------------------------------
-- Schema reto5m
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `reto5m` ;

-- -----------------------------------------------------
-- Schema reto5m
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `reto5m` DEFAULT CHARACTER SET utf8 ;
USE `reto5m` ;

-- -----------------------------------------------------
-- Table `reto5m`.`Director`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `reto5m`.`Director` ;

CREATE TABLE IF NOT EXISTS `reto5m`.`Director` (
  `idDirector` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `apellido` VARCHAR(45) NULL,
  `nacionalidad` VARCHAR(45) NULL,
  PRIMARY KEY (`idDirector`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `reto5m`.`Pelicula`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `reto5m`.`Pelicula` ;

CREATE TABLE IF NOT EXISTS `reto5m`.`Pelicula` (
  `idPelicula` INT NOT NULL,
  `titulo` VARCHAR(45) NULL,
  `resumen` VARCHAR(250) NULL,
  `anno` INT NULL,
  `Director_idDirector` INT NOT NULL,
  PRIMARY KEY (`idPelicula`),
  INDEX `fk_Pelicula_Director1_idx` (`Director_idDirector` ASC) VISIBLE,
  CONSTRAINT `fk_Pelicula_Director1`
    FOREIGN KEY (`Director_idDirector`)
    REFERENCES `reto5m`.`Director` (`idDirector`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `reto5m`.`Serie`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `reto5m`.`Serie` ;

CREATE TABLE IF NOT EXISTS `reto5m`.`Serie` (
  `idSerie` INT NOT NULL,
  `titulo` VARCHAR(45) NULL,
  `episodios` INT NULL,
  `temporadas` INT NULL,
  PRIMARY KEY (`idSerie`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `reto5m`.`Contenidos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `reto5m`.`Contenidos` ;

CREATE TABLE IF NOT EXISTS `reto5m`.`Contenidos` (
  `idContenidos` INT NOT NULL,
  `Pelicula_idPelicula1` INT NULL,
  `Serie_idSerie1` INT NULL,
  PRIMARY KEY (`idContenidos`),
  INDEX `fk_Contenidos_Pelicula_idx` (`Pelicula_idPelicula1` ASC) VISIBLE,
  INDEX `fk_Contenidos_Serie1_idx` (`Serie_idSerie1` ASC) VISIBLE,
  CONSTRAINT `fk_Contenidos_Pelicula`
    FOREIGN KEY (`Pelicula_idPelicula1`)
    REFERENCES `reto5m`.`Pelicula` (`idPelicula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Contenidos_Serie1`
    FOREIGN KEY (`Serie_idSerie1`)
    REFERENCES `reto5m`.`Serie` (`idSerie`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `reto5m`.`Usuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `reto5m`.`Usuario` ;

CREATE TABLE IF NOT EXISTS `reto5m`.`Usuario` (
  `alias` VARCHAR(45) NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `apellido` VARCHAR(45) NULL,
  `correo` VARCHAR(45) NULL,
  `celular` VARCHAR(45) NULL,
  `contrasenna` VARCHAR(45) NULL,
  `nacimiento` DATE NULL,
  PRIMARY KEY (`alias`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Transmisiones`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `reto5m`.`Transmisiones` ;

CREATE TABLE IF NOT EXISTS `reto5m`.`Transmisiones` (
  `idTransmisiones` VARCHAR(45) NOT NULL,
  `Usuario_alias` VARCHAR(45) NOT NULL,
  `Contenidos_idContenidos` INT NOT NULL,
  `fecha_hora` DATETIME NOT NULL,
  INDEX `fk_Transmisiones_Usuario1_idx` (`Usuario_alias` ASC) VISIBLE,
  PRIMARY KEY (`idTransmisiones`),
  CONSTRAINT `fk_Transmisiones_Contenidos1`
    FOREIGN KEY (`Contenidos_idContenidos`)
    REFERENCES `reto5m`.`Contenidos` (`idContenidos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Transmisiones_Usuario1`
    FOREIGN KEY (`Usuario_alias`)
    REFERENCES `reto5m`.`Usuario` (`alias`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

