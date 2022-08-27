--ATORES
--1 - Listar todos os atores;
select * 
from actor
order by first_name, last_name desc;

--2 - Listar todos os atores com o primeiro nome igual a Christian;
select * 
from actor 
where first_name like 'Christian';

--3 - Listar apenas o nome e sobrenome dos atores com a inicial do primeiro nome C e do ultimo nome D;
select first_name, last_name 
from actor 
where first_name like 'C%' and last_name like 'D%'
order by last_name;
--4 - Listar os 10 primeiros atores;
select * 
from actor
order by first_name
limit 10;

--ENDERECOS
--1 - Listar todos os enderecos;
select * 
from address;

--2 - Listar todos os enderecos com o primeiro nome igual a Chihuahua;
select * 
from address 
where district 
like 'Chihuahua';

--3 - Listar apenas o endereco e distrito dos distritos com a inicial D;
select address, district 
from address 
where district  like 'D%';

--4 - Listar os 10 primeiros endereços;
select 
address_id,
address,
district,
city,
postal_code,
phone,
address.last_update
from city 
inner join address
on address.city_id = city.city_id
order by district 
limit 10;

--CATEGORIAS
--1 - Listar todos os enderecos;
select * 
from category;

--2 - Listar todos os enderecos com o primeiro nome igual a Comedy;
select * 
from category 
where name like 'Comedy';

--3 - Listar apenas a categoria com a inicial D;
select name 
from category 
where name  like 'D%';

--4 - Listar os 10 primeiros endereços;
select * 
from category 
limit 10;

--CIDADES
--1 - Listar todos os enderecos;
select
city_id,
city,
country,
city.last_update
from city
inner join country
on country.country_id = city.country_id
order by city.country_id;

--2 - Listar todos os enderecos com o primeiro nome igual a a;
select
city_id,
city,
country,
city.last_update
from city 
inner join country
on country.country_id = city.country_id
where city like 'a%';

--3 - Listar apenas as cidades e paises dos paises com id 6;
select
city,
country 
from city 
inner join country
on country.country_id = city.country_id
where city.country_id = 6;

--4 - Listar os 10 primeiros endereços;
select
city_id,
city,
country,
city.last_update
from city 
inner join country
on country.country_id = city.country_id
order by country
limit 10;

--PAISES
--1 - Listar todos os paises;
select * 
from country;

--2 - Listar todos os paises com o primeiro nome igual a P;
select * 
from country 
where country like 'P%';

--3 - Listar apenas o endereco e distrito dos distritos com a inicial 6 ou 14;
select 
country, country_id 
from country 
where country_id = 6 or country_id = 14;

--4 - Listar os 10 primeiros endereços;
select * 
from country
limit 10;

--CUSTOMER
--1 - Listar todos os clientes;
select *
from customer;

--2 - Listar todos os clientes com o primeiro nome igual a Leslie;
select * 
from customer 
where first_name like 'Leslie';

--3 - Listar apenas o nome e sobrenome dos clientes com a inicial c e d;
select first_name, last_name 
from customer 
where first_name like 'C%' and last_name like 'D%';

--4 - Listar os 10 primeiros atores;
select * 
from customer 
order by first_name 
limit 10;

--FILMES
--1 - Listar todos os filmes;
select * 
from film;

--2 - Listar todos os filmes com o primeiro nome igual a Iron Moon';
select * 
from film 
where title 
like 'Iron Moon';

--3 - Listar apenas o nome e sobrenome dos filmes com a inicial c;
select title, description 
from film 
where title like 'C%'
order by title;

--4 - Listar os 10 primeiros filmes;
select * 
from film
order by film_id 
limit 10;

--FILMES/ATORES
--1 - Listar todos os filmes/atores;
select distinct
actor.first_name || ', ' || actor.last_name as nome_completo,
film.title as nome_filme,
film.last_update as ultima_atualizacao
from film_actor 
inner join actor
on film_actor.actor_id = actor.actor_id
inner join film
on film.film_id = film_actor.film_id
order by nome_completo, nome_filme desc;

--2 - Listar todos os filmes/atores com o primeiro nome igual a Penelope e o ultimo igual a Guiness';
select distinct
actor.first_name || ', ' || actor.last_name as nome_completo,
film.title as nome_filme,
film.last_update as ultima_atualizacao
from film_actor 
inner join actor
on film_actor.actor_id = actor.actor_id
inner join film
on film.film_id = film_actor.film_id
where actor.first_name like 'Penelope' and actor.last_name like 'Guiness';

--3 - Listar apenas o nome e sobrenome dos filmes/atores com a inicial w;
select distinct
actor.first_name || ', ' || actor.last_name as nome_completo,
film.title as nome_filme,
film.last_update as ultima_atualizacao
from film_actor 
inner join actor
on film_actor.actor_id = actor.actor_id
inner join film
on film.film_id = film_actor.actor_id
where actor.first_name like 'W%';

--4 - Listar os 10 primeiros filmes/atores;
select distinct
actor.first_name,
actor.last_name,
film.title as nome_filme,
film.last_update as ultima_atualizacao
from film_actor 
inner join actor
on film_actor.actor_id = actor.actor_id
inner join film
on film.film_id = film_actor.actor_id
limit 10;


--FILMES/CATEGORIA
--1 - Listar todos os filmes/categoria;
select distinct
film.title as nome_filme,
category.name as nome_categoria,
category.last_update as ultima_atualizacao
from film_category 
inner join category
on film_category.category_id = category.category_id
inner join film
on film.film_id = category.category_id;

--2 - Listar todos os filmes/categoria com a categoria comedy;
select distinct
film.title as nome_filme,
category.name as nome_categoria,
category.last_update as ultima_atualizacao
from film_category 
inner join category
on film_category.category_id = category.category_id
inner join film
on film.film_id = category.category_id
where category.name like 'Comedy' ;

--3 - Listar apenas o nome do filme começa com a inicial A;
select DISTINCT
film.title as nome_filme,
category.name as nome_categoria,
category.last_update as ultima_atualizacao
from film_category 
inner join category
on film_category.category_id = category.category_id
inner join film
on film.film_id = category.category_id
where film.title like 'A%' ;

--4 - Listar os 10 primeiros filmes/categoria;
select DISTINCT
film.title as nome_filme,
category.name as nome_categoria,
category.last_update as ultima_atualizacao
from film_category 
inner join category
on film_category.category_id = category.category_id
inner join film
on film.film_id = category.category_id
limit 10;

--INVENTORY
select * from inventory;
select * from store;
select * from staff ;
--1 - Listar todos os INVENTARIO;
select
inventory_id,
title,
store_id,
inventory.last_update
from inventory
inner join film
on film.film_id = inventory.film_id;

--2 - Listar todos os INVENTARIO com o primeiro nome igual a 7;
select 
inventory_id,
title,
store_id,
inventory.last_update
from inventory 
inner join film
on film.film_id = inventory.film_id
where inventory.film_id = 7;

--3 - Listar apenas o nome e sobrenome dos INVENTARIO com a inicial c;
select distinct
inventory_id,
title,
store_id,
inventory.last_update
from inventory 
inner join film
on film.film_id = inventory.film_id
where title like 'C%';

--4 - Listar os 10 primeiros INVENTARIO;
select distinct
inventory_id,
title,
store_id,
inventory.last_update
from inventory 
inner join film
on film.film_id = inventory.film_id
limit 10;

--LANGUAGE
--1 - Listar todos os LANGAGE;
select * 
from language;

--2 - Listar todos os LANGUAGE com o primeiro nome cm inicial F;
select * 
from language 
where name like 'French%';
--3 - Listar apenas o nome e sobrenome dos LANGUAGE com a inicial c;
select * 
from language 
where name like 'I%';
--4 - Listar os 10 primeiros LANGUAGE;
select * 
from language
order by name
limit 3;

--PAYMENT
--1 - Listar todos os PAYMENT;
select 
payment_id,
customer.first_name || ', ' || customer.last_name as cli_nome_completo,
staff.first_name || ', ' || staff.last_name as fun_sobrenome_funcionario,
rental_id,
amount,
payment_date
from payment
inner join staff
on payment.staff_id = staff.staff_id
inner join customer
on payment.customer_id = customer.customer_id;

--2 - Listar todos os PAYMENT com o primeiro nome igual a 1;
select
payment_id,
customer.first_name || ', ' || customer.last_name as cli_nome_completo,
staff.first_name || ', ' || staff.last_name as fun_nome_completo,
rental_id,
amount,
payment_date
from payment
inner join staff
on payment.staff_id = staff.staff_id
inner join customer
on payment.customer_id = customer.customer_id
where payment.customer_id = 1
order by fun_nome_completo;

--3 - Listar apenas o nome e sobrenome dos PAYMENT com a inicial c;
select distinct
payment_id,
customer.first_name || ', ' || customer.last_name as cli_nome_completo,
staff.first_name || ', ' || staff.last_name as fun_nome_completo,
rental_id,
amount,
payment_date
from payment
inner join staff
on payment.staff_id = staff.staff_id
inner join customer
on payment.customer_id = customer.customer_id
where amount between 3 and 7;

--4 - Listar os 10 primeiros PAYMENT;
select distinct
payment_id,
customer.first_name || ', ' || customer.last_name as cli_nome_completo,
staff.first_name || ', ' || staff.last_name as fun_nome_completo,
rental_id,
amount,
payment_date
from payment
inner join staff
on payment.staff_id = staff.staff_id
inner join customer
on payment.customer_id = customer.customer_id
limit 10;

--RENTAL
--1 - Listar todos os RENTAL;
select
rental,
rental_date,
inventory_id,
customer.first_name || ', ' || customer.last_name as cli_nome_completo,
return_date,
staff.first_name || ', ' || staff.last_name as fun_nome_completo,
rental.last_update
from rental
inner join customer
on rental.customer_id = customer.customer_id
inner join staff 
on rental.staff_id = staff.staff_id;

--2 - Listar todos os RENTAL com o customer_id entre 3 e 8;
select distinct
rental,
rental_date,
inventory_id,
customer.first_name || ', ' || customer.last_name as cli_nome_completo,
return_date,
staff.first_name || ', ' || staff.last_name as fun_nome_completo,
rental.last_update
from rental
inner join customer
on rental.customer_id = customer.customer_id
inner join staff 
on rental.staff_id = staff.staff_id
where rental.customer_id between 3 and 8;

--3 - Listar apenas o nome e sobrenome dos RENTAL com a inicial c;
select distinct
rental,
rental_date,
inventory_id,
customer.first_name || ', ' || customer.last_name as cli_nome_completo,
return_date,
staff.first_name || ', ' || staff.last_name as fun_nome_completo,
rental.last_update
from rental
inner join customer
on rental.customer_id = customer.customer_id
inner join staff 
on rental.staff_id = staff.staff_id
where customer.first_name || ', ' || customer.last_name like 'C%'
order by inventory_id;

--4 - Listar os 10 primeiros RENTAL;
select distinct
rental,
rental_date,
inventory_id,
customer.first_name || ', ' || customer.last_name as cli_nome_completo,
return_date,
staff.first_name || ', ' || staff.last_name as fun_nome_completo,
rental.last_update
from rental
inner join customer
on rental.customer_id = customer.customer_id
inner join staff 
on rental.staff_id = staff.staff_id
where customer.first_name || ', ' || customer.last_name like 'C%'
order by inventory_id
limit 10;

--STAFF
--1 - Listar todos os staff;
select * from staff;
--2 - Listar todos os staff com o primeiro nome igual a Mike;
select * from staff where first_name like 'Mike';
--3 - Listar apenas o nome e sobrenome dos staff com a inicial s;
select first_name, last_name from staff where last_name like 'S%';
--4 - Listar os 10 primeiros filmes;
select * from staff limit 10;

--STORE
--1 - Listar todos os STORE;
select 
store.store_id,
staff.first_name || ', ' || staff.last_name as fun_nome_completo,
address.address || ', ' || address.district || ', '|| address.postal_code || ', ' || store.last_update as endereco_completo
from store
inner join staff
on store.store_id = staff.store_id
inner join address
on store.address_id = address.address_id;

--2 - Listar todos os STORE com o primeiro nome igual a 1;
select 
store.store_id,
staff.first_name || ', ' || staff.last_name as fun_nome_completo,
address.address || ', ' || address.district || ', '|| address.postal_code || ', ' || store.last_update as endereco_completo
from store
inner join staff
on store.store_id = staff.store_id
inner join address
on store.address_id = address.address_id
where address.address_id = 1;

--3 - Listar apenas o nome e sobrenome dos STORE com a inicial m;
select 
store.store_id,
staff.first_name || ', ' || staff.last_name as fun_nome_completo,
address.address || ', ' || address.district || ', '|| address.postal_code || ', ' || store.last_update as endereco_completo
from store
inner join staff
on store.store_id = staff.store_id
inner join address
on store.address_id = address.address_id
where staff.first_name like 'M%';

--4 - Listar os 10 primeiros STORE;
select 
store.store_id,
staff.first_name || ', ' || staff.last_name as fun_nome_completo,
address.address || ', ' || address.district || ', '|| address.postal_code || ', ' || store.last_update as endereco_completo
from store
inner join staff
on store.store_id = staff.store_id
inner join address
on store.address_id = address.address_id;