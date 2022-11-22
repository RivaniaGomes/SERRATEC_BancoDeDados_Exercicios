--filtrando registros
select * from station_data;

--usando where com numeros
--igual a 2010
select * from station_data
where year = 2010;

--diferente de 2010
select * from station_data
where year != 2010;

--diferente de 2010 outra opcao
select * from station_data
where year <> 2010;

--intervalos inclusivos
select * from station_data
where year between 2005 and 2010;

--maior ou igual a 2005 e menor ou igual a 2010
select * from station_data
where year >= 2005 and year <= 2010;

--todos os dados entre 2005 2 2010 exclusivamente
select * from station_data
where year > 2005 and year < 2010;

--registros dos meses 3, 6, 9 ou 12
select * from station_data
where month = 3
or month = 6
or month = 9
or month = 12;

--registros dos meses 3, 6, 9 ou 12(outra forma)
select * from station_data
where month in (3,6,9,12);

--registros de todos meses exceto dos meses 3, 6, 9 ou 12
select * from station_data
where month not in (3,6,9,12);

--registros dos meses do fim do trimestre 3, 6, 9 e 12, meses divisiveis por 3
select * from station_data
where month % 3 = 0;

--ao usar texto deve inserir os literais, ou os valores textuais que vc expecificar

--filtrar um report_code
select * from station_data
where report_code = '513A63';

--filtrar mais de um report_code
select * from station_data
where report_code in ('513A63', '1F8A7B', 'EF616A');

--fltro com a funcao length
select * from station_data
where length(report_code) !6;

--
