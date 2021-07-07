# Comentario de una linea
/*
    Comentario multilinea
*/

/* 
    SELECT, DISTINCT, ORDER BY
    Ej1
    Seleccionar todas las tuplas de actor, mostrar su columna de first_name como Nombre y last_name como Apellido
*/

SELECT actor_id, first_name AS Nombre, last_name AS Apellido, last_update FROM sakila.actor;
/*
    Ej2
    Seleccionar los id de los consumidores como id_consumidor de la tabla payment
*/
SELECT DISTINCT (customer_id) AS id_consumidor from sakila.payment;
/*
    Ej3
    Seleccionar todos los paises de la tabla country de  forma descendente
    Seleccionar los nombres de los usuarios de forma ascendente de la tabla customer 
*/
SELECT * from sakila.country ORDER BY country DESC;

SELECT * FROM sakila.customer ORDER BY first_name ASC;

/*
    Ej4
    Consulta store_id, first_name y last_name de la tabla customer de la base de datos sakila.
    Cambia el nombre de las columnas store_id, first_name y last_name a Tienda, Nombre y Apellido respectivamente.
    Ordena de manera descendente la columna Apellido

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
    Selecionar las tuplas de la tabla actor las cuales el nombre sea Dan 
    Selecionar city como ciudades de la tabla city las cuales tengan contry_id sean igual a 102
    Seleccionar las tuplas de la tabla customer de los customer que compren en la tienda con id = 1 
*/

SELECT * FROM sakila.actor WHERE first_name = 'dan';

SELECT * FROM sakila.city WHERE country_id = 102;

SELECT * FROM sakila.customer WHERE store_id = 1;

/*
    Ej7
    Seleccionar las tuplas de la tabla inventory las cuales tengan film_id mayores a 50
    Seleccionar los amount menores a 3 de la tabla payment y que no se repitan
*/

SELECT * FROM  sakila.inventory WHERE film_id > 50 ;

SELECT DISTINCT * FROM sakila.payment WHERE amount < 3;
/*
    Ej8
    Seleccionar las tuplas las cuales staff_id sea distinto de 2 de la tabla staff
    Seleccionar las tuplas de language  las cuales su name sea distinto de german
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
    Seleccionar las tuplas de la tabla film las cuales special_features sea Trailers y replacement_cost sea mayor a 10
*/
SELECT * FROM sakila.film WHERE special_features = 'Trailers' AND replacement_cost > 10;
/*
    Ej12
    Seleccionar las tuplas de la tabla country las cuales country sea Algeria o su country_id sea 12
    Seleccionar las tuplas de la tabla language las cuales name sea english o french
*/

SELECT * FROM sakila.country WHERE country = 'Algeria' or country_id = 12;

SELECT * FROM sakila.language  WHERE name = 'english' or name = 'french';

/*
    Ej13
    Seleccionar las tuplas de la tabla category las cuales name no sea Action y tampoco sea Sports
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

