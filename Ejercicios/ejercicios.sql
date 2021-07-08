# Comentario de una linea
/*
    Comentario multilinea
*/

/* 
    SELECT, DISTINCT, ORDER BY
    Ej1
    Seleccionar todas las tuplas de actor, mostrar su columna de first_name como Nombre y last_name como Apellido.
*/

SELECT actor_id, first_name AS Nombre, last_name AS Apellido, last_update FROM sakila.actor;
/*
    Ej2
    Seleccionar los id de los consumidores como id_consumidor de la tabla payment.
*/
SELECT DISTINCT (customer_id) AS id_consumidor from sakila.payment;
/*
    Ej3
    Seleccionar todos los paises de la tabla country de  forma descendente.
    Seleccionar los nombres de los usuarios de forma ascendente de la tabla customer. 
*/
SELECT * from sakila.country ORDER BY country DESC;

SELECT * FROM sakila.customer ORDER BY first_name ASC;

/*
    Ej4
    Consulta store_id, first_name y last_name de la tabla customer de la base de datos sakila.
    Cambia el nombre de las columnas store_id, first_name y last_name a Tienda, Nombre y Apellido respectivamente.
    Ordena de manera descendente la columna Apellido.

*/

SELECT store_id AS Tienda, first_name AS Nombre, last_name AS Apellido FROM sakila.customer ORDER BY last_name DESC;

/* 
    Ej5
    Consulta la tabla payment de la base de datos sakila.
    ¿Cuál es la cantidad mas baja y mas alta de la columna amount?
*/
SELECT amount FROM sakila.payment ORDER BY amount ASC;

SELECT amount FROM sakila.payment ORDER BY amount DESC;


/* WHERE
    Ej6
    Selecionar las tuplas de la tabla actor las cuales el nombre sea Dan.
    Selecionar city como ciudades de la tabla city las cuales tengan contry_id sean igual a 102.
    Seleccionar las tuplas de la tabla customer de los customer que compren en la tienda con id = 1.
*/

SELECT * FROM sakila.actor WHERE first_name = 'dan';

SELECT * FROM sakila.city WHERE country_id = 102;

SELECT * FROM sakila.customer WHERE store_id = 1;

/*
    Ej7
    Seleccionar las tuplas de la tabla inventory las cuales tengan film_id mayores a 50.
    Seleccionar los amount menores a 3 de la tabla payment y que no se repitan.
*/

SELECT * FROM  sakila.inventory WHERE film_id > 50 ;

SELECT DISTINCT * FROM sakila.payment WHERE amount < 3;
/*
    Ej8
    Seleccionar las tuplas las cuales staff_id sea distinto de 2 de la tabla staff.
    Seleccionar las tuplas de language  las cuales su name sea distinto de german.
*/
SELECT * FROM sakila.staff WHERE staff_id <> 2;

SELECT * FROM sakila.language WHERE name != 'german';

/*
    Ej9
    Consulta description, release_year de la tabla film de la base de datos sakila.
    Filtra la información donde title sea IMPACT ALADDIN
*/

SELECT description,release_year FROM sakila.film WHERE title = 'IMPACT ALADDIn';

/*
    Ej10
    Consulta la tabla payment de la base de datos sakila.
    Filtra la información donde amount sea mayor a 0.99.
*/

SELECT * FROM sakila.payment WHERE amount >= 1;
#or
SELECT * FROM sakila.payment WHERE amount >0.99;
/* AND, OR, NOT
    Ej11
    Seleccionar las tuplas de la tabla film las cuales special_features sea Trailers y replacement_cost sea mayor a 10.
*/
SELECT * FROM sakila.film WHERE special_features = 'Trailers' AND replacement_cost > 10;
/*
    Ej12
    Seleccionar las tuplas de la tabla country las cuales country sea Algeria o su country_id sea 12.
    Seleccionar las tuplas de la tabla language las cuales name sea english o french.
*/

SELECT * FROM sakila.country WHERE country = 'Algeria' or country_id = 12;

SELECT * FROM sakila.language  WHERE name = 'english' or name = 'french';

/*
    Ej13
    Seleccionar las tuplas de la tabla category las cuales name no sea Action y tampoco sea Sports.
*/

SELECT * FROM sakila.category WHERE NOT name = 'Action' AND NOT name = 'Sports'

/*
    Ej14
    Consulta la tabla payment de la base de datos sakila.
    Filtra la información donde customer_id sea igual a 36, amount sea mayor a 0.99 y staff_id sea igual a 1.
*/

SELECT * FROM sakila.payment WHERE customer_id = 36 AND amount > 0.99 AND staff_id = 1 ;

/*
    Ej15
    Consulta la tabla rental de la base de datos sakila.
    Filtra la información donde staff_id no sea 1, customer_id sea mayor a 250 y inventory_id sea menor de 100.
*/

SELECT * FROM sakila.rental WHERE staff_id <> 1 AND customer_id < 250 AND inventory_id < 100;

/* IN
    Ej16
    Seleccionar las tuplas de la tabla customer las cuales su first_name sea mary y patricia.
*/

SELECT * FROM sakila.customer WHERE first_name 	IN ('Mary','Patricia');

/* 
    Ej17
    Seleccionar las tuplas de la tabla film las cuales su special_features sea trailers y trailers,deleted scenes.
    y que sean con un rating  G Y NC-17 y que length sea mayor a 50.
*/

SELECT * FROM sakila.film WHERE special_features IN ('Trailers','Trailers,Deleted Scenes') AND rating IN ('G','NC-17') AND lenght > 50;

/* 
    Ej18
    Seleccionar las tuplas de la tabla category las cuales su name no sea action, animation y children.
*/

SELECT * FROM sakila.category WHERE name NOT IN ('Action','Animation','Children');

/* 
    Ej19
    Consulta la tabla film_text de la base de datos sakila.
    Filtra la información donde title  sea ZORRO ARK, VIRGIN DAISY, UNITED PILOT.
*/

SELECT * FROM sakila.film_text WHERE title in('zorro ark', 'virgin daisy', 'united pilot'); 

/* 
    Ej20
    Consulta la tabla city de la base de datos sakila.
    Filtra la información donde city sea Chiayi, Dongying, Fukuyama y Kilis.
*/

SELECT * FROM sakila.city WHERE city IN('chiayi','dongying','fukuyama','kilis');

/* BETWEEN
    Ej21
    Seleccionar todas las tuplas de la tabla rental la cuales su customer_id sea entre 300 y 350.
    Y que tengan staff_id igual a 1. 
*/

SELECT * FROM sakila.rental WHERE (customer_id BETWEEN 300 AND 350) AND staff_id = 1;

/* 
    Ej22
    Seleccionar todas las tuplas de la tabla payment las cuales su amount no este entre 3 y 5. 
*/

SELECT * FROM sakila.payment WHERE amount NOT BETWEEN 3 AND 5;

/* 
    Ej23
    Consulta la tabla payment de la base de datos sakila.
    Filtra la información donde amount esté entre 2.99 y 4.99,  staff_id sea igual a 2 y customer_id sea 1 y 2.
*/

SELECT * FROM sakila.payment WHERE (amount BETWEEN 2.99 AND 4.99) AND staff_id = 2 AND (customer_id BETWEEN 1 AND 2);

/* 
    Ej24
    Consulta la tabla address de la base de datos sakila.
    Filtra la información donde city_id esté entre 300 y 350.
*/

SELECT * FROM sakila.address WHERE city_id BETWEEN 300 and 350;

/* 
    Ej25
    Consulta la tabla film de la base de datos sakila.
    Filtra la información donde rental_rate esté entre 0.99 y 2.99, length sea menor igual de 50  y replacement_cost sea menor de 20.
*/

SELECT * FROM sakila.film WHERE (rental_rate BETWEEN 0.99 AND 2.99) AND length <= 50 AND replacement_cost < 20;

/* LIKE
    Ej26
    Seleccionar todas las tuplas de la tabla actor las cuales su first_name empieze con A y su last_name empieze con B.
*/

SELECT * FROM sakila.actor WHERE first_name LIKE 'A%' AND last_name LIKE 'B%';

/* 
    Ej27
    Seleccionar todas las tuplas de la tabla actor las cuales su first_name termine con la letra A y su apellido termine con la letra N.
*/

SELECT * FROM sakila.actor WHERE first_name LIKE '%A' AND last_name LIKE '%N';

/* 
    Ej28
    Seleccionar todas las tuplas de la tabla actor las cuales su first_name contengan NE en cualquier parte y su last_name contenga RO en cualquier parte.
*/

SELECT * FROM sakila.actor WHERE first_name LIKE '%NE%' AND last_name LIKE '%RO%';

/* 
    Ej29
    Seleccionar todas las tuplas de la tabla actor las cuales su first_name empize con la letra C y termine con la N y su apellido empize con la G.
*/

SELECT * FROM sakila.actor WHERE first_name LIKE 'C%N' AND last_name LIKE 'G%';

/* 
    Ej30
    Consulta la tabla film de la base de datos sakila.
    Filtra la información donde release_year sea igual a 2006  y title empiece con ALI.
*/

SELECT * FROM sakila.film WHERE release_year = 2006 AND title LIKE 'ALI%';

/* INNER JOIN, LEFT JOIN, RIGHT JOIN
    Ej32
    Seleccionar todas las tuplas de la tabla film que tengan el mismo language_id de la tabla language.
    Pedir solo de la tabla  film title, description, release_year y de la language solo name
*/

SELECT f.title, f.description, f.release_year, l.name FROM sakila.film f INNER JOIN sakila.language l ON (f.language_id = l.language_id);

/* 
    Ej33
    Seleccionar todas las tuplas de la tabla address que tengan el mismo city_id que la tabla city.
    Pedir de address solo address como Direccion y de city pedir city como Ciudad. 
*/

SELECT a.address AS Direccion, c.city AS Ciudad FROM sakila.address a INNER JOIN sakila.city c ON (a.city_id = c.city_id);

/* 
    Ej34
    USAR RIGTH JOIN
    Seleccionar todas las tuplas de la tabla actor y hacer un JOIN con la tabla customer mientras last_name y first_name de customer sea igual al de actors.
    seleccionar de customer: customer_id, first_name, last_name y de actors: actor_id, first_name, last_name.
*/

SELECT c.customer_id, c.first_name, c.last_name, a.actor_id, a.first_name, a.last_name FROM sakila.customer c RIGHT JOIN sakila.actor a ON (c.last_name = a.last_name AND c.first_name=a.first_name)

/* 
    Ej35
    USAR LEFT JOIN
    Seleccionar todas las tuplas de la tabla customer y hacer un JOIN con la tabla actor mientras last_name y first_name de customer sea igual al de actors.
    seleccionar de customer: customer_id, first_name, last_name y de actors: actor_id, first_name, last_name.
*/
SELECT c.customer_id, c.first_name, c.last_name, a.actor_id, a.first_name, a.last_name FROM sakila.customer c LEFT JOIN sakila.actor a ON (c.last_name = a.last_name AND c.first_name=a.first_name)

/* 
    Ej36
    Consulta la tabla address de la base de datos sakila.
    Realiza un INNER JOIN con las tablas city y country.
    Mostrar las columnas address, city, country.
*/

SELECT address.address, city.city, country.country FROM sakila.address  INNER JOIN sakila.city INNER JOIN sakila.country ON (address.city_id = city.city_id AND city.country_id=country.country_id);
# OR
SELECT  a.address, c.city, co.country FROM sakila.address a  INNER JOIN sakila.city c ON (a.city_id = c.city_id) INNER JOIN sakila.country co ON (c.country_id = co.country_id);

/* 
    Ej37
    Consulta la tabla customer de la base de datos sakila.
    Realiza un LEFT JOIN con las tablas store y address.
    Mostrar las columnas first_name como Nombre_cliente, address como Direccion, store_id como Id_tienda. Ordenarlo por Id_tienda.
*/

SELECT c.first_name AS Nombre_cliente, a.address AS Direccion, s.store_id AS Id_tienda FROM sakila.customer c LEFT JOIN sakila.store s ON (c.store_id = s.store_id) LEFT JOIN sakila.address a ON(s.address_id = a.address_id) ORDER BY s.store_id;

/* 
    Ej38
    Consulta la tabla rental de la base de datos sakila.
    Realiza un INNER JOIN con la tabla staff.
    Mostrar las columnas rental_id, first_name.
*/

SELECT r.rental_id, s.first_name FROM sakila.rental r INNER JOIN sakila.staff s ON (r.staff_id = s.staff_id);

/*COUNT, AVG, SUM, MAX, MIN
    Ej39
*/
/* 
    Ej23
*/
/* 
    Ej23
*/

/* 
    Ej23
*//* 
    Ej23
*/
/* 
    Ej23
*/
/* 
    Ej23
*/
/* 
    Ej23
*/

/* 
    Ej23
*/
