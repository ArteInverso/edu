CREATE TABLE IF NOT EXISTS `Contenidos` (
  `IdContenido` INT NOT NULL,
  `Pelicula_idPelicula` INT NULL,
  `Serie_idSerie` INT NULL,
  PRIMARY KEY (`IdContenido`),
  INDEX `fk_Pelicula_has_Serie_Serie1_idx` (`Serie_idSerie` ASC) VISIBLE,
  INDEX `fk_Pelicula_has_Serie_Pelicula1_idx` (`Pelicula_idPelicula` ASC) VISIBLE,
    FOREIGN KEY (`Pelicula_idPelicula`)
    REFERENCES `Pelicula` (`idPelicula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    FOREIGN KEY (`Serie_idSerie`)
    REFERENCES `Serie` (`idSerie`)
    );
INSERT INTO `contenidos`
(`IdContenido`,
`Pelicula_idPelicula`,
`Serie_idSerie`)
VALUES (1,1,null);
INSERT INTO `contenidos`
VALUES (2,2,null);
INSERT INTO `contenidos`
VALUES (3,3,null);
INSERT INTO `contenidos`
VALUES (4,4,null);
INSERT INTO `contenidos`
VALUES (5,5,null);
INSERT INTO `contenidos`
VALUES (6,null,101);
INSERT INTO `contenidos`
VALUES (7,null,102);
INSERT INTO `contenidos`
VALUES (8,null,103);
INSERT INTO `contenidos`
VALUES (9,null,104);
INSERT INTO `contenidos`
VALUES (10,null,105);
INSERT INTO `contenidos`
VALUES (11,null,106);
INSERT INTO `contenidos`
VALUES (12,null,107);
INSERT INTO `contenidos`
VALUES (13,null,108);