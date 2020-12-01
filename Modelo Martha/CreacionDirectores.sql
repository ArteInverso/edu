CREATE TABLE IF NOT EXISTS `Director` (
  `idDirector` INT NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Lastname` VARCHAR(45) NOT NULL,
  `Nacionalidad` VARCHAR(45) NULL,
  PRIMARY KEY (`idDirector`));
INSERT INTO `director`
(`idDirector`,
`Name`,
`Lastname`,
`Nacionalidad`)
VALUES
(101,"Hayo", "Miyazaki","japones");
INSERT INTO `director`
VALUES
(102,"Joss", "Whedon","Estadounidense");
INSERT INTO `director`
VALUES
(103,"Christopher", "Nolan","Estadounidense");
INSERT INTO `director`
VALUES
(104,"Bong", "Joon-ho","Coreano");
INSERT INTO `director`
VALUES
(105,"Vincent","Ward","Neozelandes");