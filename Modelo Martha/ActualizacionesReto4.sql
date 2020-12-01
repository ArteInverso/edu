UPDATE `peliculas`.`pelicula`
SET `Year` = 2012
WHERE `idPelicula` = 1;

UPDATE `peliculas`.`usuario`
SET
`Celphone` = "3115678432"
WHERE `Nickname` = "ninja";

DELETE FROM `peliculas`.`transmisiones`
WHERE Usuario_Nickname="green" and Contenidos_IdContenido= 4;
