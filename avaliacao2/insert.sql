
INSERT INTO federacao_clube.federacao (id_federacao, nome) VALUES (1, 'CBF');
SELECT * FROM federacao_clube.federacao WHERE id_federacao = 1;

INSERT INTO federacao_clube.campeonato (idcampeonato,nome,idfederação,edicao) VALUES
	 (1,'CAMPEONATO BRASILEIRO',1,2024),
	 (2,'CAMPEONATO BRASILEIRO',1,2023);
SELECT * FROM federacao_clube.campeonato;
SELECT * FROM federacao_clube.campeonato WHERE idcampeonato IN (1, 2);

INSERT INTO federacao_clube.clube (cnpj,nome) VALUES
	 ('123','GRÊMIO'),
	 ('321','BAHIA'),
	 ('456','VITÓRIA'),
	 ('654','FLAMENGO');
SELECT * FROM federacao_clube.clube;


INSERT INTO federacao_clube.jogador (cpf,nome) VALUES
	 ('10','A9'),
	 ('11','A10'),
	 ('12','A11'),
	 ('13','B1'),
	 ('14','B2'),
	 ('15','B3'),
	 ('16','B4'),
	 ('17','B5'),
	 ('18','B6'),
	 ('19','B7');
INSERT INTO federacao_clube.jogador (cpf,nome) VALUES
	 ('2','A1'),
	 ('20','B8'),
	 ('21','B9'),
	 ('22','B10'),
	 ('23','B11'),
	 ('24','C1'),
	 ('25','C2'),
	 ('26','C3'),
	 ('27','C4'),
	 ('28','C5');
INSERT INTO federacao_clube.jogador (cpf,nome) VALUES
	 ('29','C6'),
	 ('3','A2'),
	 ('30','C7'),
	 ('31','C8'),
	 ('32','C9'),
	 ('33','C10'),
	 ('34','C11'),
	 ('35','D1'),
	 ('36','D2'),
	 ('37','D3');
INSERT INTO federacao_clube.jogador (cpf,nome) VALUES
	 ('38','D4'),
	 ('39','D5'),
	 ('4','A3'),
	 ('40','D6'),
	 ('41','D7'),
	 ('42','D8'),
	 ('43','D9'),
	 ('44','D10'),
	 ('45','D11'),
	 ('5','A4');
INSERT INTO federacao_clube.jogador (cpf,nome) VALUES
	 ('6','A5'),
	 ('7','A6'),
	 ('8','A7'),
	 ('9','A8');
SELECT * FROM federacao_clube.jogador;

INSERT INTO federacao_clube.partida (idcampeonato,cnpj_time_mandante,cnpj_time_visitante,gols_mandante,gols_visitante) VALUES
	 (1,'123','321',NULL,NULL),
	 (1,'123','456',NULL,NULL),
	 (1,'123','654',NULL,NULL),
	 (1,'321','123',NULL,NULL),
	 (1,'321','456',NULL,NULL),
	 (1,'321','654',NULL,NULL),
	 (1,'456','123',NULL,NULL),
	 (1,'456','321',NULL,NULL),
	 (1,'456','654',NULL,NULL),
	 (1,'654','123',NULL,NULL),
	 (1,'654','321',NULL,NULL),
	 (1,'654','456',NULL,NULL);
SELECT * FROM federacao_clube.partida;

SET SQL_SAFE_UPDATES = 0; -- desabilitando o modo de atualização segura temporariamente

-- atualização com valores específicos para gols
UPDATE federacao_clube.partida
SET 
    gols_mandante = CASE
        WHEN cnpj_time_mandante = '123' AND cnpj_time_visitante = '321' THEN 2
        WHEN cnpj_time_mandante = '123' AND cnpj_time_visitante = '456' THEN 1
        WHEN cnpj_time_mandante = '123' AND cnpj_time_visitante = '654' THEN 3
        WHEN cnpj_time_mandante = '321' AND cnpj_time_visitante = '123' THEN 0
        WHEN cnpj_time_mandante = '321' AND cnpj_time_visitante = '456' THEN 2
        WHEN cnpj_time_mandante = '321' AND cnpj_time_visitante = '654' THEN 1
        WHEN cnpj_time_mandante = '456' AND cnpj_time_visitante = '123' THEN 1
        WHEN cnpj_time_mandante = '456' AND cnpj_time_visitante = '321' THEN 0
        WHEN cnpj_time_mandante = '456' AND cnpj_time_visitante = '654' THEN 2
        WHEN cnpj_time_mandante = '654' AND cnpj_time_visitante = '123' THEN 2
        WHEN cnpj_time_mandante = '654' AND cnpj_time_visitante = '321' THEN 3
        WHEN cnpj_time_mandante = '654' AND cnpj_time_visitante = '456' THEN 1
        ELSE COALESCE(gols_mandante, 0) -- retornar zero para os demais
    END,
    gols_visitante = CASE
        WHEN cnpj_time_mandante = '123' AND cnpj_time_visitante = '321' THEN 1
        WHEN cnpj_time_mandante = '123' AND cnpj_time_visitante = '456' THEN 0
        WHEN cnpj_time_mandante = '123' AND cnpj_time_visitante = '654' THEN 2
        WHEN cnpj_time_mandante = '321' AND cnpj_time_visitante = '123' THEN 1
        WHEN cnpj_time_mandante = '321' AND cnpj_time_visitante = '456' THEN 0
        WHEN cnpj_time_mandante = '321' AND cnpj_time_visitante = '654' THEN 2
        WHEN cnpj_time_mandante = '456' AND cnpj_time_visitante = '123' THEN 2
        WHEN cnpj_time_mandante = '456' AND cnpj_time_visitante = '321' THEN 1
        WHEN cnpj_time_mandante = '456' AND cnpj_time_visitante = '654' THEN 3
        WHEN cnpj_time_mandante = '654' AND cnpj_time_visitante = '123' THEN 1
        WHEN cnpj_time_mandante = '654' AND cnpj_time_visitante = '321' THEN 2
        WHEN cnpj_time_mandante = '654' AND cnpj_time_visitante = '456' THEN 0
        ELSE COALESCE(gols_visitante, 0) -- retornar zero para os demais
    END
WHERE idcampeonato = 1;

SET SQL_SAFE_UPDATES = 1; -- reativando a atualização segura

SELECT * FROM federacao_clube.partida;

INSERT INTO federacao_clube.jogador_time (cnpj_time,cpf_jogador,ano) VALUES
	 ('123','10',0),
	 ('123','11',0),
	 ('123','12',0),
	 ('123','2',0),
	 ('123','3',0),
	 ('123','4',0),
	 ('123','5',0),
	 ('123','6',0),
	 ('123','7',0),
	 ('123','8',0),
	 ('123','9',0),
	 ('321','13',0),
	 ('321','14',0),
	 ('321','15',0),
	 ('321','16',0),
	 ('321','17',0),
	 ('321','18',0),
	 ('321','19',0),
	 ('321','20',0),
	 ('321','21',0),
	 ('321','22',0),
	 ('321','23',0),
	 ('456','24',0),
	 ('456','25',0),
	 ('456','26',0),
	 ('456','27',0),
	 ('456','28',0),
	 ('456','29',0),
	 ('456','30',0),
	 ('456','31',0),
	 ('456','32',0),
	 ('456','33',0),
	 ('456','34',0),
	 ('654','35',0),
	 ('654','36',0),
	 ('654','37',0),
	 ('654','38',0),
	 ('654','39',0),
	 ('654','40',0),
	 ('654','41',0),
	 ('654','42',0),
	 ('654','43',0),
	 ('654','44',0),
	 ('654','45',0);
SELECT * FROM federacao_clube.jogador_time;

INSERT INTO federacao_clube.posicao (sigla,nome) VALUES
	 ('AT','Atacante'),
	 ('CA','Centroavante'),
	 ('GK','goleiro'),
	 ('LD','Lat. Direito'),
	 ('LE','Lat. Esquerdo'),
	 ('MC','Meia'),
	 ('MD','Volante'),
	 ('ZD','Zagueiro');
SELECT * FROM federacao_clube.posicao;

INSERT INTO federacao_clube.patrocinadores (cnpj,nome) VALUES
	 ('123','CREFISA');
SELECT * FROM federacao_clube.patrocinadores;

INSERT INTO federacao_clube.time_profissional (cnpj_time,nome_diretor,sobrenome_diretor) VALUES
	 ('123','JOÃO','SILVA'),
	 ('321','MARIA','QUITÉRIA'),
	 ('456','LUIS','SOARES'),
	 ('654','PAES','MENDONÇA');
SELECT * FROM federacao_clube.time_profissional;

INSERT INTO federacao_clube.time_profissional_patrocinador (cnpj_time,cnpj_patrocinador) VALUES
	 ('123','123'),
	 ('321','123'),
	 ('456','123'),
	 ('654','123');
SELECT * FROM federacao_clube.time_profissional_patrocinador;


INSERT INTO federacao_clube.jogador_time_posicao (cnpj_time,cpf_jogador,sigla_posicao) VALUES
	 ('123','10','MC'),
	 ('123','11','AT'),
	 ('123','12','CA'),
	 ('123','2','GK'),
	 ('123','3','LD'),
	 ('123','4','ZD'),
	 ('123','5','ZD'),
	 ('123','6','LE'),
	 ('123','7','MD'),
	 ('123','8','MD'),
	 ('123','9','MC'),
	 ('321','13','GK'),
	 ('321','14','LD'),
	 ('321','15','ZD'),
	 ('321','16','ZD'),
	 ('321','17','LE'),
	 ('321','18','MD'),
	 ('321','19','MD'),
	 ('321','20','MC'),
	 ('321','21','MC'),
	 ('321','22','AT'),
	 ('321','23','CA'),
	 ('456','24','GK'),
	 ('456','25','LD'),
	 ('456','26','ZD'),
	 ('456','27','ZD'),
	 ('456','28','LE'),
	 ('456','29','MD'),
	 ('456','30','MD'),
	 ('456','31','MC'),
	 ('456','33','AT'),
	 ('456','34','CA'),
	 ('456','34','MC'),
	 ('654','35','GK'),
	 ('654','36','LD'),
	 ('654','37','ZD'),
	 ('654','38','ZD'),
	 ('654','39','LE'),
	 ('654','40','MD'),
	 ('654','41','MD'),
	 ('654','42','MC'),
	 ('654','43','MC'),
	 ('654','44','AT'),
	 ('654','45','CA');
SELECT * FROM federacao_clube.jogador_time_posicao;

     
INSERT INTO federacao_clube.escalacao (cpf_jogador,idcampeonato,cnpj_time_mandante,cnpj_time_visitante,gols,sigla_posicao) VALUES
	 ('10',1,'123','321',1,'MC'),
	 ('10',1,'123','456',0,'MC'),
	 ('10',1,'123','654',0,'MC'),
	 ('11',1,'123','321',0,'AT'),
	 ('11',1,'123','456',0,'AT'),
	 ('11',1,'123','654',0,'AT'),
	 ('12',1,'123','321',0,'CA'),
	 ('12',1,'123','456',0,'CA'),
	 ('12',1,'123','654',0,'CA'),
	 ('13',1,'123','321',0,'GK'),
	 ('14',1,'123','321',0,'LD'),
	 ('15',1,'123','321',0,'ZD'),
	 ('16',1,'123','321',0,'ZD'),
	 ('17',1,'123','321',0,'LE'),
	 ('18',1,'123','321',0,'MD'),
	 ('19',1,'123','321',0,'MD'),
	 ('2',1,'123','321',0,'GK'),
	 ('2',1,'123','456',0,'GK'),
	 ('2',1,'123','654',0,'GK'),
	 ('20',1,'123','321',0,'MC'),
	 ('21',1,'123','321',0,'MC'),
	 ('22',1,'123','321',0,'AT'),
	 ('23',1,'123','321',0,'CA'),
	 ('24',1,'123','456',0,'GK'),
	 ('25',1,'123','456',0,'LD'),
	 ('26',1,'123','456',0,'ZD'),
	 ('27',1,'123','456',0,'ZD'),
	 ('28',1,'123','456',0,'LE'),
	 ('29',1,'123','456',0,'MD'),
	 ('3',1,'123','321',0,'LD'),
	 ('3',1,'123','456',0,'LD'),
	 ('3',1,'123','654',0,'LD'),
	 ('30',1,'123','456',0,'MD'),
	 ('31',1,'123','456',0,'MC'),
	 ('32',1,'123','456',0,'MC'),
	 ('33',1,'123','456',0,'AT'),
	 ('34',1,'123','456',0,'CA'),
	 ('35',1,'123','654',0,'GK'),
	 ('36',1,'123','654',0,'LD'),
	 ('37',1,'123','654',0,'ZD'),
	 ('38',1,'123','654',0,'ZD'),
	 ('39',1,'123','654',0,'LE'),
	 ('4',1,'123','321',0,'ZD'),
	 ('4',1,'123','456',0,'ZD'),
	 ('4',1,'123','654',0,'ZD'),
	 ('40',1,'123','654',0,'MD'),
	 ('41',1,'123','654',0,'MD'),
	 ('42',1,'123','654',0,'MC'),
	 ('43',1,'123','654',0,'MC'),
	 ('44',1,'123','654',0,'AT'),
	 ('45',1,'123','654',0,'CA'),
	 ('5',1,'123','321',0,'ZD'),
	 ('5',1,'123','456',0,'ZD'),
	 ('5',1,'123','654',0,'ZD'),
	 ('6',1,'123','321',0,'LE'),
	 ('6',1,'123','456',0,'LE'),
	 ('6',1,'123','654',0,'LE'),
	 ('7',1,'123','321',0,'MD'),
	 ('7',1,'123','456',0,'MD'),
	 ('7',1,'123','654',0,'MD'),
	 ('8',1,'123','321',0,'MD'),
	 ('8',1,'123','456',0,'MD'),
	 ('8',1,'123','654',0,'MD'),
	 ('9',1,'123','321',0,'MC'),
	 ('9',1,'123','456',0,'MC'),
	 ('9',1,'123','654',0,'MC');
SELECT * FROM federacao_clube.escalacao;

INSERT INTO arbitro (rg, nome, tipo_habilitacao, filiacao_materna) VALUES
    ('RG123456789', 'Carlos Silva', 'Nacional', 'Maria Silva'),
    ('RG987654321', 'Ana Souza', 'Internacional', 'Joana Souza'),
    ('RG123789456', 'João Lima', 'Estadual', 'Clara Lima'),
    ('RG789456123', 'Mariana Costa', 'Regional', 'Fernanda Costa');
SELECT * FROM federacao_clube.arbitro;


INSERT INTO partida_arbitro (idcampeonato, cnpj_time_mandante, cnpj_time_visitante, rg_arbitro) VALUES
(1, '123', '321', 'RG123456789'),
(1, '123', '456', 'RG987654321'),
(1, '456', '123', 'RG123789456'),
(1, '654', '321', 'RG789456123');

INSERT INTO partida_arbitro (idcampeonato, cnpj_time_mandante, cnpj_time_visitante, rg_arbitro) VALUES
(1,'321','456', 'RG123456789'),
(1,'321','654', 'RG123456789'),
(1,'456','123', 'RG123456789'),
(1,'456','321', 'RG123456789'),
(1,'456','654', 'RG123456789'),
(1,'654','123', 'RG123456789'),
(1,'654','321', 'RG123456789'),
(1,'654','456', 'RG123456789');
SELECT * FROM federacao_clube.partida_arbitro;