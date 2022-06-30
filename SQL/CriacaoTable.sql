CREATE TABLE IF NOT EXISTS refugiados (
	id_refugiados serial,
	passagem_fronteira varchar(40),
	via varchar(30),
	data date,
	direcao_polonia varchar (40),
	cidadania varchar(2),
	checkin integer,
	checkout integer,
	CONSTRAINT refugiados_pk PRIMARY KEY (id_refugiados)
);

SELECT (SUM(checkin)+ SUM(checkout)) AS refugiados_jan FROM refugiados WHERE data BETWEEN '2022-01-01' AND '2022-01-31'
SELECT (SUM(checkin)+ SUM(checkout)) AS efugiados_fev FROM refugiados WHERE data BETWEEN '2022-02-01' AND '2022-02-28'
SELECT (SUM(checkin)+ SUM(checkout)) AS refugiados_marc FROM refugiados WHERE data BETWEEN '2022-03-01' AND '2022-03-31'

SELECT * FROM refugiados ORDER BY data DESC