--ATORES
--1 - Listar todos os atores;
select * from actor;
--2 - Listar todos os atores com o primeiro nome igual a Christian;
select * from actor where first_name like 'Christian';
--3 - Listar apenas o nome e sobrenome dos atores com a inicial D;
select first_name, last_name from actor where first_name like 'C%' and last_name like 'D%';
--4 - Listar os 10 primeiros atores;
select * from actor limit 10;

--ENDERECOS
--1 - Listar todos os enderecos;
select * from address;
--2 - Listar todos os enderecos com o primeiro nome igual a Chihuahua;
select * from address where district like 'Chihuahua';
--3 - Listar apenas o endereco e distrito dos distritos com a inicial D;
select address, district from address where district  like 'D%';
--4 - Listar os 10 primeiros endereços;
select * from address limit 10;

--CATEGORIAS
--1 - Listar todos os enderecos;
select * from category;
--2 - Listar todos os enderecos com o primeiro nome igual a Comedy;
select * from category where name like 'Comedy';
--3 - Listar apenas o endereco e distrito dos distritos com a inicial D;
select name from category where name  like 'D%';
--4 - Listar os 10 primeiros endereços;
select * from category limit 10;

--CIDADES
--1 - Listar todos os enderecos;
select * from city;
--2 - Listar todos os enderecos com o primeiro nome igual a a;
select * from city where city like 'a%';
--3 - Listar apenas o endereco e distrito dos distritos com a inicial 6;
select city, country_id from city where country_id = 6;
--4 - Listar os 10 primeiros endereços;
select * from city limit 10;

--PAISES
--1 - Listar todos os paises;
select * from country;
--2 - Listar todos os paises com o primeiro nome igual a P;
select * from country where country like 'P%';
--3 - Listar apenas o endereco e distrito dos distritos com a inicial 6;
select country, country_id from country where country_id = 6;
--4 - Listar os 10 primeiros endereços;
select * from country limit 10;

--CUSTOMER
--1 - Listar todos os clientes;
select * from customer;
--2 - Listar todos os clientes com o primeiro nome igual a Leslie;
select * from customer where first_name like 'Leslie';
--3 - Listar apenas o nome e sobrenome dos clientes com a inicial c e d;
select first_name, last_name from customer where first_name like 'C%' and last_name like 'D%';
--4 - Listar os 10 primeiros atores;
select * from customer limit 10;

--FILMES
--1 - Listar todos os filmes;
select * from film;
--2 - Listar todos os filmes com o primeiro nome igual a Iron Moon';
select * from film where title like 'Iron Moon';
--3 - Listar apenas o nome e sobrenome dos filmes com a inicial c;
select title, description from film where title like 'C%';
--4 - Listar os 10 primeiros filmes;
select * from film limit 10;

--FILMES/ATORES
--1 - Listar todos os filmes/atores;
select * from film_actor;
--2 - Listar todos os filmes/atores com o primeiro nome igual a 1';
select * from film_actor where actor_id = 1;
--3 - Listar apenas o nome e sobrenome dos filmes/atores com a inicial c;
--select title, description from film where title like 'C%';
--4 - Listar os 10 primeiros filmes/atores;
select * from film_actor limit 10;

--FILMES/CATEGORIA
--1 - Listar todos os filmes/categoria;
select * from film_category;
--2 - Listar todos os filmes/categoria com o primeiro nome igual a Iron Moon';
select * from film_category where film_id = 1;
--3 - Listar apenas o nome e sobrenome dos filmes/categoria com a inicial c;
--select title, description from film where title like 'C%';
--4 - Listar os 10 primeiros filmes/categoria;
select * from film_category limit 10;

--INVENTORY
--1 - Listar todos os INVENTARIO;
select * from inventory;
--2 - Listar todos os fINVENTARIO com o primeiro nome igual a 1;
select * from inventory where film_id = 1;
--3 - Listar apenas o nome e sobrenome dos INVENTARIO com a inicial c;
--select title, description from film where title like 'C%';
--4 - Listar os 10 primeiros INVENTARIO;
select * from inventory limit 10;

--LANGUAGE
--1 - Listar todos os LANGAGE;
select * from language;
--2 - Listar todos os LANGUAGE com o primeiro nome igual a 1;
select * from language where name like 'F%';
--3 - Listar apenas o nome e sobrenome dos LANGUAGE com a inicial c;
--select title, description from film where title like 'C%';
--4 - Listar os 10 primeiros LANGUAGE;
select * from language limit 10;

--PAYMENT
--1 - Listar todos os PAYMENT;
select * from payment;
--2 - Listar todos os PAYMENT com o primeiro nome igual a 1;
select * from payment where customer_id = 1;
--3 - Listar apenas o nome e sobrenome dos PAYMENT com a inicial c;
--select title, description from film where title like 'C%';
--4 - Listar os 10 primeiros PAYMENT;
select * from inventory limit 10;

--RENTAL
--1 - Listar todos os PAYMENT;
select * from rental;
--2 - Listar todos os PAYMENT com o primeiro nome igual a 1;
select * from rental where customer_id = 1;
--3 - Listar apenas o nome e sobrenome dos PAYMENT com a inicial c;
--select title, description from film where title like 'C%';
--4 - Listar os 10 primeiros PAYMENT;
select * from rental limit 10;

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
select * from store;
--2 - Listar todos os STORE com o primeiro nome igual a 1;
select * from store where address_id = 1;
--3 - Listar apenas o nome e sobrenome dos STORE com a inicial c;
--select title, description from film where title like 'C%';
--4 - Listar os 10 primeiros STORE;
select * from store limit 10;