

CREATE DATABASE federacao_clube;

USE federacao_clube;

-- federacao_clube.clube 
CREATE TABLE `clube` (
  `cnpj` varchar(20) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cnpj`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- federacao_clube.federacao 

CREATE TABLE `federacao` (
  `id_federacao` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_federacao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- federacao_clube.jogador 

CREATE TABLE `jogador` (
  `cpf` varchar(20) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- federacao_clube.patrocinadores 

CREATE TABLE `patrocinadores` (
  `cnpj` varchar(20) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cnpj`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- federacao_clube.posicao 

CREATE TABLE `posicao` (
  `sigla` varchar(2) NOT NULL,
  `nome` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`sigla`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- federacao_clube.campeonato 

CREATE TABLE `campeonato` (
  `idcampeonato` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `idfederação` int(11) DEFAULT NULL,
  `edicao` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcampeonato`),
  KEY `campeonato_federacao_FK` (`idfederação`),
  CONSTRAINT `campeonato_federacao_FK` FOREIGN KEY (`idfederação`) REFERENCES `federacao` (`id_federacao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- federacao_clube.jogador_time 

CREATE TABLE `jogador_time` (
  `cnpj_time` varchar(20) NOT NULL,
  `cpf_jogador` varchar(20) NOT NULL,
  `ano` int(11) NOT NULL,
  PRIMARY KEY (`cnpj_time`,`cpf_jogador`,`ano`),
  KEY `jogador_time_jogador_FK` (`cpf_jogador`),
  CONSTRAINT `jogador_time_jogador_FK` FOREIGN KEY (`cpf_jogador`) REFERENCES `jogador` (`cpf`),
  CONSTRAINT `jogador_time_time_FK` FOREIGN KEY (`cnpj_time`) REFERENCES `clube` (`cnpj`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- federacao_clube.jogador_time_posicao 

CREATE TABLE `jogador_time_posicao` (
  `cnpj_time` varchar(20) NOT NULL,
  `cpf_jogador` varchar(20) NOT NULL,
  `sigla_posicao` varchar(100) NOT NULL,
  PRIMARY KEY (`cnpj_time`,`cpf_jogador`,`sigla_posicao`),
  KEY `jogador_time_posicao_jogador_FK` (`cpf_jogador`),
  KEY `jogador_time_posicao_posicao_FK` (`sigla_posicao`),
  CONSTRAINT `jogador_time_posicao_jogador_FK` FOREIGN KEY (`cpf_jogador`) REFERENCES `jogador` (`cpf`),
  CONSTRAINT `jogador_time_posicao_posicao_FK` FOREIGN KEY (`sigla_posicao`) REFERENCES `posicao` (`sigla`),
  CONSTRAINT `jogador_time_posicao_time_FK` FOREIGN KEY (`cnpj_time`) REFERENCES `clube` (`cnpj`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- federacao_clube.partida 

CREATE TABLE `partida` (
  `idcampeonato` int(11) NOT NULL,
  `cnpj_time_mandante` varchar(20) NOT NULL,
  `cnpj_time_visitante` varchar(20) NOT NULL,
  `gols_mandante` int(11) DEFAULT NULL,
  `gols_visitante` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idcampeonato`,`cnpj_time_mandante`,`cnpj_time_visitante`),
  KEY `partida_time_FK` (`cnpj_time_mandante`),
  KEY `partida_time_FK_1` (`cnpj_time_visitante`),
  CONSTRAINT `partida_campeonato_FK` FOREIGN KEY (`idcampeonato`) REFERENCES `campeonato` (`idcampeonato`),
  CONSTRAINT `partida_time_FK` FOREIGN KEY (`cnpj_time_mandante`) REFERENCES `clube` (`cnpj`),
  CONSTRAINT `partida_time_FK_1` FOREIGN KEY (`cnpj_time_visitante`) REFERENCES `clube` (`cnpj`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- federacao_clube.time_amador 

CREATE TABLE `time_amador` (
  `cnpj_time` varchar(20) DEFAULT NULL,
  `ano_fundacao` int(11) DEFAULT NULL,
  KEY `time_amador_time_FK` (`cnpj_time`),
  CONSTRAINT `time_amador_time_FK` FOREIGN KEY (`cnpj_time`) REFERENCES `clube` (`cnpj`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- federacao_clube.time_profissional 

CREATE TABLE `time_profissional` (
  `cnpj_time` varchar(20) NOT NULL,
  `nome_diretor` varchar(45) DEFAULT NULL,
  `sobrenome_diretor` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cnpj_time`),
  CONSTRAINT `time_profissional_time_FK` FOREIGN KEY (`cnpj_time`) REFERENCES `clube` (`cnpj`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- federacao_clube.time_profissional_patrocinador 

CREATE TABLE `time_profissional_patrocinador` (
  `cnpj_time` varchar(20) NOT NULL,
  `cnpj_patrocinador` varchar(20) NOT NULL,
  PRIMARY KEY (`cnpj_time`,`cnpj_patrocinador`),
  KEY `time_profissional_patrocinador_patrocinadores_FK` (`cnpj_patrocinador`),
  CONSTRAINT `time_profissional_patrocinador_patrocinadores_FK` FOREIGN KEY (`cnpj_patrocinador`) REFERENCES `patrocinadores` (`cnpj`),
  CONSTRAINT `time_profissional_patrocinador_time_profissional_FK` FOREIGN KEY (`cnpj_time`) REFERENCES `time_profissional` (`cnpj_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- federacao_clube.escalacao 

CREATE TABLE `escalacao` (
  `cpf_jogador` varchar(20) NOT NULL,
  `idcampeonato` int(11) NOT NULL,
  `cnpj_time_mandante` varchar(20) NOT NULL,
  `cnpj_time_visitante` varchar(20) NOT NULL,
  `gols` int(11) DEFAULT 0,
  `sigla_posicao` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`cpf_jogador`,`idcampeonato`,`cnpj_time_mandante`,`cnpj_time_visitante`),
  KEY `escalacao_partida_FK` (`idcampeonato`,`cnpj_time_mandante`,`cnpj_time_visitante`),
  KEY `escalacao_posicao_FK` (`sigla_posicao`),
  CONSTRAINT `escalacao_jogador_FK` FOREIGN KEY (`cpf_jogador`) REFERENCES `jogador` (`cpf`),
  CONSTRAINT `escalacao_partida_FK` FOREIGN KEY (`idcampeonato`, `cnpj_time_mandante`, `cnpj_time_visitante`) REFERENCES `partida` (`idcampeonato`, `cnpj_time_mandante`, `cnpj_time_visitante`),
  CONSTRAINT `escalacao_posicao_FK` FOREIGN KEY (`sigla_posicao`) REFERENCES `posicao` (`sigla`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- federacao_clube.arbitro
CREATE TABLE `arbitro` (
  `rg` VARCHAR(20) NOT NULL,
  `nome` VARCHAR(100) DEFAULT NULL,
  `tipo_habilitacao` VARCHAR(20) DEFAULT NULL,
  `filiacao_materna` VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (rg)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- federacao_clube.partida_arbrito
CREATE TABLE `partida_arbitro` (
  `idcampeonato` INT NOT NULL,
  `cnpj_time_mandante` VARCHAR(20) NOT NULL,
  `cnpj_time_visitante` VARCHAR(20) NOT NULL,
  `rg_arbitro` VARCHAR(20) NOT NULL,
  PRIMARY KEY (idcampeonato, cnpj_time_mandante, cnpj_time_visitante, rg_arbitro),
  FOREIGN KEY (idcampeonato, cnpj_time_mandante, cnpj_time_visitante) REFERENCES partida(idcampeonato, cnpj_time_mandante, cnpj_time_visitante),
  FOREIGN KEY (rg_arbitro) REFERENCES arbitro(rg)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;