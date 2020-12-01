CREATE TABLE IF NOT EXISTS `Serie` (
  `idSerie` INT NOT NULL,
  `Title` VARCHAR(45) NOT NULL,
  `NumSeason` INT NOT NULL,
  `NumEpisodes` INT NOT NULL,
  PRIMARY KEY (`idSerie`));
INSERT INTO `serie` (`idSerie`,`Title`,`NumEpisodes`,`NumSeason`)
VALUES ("101","The walking dead",153,11);
INSERT INTO `serie` (`idSerie`,`Title`,`NumEpisodes`,`NumSeason`)
VALUES ("102","Viaje a las estrellas: la serie original",80,3);
INSERT INTO `serie` (`idSerie`,`Title`,`NumEpisodes`,`NumSeason`)
VALUES ("103","Glow",30,3);
INSERT INTO `serie` (`idSerie`,`Title`,`NumEpisodes`,`NumSeason`)
VALUES ("104","La casa de papel",31,4);
INSERT INTO `serie` (`idSerie`,`Title`,`NumEpisodes`,`NumSeason`)
VALUES ("105","Friends",236,10);
INSERT INTO `serie` (`idSerie`,`Title`,`NumEpisodes`,`NumSeason`)
VALUES ("106","Arrow",170,8);
INSERT INTO `serie` (`idSerie`,`Title`,`NumEpisodes`,`NumSeason`)
VALUES ("107","The big bang theory",279,12);
INSERT INTO `serie` (`idSerie`,`Title`,`NumEpisodes`,`NumSeason`)
VALUES ("108","Vikingos",79,6);