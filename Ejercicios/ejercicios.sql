# Comentario de una linea
/*
    Comentario multilinea
*/

/*  SELECT, DISTINCT, ORDER BY
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