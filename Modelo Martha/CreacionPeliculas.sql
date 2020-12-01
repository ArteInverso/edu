CREATE TABLE IF NOT EXISTS `Pelicula` (
  `idPelicula` INT NOT NULL,
  `Title` VARCHAR(45) NOT NULL,
  `Summary` VARCHAR(250) NULL,
  `Year` INT NULL,
  `Director_idDirector` INT NOT NULL,
  PRIMARY KEY (`idPelicula`, `Director_idDirector`),
    FOREIGN KEY (`Director_idDirector`)
    REFERENCES `Director` (`idDirector`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
INSERT INTO `pelicula`
(`idPelicula`,
`Title`,
`Summary`,
`Year`,
`Director_idDirector`)
VALUES
(1,"Los Vengadores",
"Pelicula de superheroes basada en Marvel Comics. Nick Fury director de SHIELD recluta a Tony Stark, Steve Rogers, Bruce Banner y Thor para forma un equipo y evitar que Loki, hermano de Thor, se apodere de la tierra.",
1990,102);
INSERT INTO `pelicula`
(`idPelicula`,
`Title`,
`Summary`,
`Year`,
`Director_idDirector`)
VALUES
(2,"Interestelar",
"Pelicula de ciencia ficción, donde la humanidad lucha por sobrevivir. La pelicula cuenta una historia de un grupo de astronautas que viajan a traves de un agujero de gusano en busca de un nuevo hogar.",
2014,103);
INSERT INTO `pelicula`
VALUES
(3,"El viaje de Chihiro",
"Pelicula de animación japonesa. Es la historia de una niña de 12 años, quien se ve atrapada por un mundo mágico y sobrenatural, teniendo como misión buscar su libertad y la de sus padres y regresar al mundo real.",
2001,101);
INSERT INTO `pelicula`
VALUES
(4,"Parasitos",
"Pelicula de drama, suspenso y humor negro. Toca temas como las diferencias sociales y vulnerabilidad del espiritu humano.",
2019,104);
INSERT INTO `pelicula`
VALUES
(5,"Mas alla de los sueños",
"Pelicula de drama, narra una historia trágica de una familia, donde el padre va en busca de sus esposa al mas allá para recuperarla.",
1998,105);