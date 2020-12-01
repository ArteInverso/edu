CREATE TABLE IF NOT EXISTS `Usuario` (
  `Nickname` VARCHAR(45) NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Lastname` VARCHAR(45) NOT NULL,
  `Email` VARCHAR(45) NULL,
  `Celphone` VARCHAR(25) NULL,
  `Password` VARCHAR(45) NOT NULL,
  `BirthDate` DATE NULL,
  PRIMARY KEY (`Nickname`));
 INSERT INTO `usuario`
(`Nickname`,
`Name`,
`Lastname`,
`Email`,
`Celphone`,
`Password`,
`BirthDate`)
VALUES
("lucky", "Pedro", "Perez",null,null,"gato",null);
INSERT INTO `usuario`
VALUES
("malopez", "Maria", "Lopez",null,null,"perro",null);
INSERT INTO `usuario`
VALUES
("diva", "Ana", "Diaz",null,null,"loro",null);
INSERT INTO `usuario`
VALUES
("dreamer", "Luis","Rojas",null,null,"tigre",null);
INSERT INTO `usuario`
VALUES
("ninja", "Andres","Cruz",null,null,"leon",null);
INSERT INTO `usuario`
VALUES
("neon", "Nelson","Ruiz",null,null,"dolly",null);
INSERT INTO `usuario`
VALUES
("rose", "Claudia","Mendez",null,null,"carnaval",null);
INSERT INTO `usuario`
VALUES
("green", "Jorge","Rodriguez",null,null,"jupiter",null);