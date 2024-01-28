-- nutricao.taco_amino definition

CREATE TABLE `taco_amino` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `numero` int(11) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `triptofano` decimal(4,2) NOT NULL,
  `treonina` decimal(4,2) NOT NULL,
  `isoleucina` decimal(4,2) NOT NULL,
  `leucina` decimal(4,2) NOT NULL,
  `lisina` decimal(4,2) NOT NULL,
  `metionina` decimal(4,2) NOT NULL,
  `cistina` decimal(4,2) NOT NULL,
  `fenilalanina` decimal(4,2) NOT NULL,
  `tirosina` decimal(4,2) NOT NULL,
  `valina` decimal(4,2) NOT NULL,
  `arginina` decimal(4,2) NOT NULL,
  `histidina` decimal(4,2) NOT NULL,
  `alanina` decimal(4,2) NOT NULL,
  `acido_aspartico` decimal(4,2) NOT NULL,
  `acido_glutamico` decimal(4,2) NOT NULL,
  `glicina` decimal(4,2) NOT NULL,
  `prolina` decimal(4,2) NOT NULL,
  `serina` decimal(4,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO nutricao.taco_amino (numero,descricao,triptofano,treonina,isoleucina,leucina,lisina,metionina,cistina,fenilalanina,tirosina,valina,arginina,histidina,alanina,acido_aspartico,acido_glutamico,glicina,prolina,serina) VALUES
	 (56,'Pastel, de carne, frito',0.12,0.30,0.41,0.81,0.39,0.19,0.07,0.50,0.36,0.50,0.41,0.18,0.31,0.54,3.37,0.30,1.18,0.47),
	 (80,'Alface, roxa, crua',0.00,0.03,0.03,0.06,0.05,0.01,0.00,0.04,0.04,0.04,0.06,0.02,0.05,0.05,0.11,0.04,0.03,0.03),
	 (83,'Alho-poró, cru',0.01,0.03,0.04,0.07,0.08,0.01,0.00,0.05,0.06,0.05,0.08,0.02,0.06,0.05,0.18,0.05,0.03,0.04),
	 (123,'Farinha, de puba',0.00,0.01,0.03,0.04,0.02,0.00,0.02,0.02,0.00,0.02,0.02,0.04,0.04,0.09,0.32,0.01,0.06,0.01),
	 (147,'Quiabo, cru',0.01,0.05,0.04,0.08,0.07,0.01,0.00,0.05,0.03,0.06,0.11,0.02,0.07,0.27,0.33,0.05,0.04,0.06),
	 (151,'Repolho, roxo, refogado',0.01,0.03,0.06,0.07,0.07,0.01,0.00,0.05,0.04,0.07,0.07,0.04,0.10,0.17,0.53,0.06,0.08,0.08),
	 (176,'Banana, doce em barra',0.00,0.01,0.02,0.04,0.00,0.00,0.02,0.01,0.01,0.03,0.01,0.03,0.02,0.08,0.09,0.00,0.00,0.03),
	 (185,'Cajá, polpa, congelada',0.00,0.02,0.02,0.04,0.03,0.01,0.00,0.02,0.02,0.03,0.03,0.01,0.06,0.07,0.08,0.02,0.02,0.02),
	 (224,'Mamão, doce em calda, drenado',0.00,0.01,0.01,0.01,0.00,0.01,0.01,0.00,0.02,0.00,0.02,0.03,0.01,0.04,0.02,0.00,0.00,0.03),
	 (227,'Mamão verde, doce em calda, drenado',0.00,0.02,0.00,0.00,0.00,0.01,0.01,0.01,0.02,0.01,0.02,0.04,0.01,0.01,0.01,0.01,0.01,0.03);
INSERT INTO nutricao.taco_amino (numero,descricao,triptofano,treonina,isoleucina,leucina,lisina,metionina,cistina,fenilalanina,tirosina,valina,arginina,histidina,alanina,acido_aspartico,acido_glutamico,glicina,prolina,serina) VALUES
	 (229,'Manga, Palmer, crua',0.02,0.01,0.02,0.03,0.02,0.01,0.00,0.02,0.01,0.02,0.02,0.01,0.03,0.03,0.04,0.02,0.02,0.02),
	 (248,'Pitanga, polpa, congelada',0.00,0.01,0.01,0.02,0.02,0.00,0.00,0.01,0.01,0.01,0.02,0.00,0.02,0.03,0.04,0.01,0.01,0.01),
	 (323,'Apresuntado',0.16,0.67,0.74,1.16,1.26,0.45,0.24,0.69,0.59,0.79,1.19,0.77,0.86,1.36,2.54,0.76,0.67,0.64),
	 (424,'Mortadela',0.14,0.57,0.61,0.94,1.05,0.39,0.30,0.59,0.52,0.66,1.08,0.48,0.88,1.18,2.16,1.00,0.74,0.60),
	 (438,'Presunto, com capa de gordura',0.11,0.73,0.71,1.17,1.35,0.47,0.23,0.67,0.58,0.74,1.22,0.91,0.90,1.41,2.39,0.81,0.70,0.68),
	 (439,'Presunto, sem capa de gordura',0.15,0.71,0.69,1.15,1.28,0.48,0.22,0.63,0.55,0.72,1.20,0.89,0.88,1.37,2.36,0.73,0.65,0.68),
	 (441,'Quibe, cru',0.02,0.35,0.40,0.78,0.93,0.23,0.04,0.46,0.45,0.48,0.85,0.50,0.65,1.00,2.16,0.51,0.47,0.45),
	 (443,'Salame',0.28,1.22,1.21,2.02,0.07,0.79,0.35,1.08,0.97,1.30,1.96,1.30,1.61,2.34,4.24,1.55,1.38,1.15),
	 (463,'Queijo, mozarela',0.38,1.05,1.39,2.38,2.06,0.85,0.36,1.27,1.61,1.77,1.13,0.86,0.79,1.76,5.91,0.55,2.76,1.50),
	 (467,'Queijo, prato',0.48,1.01,1.21,2.19,1.94,0.82,0.36,1.13,1.43,1.47,1.14,0.84,0.81,1.66,5.33,0.56,2.76,1.54);
INSERT INTO nutricao.taco_amino (numero,descricao,triptofano,treonina,isoleucina,leucina,lisina,metionina,cistina,fenilalanina,tirosina,valina,arginina,histidina,alanina,acido_aspartico,acido_glutamico,glicina,prolina,serina) VALUES
	 (468,'Maria mole',0.00,0.03,0.05,0.10,0.10,0.02,0.02,0.06,0.02,0.07,0.33,0.03,0.41,0.23,0.44,0.99,0.58,0.09),
	 (501,'Doce, de leite, cremoso',0.03,0.23,0.28,0.56,0.34,0.12,0.02,0.23,0.21,0.34,0.18,0.07,0.22,0.44,1.28,0.09,0.57,0.28),
	 (506,'Marmelada',0.20,0.02,0.00,0.01,0.01,0.01,0.01,0.01,0.02,0.01,0.02,0.04,0.01,0.05,0.01,0.02,0.01,0.04),
	 (509,'Quindim',0.07,0.21,0.23,0.42,0.33,0.10,0.03,0.20,0.16,0.26,0.48,0.06,0.31,0.36,0.75,0.16,0.22,0.36),
	 (510,'Rapadura',0.02,0.02,0.00,0.01,0.01,0.01,0.02,0.01,0.03,0.01,0.03,0.06,0.00,0.16,0.04,0.02,0.02,0.05),
	 (580,'Pé-de-moleque, amendoim',0.07,0.34,0.50,0.97,0.48,0.14,0.09,0.75,0.54,0.58,1.87,0.25,0.63,1.80,3.09,0.91,0.62,0.69);