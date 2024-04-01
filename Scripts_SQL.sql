CREATE TABLE Animal(
  id INT,
  nome varchar(60),
  data_nasc date,
  peso decimal(8,2),
  cor varchar(15)
  )
  
INSERT INTO Animal (id, nome, data_nasc, peso, cor)
VALUES
  (1, 'Ágata', '2015-04-09', 13.9, 'branco'),
  (2, 'Félix', '2016-06-06', 14.3, 'preto'),
  (3, 'Tom', '2013-02-08', 11.2, 'azul'),
  (4, 'Garfield', '2015-07-06', 17.1, 'laranja'),
  (5, 'Frajola', '2013-08-01', 13.7, 'preto'),
  (6, 'Manda-chuva', '2012-02-03', 12.3, 'amarelo'),
  (7, 'Snowball', '2014-04-06', 13.2, 'preto'),
  (10, 'Agata', '2015-08-03', 11.9, 'azul'),
  (11, 'Gato de Botas', '2012-12-10', 11.6, 'amarelo'),
  (12, 'Kitty', '2020-04-06', 11.6, 'amarelo'),
  (13, 'Milu', '2013-02-04', 17.9, 'branco'),
  (14, 'Pluto', '2012-01-03', 12.3, 'amarelo'),
  (15, 'Pateta', '2015-05-01', 17.7, 'preto'),
  (16, 'Snoopy', '2013-07-02', 18.2, 'branco'),
  (17, 'Rex', '2019-11-03', 19.7, 'beje'),
  (20, 'Bidu', '2012-09-08', 12.4, 'azul'),
  (21, 'Dum Dum', '2011-02-03', 14.3, 'laranja'),
  (22, 'Muttley', '2015-04-06', 11.2, 'laranja'),
  (23, 'Scooby', '2012-01-02', 19.9, 'marrom'),
  (24, 'Rufus', '2014-04-05', 19.7, 'branco'),
  (25, 'Rex', '2021-08-19', 19.7, 'branco');
    
drop table Animal

select * from Animal

SELECT * FROM Animal WHERE peso < 13.1

SELECT * FROM Animal WHERE strftime('%Y', data_nasc) = 2015 AND strftime('%M', data_nasc) BETWEEN 2 AND 12

SELECT * FROM Animal WHERE cor = 'branco' AND peso < 15.0

SELECT nome, cor, peso FROM Animal WHERE nome LIKE 'B%'

SELECT nome, cor, peso FROM Animal WHERE cor IN ('vermelho', 'amarelo', 'marrom', 'laranja')

SELECT nome, cor, data_nasc, peso FROM Animal ORDER BY data_nasc DESC

SELECT * FROM Animal WHERE nome LIKE 'C%' AND cor != 'branco'

SELECT * FROM Animal WHERE nome LIKE '%ba%'

SELECT * FROM Animal WHERE peso BETWEEN 13.0 AND 15.0

SELECT * FROM Animal WHERE (peso <= 30 AND (cor = 'amarelo' OR cor = 'roxo')) AND strftime('%Y', data_nasc) > 2012

SELECT * FROM Animal WHERE strftime('%M', data_nasc) = 12 OR strftime('%M', data_nasc) = 1 AND strftime('%D', data_nasc) <= 19

SELECT * FROM Animal WHERE nome LIKE '% %'