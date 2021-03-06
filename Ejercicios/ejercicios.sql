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
    Consultar cuanto es el total de todas las tuplas de amount
*/

SELECT SUM(AMOUNT) FROM sakila.payment;

/* 
    Ej40
    Sumar las columnas de la tabla inventory
*/

SELECT inventory_id + film_id + store_id FROM sakila.inventory;

/* 
    Ej41
    Mostrar cuantos registros hay en la tabla address
*/

SELECT COUNT(*) FROM sakila.address;

/* 
    Ej42
    Mostrar cuanto es el valor promedio de la columna amount de la tabla payment
*/

SELECT AVG(amount) FROM sakila.payment;

/* 
    Ej43
    Mostrar el valor maximo y minimo de la columna length de la tabla film
*/

SELECT MAX(length) FROM sakila.film;

SELECT MIN(length) FROM sakila.film;

/* 
    Ej44
    Consulta la tabla rental de la base de datos sakila.
    Realiza un COUNT de  la columna rental_id.
*/

SELECT COUNT(rental_id) FROM sakila.rental;

/* 
    Ej45
    Consulta la tabla payment de la base de datos sakila.
    Realiza un MAX de  la columna amount.
*/

SELECT MAX(amount) FROM sakila.payment;

/*GROUP BY
    Ej46
    Seleccionar los datos de la columna last_name de la tabla actor y cuantas veces se repiten.
*/

SELECT last_name, COUNT(*) FROM sakila.actor GROUP BY last_name;

/* 
    Ej47
    Seleccionar de la tabla payment con un inner join de la tabla customer, cuanto gasto cada cliente (amount).
    Mostrar customer_id, first_name y last_name de la tabla customer.
*/

SELECT c.customer_id, c.first_name, c.last_name,SUM(p.amount) FROM sakila.payment p INNER JOIN sakila.customer c ON (c.customer_id = p.customer_id) GROUP BY c.customer_id, c.first_name, c.last_name;
/* 
    Ej48
    Consulta la tabla rental de la base de datos sakila.
    Realiza un MAX de  la columna rental_date de cada customer_id.
*/

SELECT customer_id ,MAX(rental_date) FROM sakila.rental GROUP BY customer_id;

/*HAVING
    Ej49
    Seleccionar cuales valores de la columna last_name de la tabla actor se repiten mas de 3 veces
*/

SELECT last_name, count(*) FROM sakila.actor GROUP BY last_name HAVING COUNT(*) > 3;

/* 
    Ej50
    Seleccionar las tuplas de customer_id, first_name, last_name y el amount total de la tabla payment con un INNER JOIN con customer.
    Sus customer_id deben coincidir, deben mostrarse solo los amount menores a 80 ordenados de mayor a menor. 
*/

SELECT c.customer_id, c.first_name, c.last_name, SUM(p.amount) FROM sakila.payment p INNER JOIN sakila.customer c ON (c.customer_id = p.customer_id) GROUP BY c.customer_id, c.first_name, c.last_name HAVING SUM(p.amount) < 80 ORDER BY SUM(p.amount)  DESC ;

/* 
    Ej51
    Realiza un COUNT de  last_name.
    Mostrar cuando el COUNT sea mayor de 2.
*/

SELECT last_name, COUNT(*) FROM sakila.actor GROUP BY last_name HAVING COUNT(*) > 3;

/*CHAR_LENGTH 
    Ej52
    Seleccionar las tuplas de la tabla name y la longitud del valor de la tupla como LongitudCadena de la tabla category.
    Seleccionar las tuplas de la tabla city y la longitud del valor de la tupla como LongitudCadena de la tabla city.
*/

SELECT name, CHAR_LENGTH(name) AS LongitudCadena FROM sakila.category;

SELECT city, CHAR_LENGTH(city) AS LongitudCadena FROM sakila.city;

/*CONCAT
    Ej53
    Seleccionar en una columna first_name y last_name con un espacio de separacion, como NombreCompleto y customer_id de la tabla customer.
*/

SELECT customer_id, CONCAT(first_name,' ',last_name) AS NombreCompleto FROM sakila.customer;

/* 
    Ej54
    Seleccionar dentro de una columna separadas por un - las columnas film_id, title, description, release_year, todo como Pelicula de la tabla film.
*/

SELECT CONCAT_WS('-',film_id ,title,description,release_year) AS Pelicula FROM sakila.film;

/* 
    Ej55
    Seleccionar las tuplas y el redondeado de la columna amount como ValorRedondeado de la tabla payment.
*/

SELECT *, ROUND(amount,0) AS ValorRedondeado FROM sakila.payment;

/* 
    Ej56
    Seleccionar todas las tuplas con una columna de NombreCompleto con first_name y last_name en minuscula de la tabla actor.
*/

SELECT *, LCASE(CONCAT(first_name,' ',last_name)) AS NombreCompleto FROM sakila.actor;

/* 
    Ej57
    Usa la función CHAR_LENGTH() en la tabla customer y calcula la longitud de la columna email.
*/

SELECT customer_id,CHAR_LENGTH(email) AS logitud_email FROM sakila.customer;

/* 
    Ej58
    Usa la función CONCAT() en la tabla customer y has un concatenado entre first_name, last_name y email.
*/

SELECT customer_id, CONCAT_WS('-',first_name ,last_name, email) AS NombreCompleto_email FROM sakila.customer;

/* 
    Ej59
    Usa la función CONCAT_WS() en la tabla film y has un concatenado de todas las columnas.
*/

SELECT CONCAT_WS('--',film_id, title, description, release_year, language_id, original_language_id, rental_duration, rental_rate, length, replacement_cost, rating, special_features, last_update) FROM sakila.film;

/* 
    Ej60
    Consulta la tabla payment y has un group by por customer_id para el promedio de amount, después usa la función ROUND() para redondear a cero decimales el promedio.
*/

SELECT customer_id, ROUND(AVG(amount)) AS PromedioGastado FROM sakila.payment GROUP BY customer_id;


/* 
    Ej61
    Usa la función UCASE() en la tabla city y convierte la columna city en mayúsculas.
*/

SELECT *, UCASE(city) FROM sakila.city;

/* 
    Ej62
    Seleccionar address_id, address, address2 y si en address2 es null, en una nueva columna llamada comentario hay que seleccionar si es sin direccion o con direccion de todas las tuplas de la tabla address. 
*/

SELECT address_id,address, address2, CASE WHEN address2 IS NULL THEN 'Sin direccion 2' ELSE 'Con direccion' END AS Comentario FROM sakila.address;

/* 
    Ej63
    Seleccionar payment_id, amount y crear una columna comentario que si amount es menor a 1 sea Precio minimo, si esta entre 1 y 3 sea Precio intermedio y si es mayor a 3 sea Precio alto de la tabla payment.
*/

SELECT payment_id, amount, CASE WHEN amount< 1 THEN 'Precio minimo' WHEN amount BETWEEN 1 AND 3 THEN 'Precio intermedio' ELSE 'Precio alto' END AS Comentario FROM sakila.payment;

/* 
    Ej64
    Usa la función CASE en la tabla film y calcula 3 casos, si rental_rate es menor que 1 ingresa "Pelicula Mala", si la calificacion esta dentro de 1 y 3 que muestre "Pelicula Buena", si es mayor que muestre "Pelicula Excelente".
*/

SELECT film_id, CASE WHEN rental_rate < 1 THEN 'Pelicula Mala' WHEN rental_rate BETWEEN 1 AND 3 THEN 'Pelicula Buena' ELSE 'Pelicula Exelente' END AS Comentario FROM sakila.film

/*SUBQUERIES
    Ej65
    Seleccionar film_id, title de la tabla film de las peliculas que su primera letra sea K o Q, de las subqueries de las pelicuas que su language_id de la misma tabla sea el resultado de la subquierie de la tabla language donde name sea English.

*/

SELECT film_id, title FROM sakila.film WHERE title LIKE 'K%' OR title LIKE 'Q%'	AND title IN (SELECT title FROM sakila.film WHERE language_id IN (SELECT language_id FROM sakila.language WHERE name = 'English'));

/* 
    Ej66
    Seleccionar first_name, last_name de la tabla actor donde actor_id sea la subquerie de la misma tabla venga de la subqueriede film_id de la tabla film donde el title sea Alone Trip.
*/

SELECT first_name, last_name FROM sakila.actor WHERE actor_id IN (SELECT actor_id FROM sakila.film_actor WHERE film_id IN (SELECT film_id FROM sakila.film WHERE title= 'Alone Trip'));

/* 
    Ej67
    Seleccionar film_id, title de la tabla film donde film_id sea la subquerie de la tabla film_category donde category_id sea la subquerie de la tabla category donde name='Family'
*/

SELECT film_id, title FROM sakila.film WHERE film_id IN (SELECT film_id FROM sakila.film_category WHERE category_id IN (SELECT category_id FROM sakila.category WHERE name='Family'));

/* 
    Ej68
    Encuentre el nombre completo y la dirección de correo electrónico de todos los clientes que hayan alquilado una película de acción.
    Todos los pagos que exceden el promedio para cada cliente junto con el recuento total de pagos que exceden el promedio.
*/
# nombre, apellido, email de customer
SELECT first_name, last_name, email FROM sakila.customer;
# promedio que gasta cada cliente
SELECT *, AVG(amount) AS PromedioGastado FROM sakila.payment GROUP BY customer_id;
# las tuplas de rentas de peliculas de accion
SELECT *  FROM sakila.payment WHERE (rental_id IN (SELECT rental_id FROM sakila.rental WHERE inventory_id IN (SELECT inventory_id FROM sakila.inventory WHERE film_id IN (SELECT film_id FROM sakila.film WHERE film_id IN(SELECT film_id FROM sakila.film_category WHERE category_id IN (SELECT category_id FROM sakila.category WHERE name = 'Action'))))));
#ejercicio no terminado, no se como unir los 3.
/* 
    Ej69
    Crear una vista llamada ingresos_por_genero y seleccionar name, la suma de amount de la tabla category con un INNER JOIN de film_category donde category_id sea igual al de la tabla nueva.
    Luego hacer un INNER JOIN con inventory donde film_id sea igual al de la tabla nueva. Luego hacer un INNER JOIN con la tabla rental y inventory_id sea igual al de la tabla nueva.Luego hacer un INNER JOIN con payment y que rental_id sea igual al de la tabla nueva.
    Seleccionar a esa vista y luego borrarla.
*/
CREATE VIEW ingresos_por_genero AS SELECT name, SUM(amount) FROM sakila.category INNER JOIN sakila.film_category ON category.category_id = film_category.category_id INNER JOIN sakila.inventory ON film_category.film_id = inventory.film_id INNER JOIN sakila.rental ON inventory.inventory_id = rental.inventory_id INNER JOIN sakila.payment ON rental.rental_id = payment.rental_id GROUP BY name ORDER BY SUM(amount) DESC LIMIT 5;

SELECT * FROM ingresos_por_genero;

DROP VIEW ingresos_por_genero;

/* 

    Ej70
    La vista "lista de clientes" proporciona una lista de clientes, con el nombre y el apellido concatenados
    juntos y direcciones de información combinadas en una sola vista.
    La vista "lista de clientes" incorpora datos de las tablas de clientes, direcciones, ciudades y países.
    Seleccionarla y luego borrarla.
*/

CREATE VIEW lista_de_clientes  AS SELECT c.customer_id, c.first_name, c.last_name, a.address, ci.city, co.country FROM sakila.customer c INNER JOIN sakila.address a ON c.address_id = a.address_id INNER JOIN sakila.city ci ON a.city_id = ci.city_id INNER JOIN sakila.country co ON ci.country_id = co.country_id  ;

SELECT * FROM lista_de_clientes;

DROP VIEW lista_de_clientes;

/*Consultas multitablas 
    Ej71
    Quien ha vendido mas del STAFF en Agosto del 2005.
*/

SELECT s.first_name,s.last_name, SUM(amount) AS 'Total_amount' FROM sakila.staff s INNER JOIN sakila.payment p ON s.staff_id = p.staff_id AND p.payment_date LIKE '2005-08%'GROUP BY s.first_name;

/*
    Ej72
    Hacer una lista de cada pelicula y el numero de actores que figuran en esa pelicula. Utilizar tablas film_actor y film.
*/

SELECT SUM(fa.actor_id) AS 'Numero_de_actores',f.title FROM sakila.film f INNER JOIN sakila.film_actor fa ON f.film_id = fa.film_id GROUP BY f.title;

/*
    Ej73
    Cuantas copias de la pelicula Hunchback Impossible existen en el sistema de inventario
*/

SELECT f.title, COUNT(f.title) AS 'Existencias' FROM sakila.film f INNER JOIN sakila.inventory i ON f.film_id = i.film_id WHERE f.title = 'Hunchback Impossible';

/*
    Ej74
   Anotar el total pagado por cada cliente. Listar los clientes alfabeticamente por apellido.
*/

SELECT c.first_name,c.last_name,SUM(p.amount) AS 'Total_gastado' FROM sakila.payment p INNER JOIN sakila.customer c ON (p.customer_id = c.customer_id) GROUP BY c.customer_id ORDER BY c.last_name;

/*
    Ej75
    Encuentra DVD vencidos
    Muchas tiendas de DVD producen una lista diaria de alquileres vencidos para que los clientes puedan ser contactados y se les pida que devuelvan sus DVD vencidos.  
    Para crear una lista de este tipo, busque películas en la tabla de alquiler con una fecha de retorno NULA y donde la fecha de alquiler sea más antigua que la duración del alquiler especificada en la tabla de películas. Si es así, la película está atrasada y debemos producir el nombre de la película junto con el nombre del cliente y el email.
*/

SELECT c.first_name,c.email, f.title FROM sakila.rental r INNER JOIN sakila.customer c ON r.customer_id = c.customer_id INNER JOIN sakila.inventory i ON i.inventory_id = r.inventory_id INNER JOIN sakila.film f ON i.film_id = f.film_id WHERE r.return_date is null;

/*INSERT
    Ej76
    Insertar en la tabla city una ciudad con cualquier nombre y del pais con id 100 y luego seleccionarla.
*/
INSERT INTO sakila.city (city, country_id) VALUES ('prueba',100);
SELECT * FROM sakila.city WHERE city = 'prueba'; 
/*
    Ej77
    Insertar en la tabla actor un actor con cualquier nombre y apellido y luego seleccionarla.
*/

INSERT INTO sakila.actor(first_name,last_name) VALUES('Pepe','Messi');
SELECT * FROM sakila.actor WHERE last_name = 'MESSI';

/*
    Ej78
    Insertar en la tabla category la categoria ciencia ficcion y luego seleccionarla.
*/

INSERT INTO sakila.category(name) VALUES('Ciencia ficcion');
SELECT * FROM sakila.category WHERE name = 'Ciencia ficcion';

/*
    Ej79
    Insertar en la tabla actor la categoria una persona cualquiera y luego seleccionarla.
*/

    INSERT INTO sakila.actor(first_name,last_name) VALUES('Pepe','Messi');
    SELECT * FROM sakila.actor WHERE last_name = 'MESSI';

/*
    Ej80
    Usa la función INSER INTO y agrega un registro a la tabla address y luego seleccionarla.
*/

INSERT INTO sakila.address (address,city_id) VALUES ('9 de julio',300);
SELECT * FROM sakila.address WHERE address = '9 de julio';
   
/*
    Ej81
    Usa la función INSER INTO y agrega un registro a la tabla category y luego seleccionarla.
*/

INSERT INTO sakila.category (name) VALUES ('comedia');
SELECT * FROM sakila.category WHERE name= 'comedia';

/*
    Ej82
    Usa la función INSER INTO y agrega un registro a la tabla customer y luego seleccionarla. 
*/

INSERT INTO sakila.customer (store_id,first_name, last_name,address_id,active) VALUES (1,'pepe','romero',8,1);
SELECT * FROM sakila.customer WHERE first_name = 'pepe' ;

/*
    Ej83
    Usa la función INSER INTO y agrega un registro a la tabla film_text y luego seleccionarla.
*/

INSERT INTO sakila.film_text (title,description) VALUES ('ejemplo','ejemplo');
SELECT * FROM sakila.film_text WHERE title = 'ejemplo';

/*UPDATE
    Ej84
    Actualizar la columna city de la tabla city con id 87 a new york y luego mostrarlas.
*/

SELECT * FROM sakila.city WHERE country_id = 87;

UPDATE sakila.city SET city= 'new york' WHERE country_id = 87;

/*
    Ej85
    Actualizar las tuplas de la tabla actor y actualizar su first_name igual a RAUL solo si tienen last_name igual a GUINESS, luego mostrarlas.
*/

SELECT * FROM sakila.actor WHERE last_name= 'Guiness';

UPDATE sakila.actor SET first_name= 'RAUL' WHERE last_name = 'GUINESS';

/*
    Ej86
    Actualizar la tupla con staff_id igual a 2 su first_name a Pedro de la tabla staff y luego mostrarla.
*/

SELECT * FROM sakila.staff WHERE staff_id = 2;

UPDATE sakila.staff SET first_name = 'Pedro' WHERE staff_id = 2;

/*
    Ej87
    Usa la función UPDATE y actualiza un registro a la tabla actor.
*/

SELECT * FROM sakila.actor WHERE actor_id = 2;

UPDATE sakila.actor SET last_name = 'Messi' WHERE actor_id = 2;

/*
    Ej88
    Usa la función UPDATE y actualiza un registro a la tabla address.
*/

SELECT * FROM sakila.address WHERE address_id = 2;

UPDATE sakila.address SET  address = '123 Falsa' WHERE address_id = 2;

/*
    Ej89
    Usa la función UPDATE y actualiza un registro a la tabla category.
*/

SELECT * FROM sakila.category WHERE name = 'super action';

UPDATE sakila.category SET  name = 'super action' WHERE name = 'action';

/*
    Ej90
    Usa la función UPDATE y actualiza un registro a la tabla customer.
*/

SELECT * FROM sakila.customer WHERE first_name = 'Paty';

UPDATE sakila.customer SET  name = 'Paty' WHERE name = 'Mary';

/*
    Ej91
    Usa la función UPDATE y agrega un registro a la tabla film_text.
*/

SELECT * FROM sakila.film_text WHERE title LIKE 'be%';

UPDATE sakila.film_text SET  description = 'muy buena peli' WHERE name LIKE'be%';

/*ALTER TABLE
    Ej92
    Crear una columna que se llame genero_actor y que solo se pueda ingresar 1 letra de la tabla actor y luego borrar la tabla.
*/

ALTER TABLE sakila.actor ADD COLUMN genero_actor CHAR(1);

ALTER TABLE actor DROP COLUMN genero_actor;

/*
    Ej93
    Crear la tabla del item anterior, cambiarle el genero a 3 actores y luego seleccionarlos.
*/

ALTER TABLE sakila.actor ADD COLUMN genero_actor CHAR(1);

UPDATE sakila.actor SET genero_actor = 'M' WHERE actor_id =1;

UPDATE sakila.actor SET genero_actor = 'M' WHERE actor_id =2;

UPDATE sakila.actor SET genero_actor = 'F' WHERE actor_id =3;

SELECT * FROM sakila.actor WHERE actor_id NOT NULL;

/*
    Ej94
    Usa la función ALTER TABLE  y agrega la columna categoria a la tabla film_text, llena la columna de los primeros 10 film_id.
    Luego seleccionarla.
*/

ALTER TABLE sakila.film_text ADD COLUMN Categoria CHAR(1);

UPDATE sakila.film_text SET categoria = 'B' WHERE film_id < 11;

SELECT * FROM sakila.film_text;

/*COMPLEMENTARIOS
    Ej95
    ¿Qué actores tienen el primer nombre 'Scarlett'?
*/
SELECT * FROM sakila.actor WHERE first_name = 'Scarlett'
/*
    Ej96
    ¿Qué actores tienen el apellido "Johansson"?
*/

SELECT * FROM sakila.actor WHERE last_name = 'Johansson'

/*
    Ej97
    ¿Cuántos apellidos de actores distintos hay?
*/

SELECT COUNT(DISTINCT(last_name)) FROM sakila.actor;

/*
    Ej98
    ¿Qué apellidos no se repiten?
*/

SELECT last_name FROM sakila.actor GROUP BY last_name HAVING COUNT(last_name) = 1;
/*
    Ej99
    ¿Qué actor ha aparecido en la mayoría de las películas?
*/

SELECT a.actor_id,a.first_name, a.last_name, COUNT(f.actor_id) AS Contador FROM sakila.actor a INNER JOIN sakila.film_actor f ON (a.actor_id = f.actor_id) GROUP BY f.actor_id ORDER BY Contador DESC LIMIT 1;

/*
    Ej100
    ¿Se puede alquilar ‘Academy Dinosaur’ en la tienda 1?
*/

SELECT * FROM sakila.inventory i INNER JOIN sakila.film f ON (f.film_id = i.film_id) WHERE title ='Academy Dinosaur' AND i.store_id = 1;
