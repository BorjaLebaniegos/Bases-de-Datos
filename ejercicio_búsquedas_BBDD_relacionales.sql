Obtener todos los datos de la tabla city.

      Select * FROM city;

Obtener los nombres de las ciudades de la tabla city.

       Select name FROM city;

Obtener los nombres de aquellas ciudades cuya población supere los 10 millones de habitantes.

      Select name FROM city WHERE population >10000000;

Obtener el número de ciudades que supere los 10 millones de habitantes.

      select count(name) from city WHERE population >10000000;
 
Obtener todos los campos de las ciudades cuyo distrito sea Buenos Aires.

      Select *  FROM city WHERE district="Buenos Aires";

Obtener la población de San Rafael.

      Select Population FROM city WHERE name = "San Rafael";

Mostrar la población de San Rafael para que ahora se vea 2 mil habitantes más de los almacenados.

      Select Population +20000 as Nuevoshabitantes FROM city WHERE name="San Rafael";

Obtener los distritos y los habitantes de Buenos Aires cuya población sea menor que 100 mil habitantes.

        Select * FROM city WHERE district="Buenos Aires" and Population < 100000;
