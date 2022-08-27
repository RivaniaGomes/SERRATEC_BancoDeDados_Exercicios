--Selecionando toda tabela cliente
select * from customer;

--Selecionando algumas colunas da tabela cliente
select customer_id as codigo,
name as descricao
from customer;

--Selecionando algumas colunas da tabela produto
select * from product;

--Criando nova coluna de preco usando calculo e dando nome
select product_id, description, price, 
price * 1.07 as taxed_price 
from product;

--Criando nova coluna e renomeando antiga
select product_id, description, 
price as untaxed_price, 
price * 1.07 as taxed_price 
from product;

--Criando coluna com 2 casas decimais e renomeando
select product_id, description, 
price as untaxed_price, 
round (price * 1.07, 2) as taxed_price 
from product;

--Concatenacao
select name, city || ', ' || state as location from customer;

--Concatenacao varios
select name, street_address || ' ' || ', ' || state || ' ' || zip 
as ship_address
from customer;

