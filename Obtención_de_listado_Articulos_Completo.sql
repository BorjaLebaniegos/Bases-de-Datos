1.- Obtener un listado completo de artículos, incluyendo por cada artículo los datos del artículo y de su fabricante.

		SELECT * FROM articulos, fabricantes WHERE fabricante=fabricantes.código;

2. Obtener un listado de artículos, incluyendo el nombre del artículo, su precio y el nombre de su fabricante.

		SELECT articulos.nombre AS artículo, precio, fabricantes.nombre FROM articulos, fabricantes WHERE fabricante=fabricantes.código;

3. Obtener el precio medio de los productos de cada fabricante, mostrado solo los códigos de fabricante.

		SELECT fabricante, avg(precio) FROM articulos GROUP BY fabricante;

4. Obtener el precio medio de los productos de cada fabricante, mostrando el nombre del fabricante.

		SELECT fabricantes.nombre, avg(precio) FROM articulos, fabricantes WHERE fabricante=fabricantes.código GROUP BY fabricantes.nombre;

5. Obtener los nombres de los fabricantes que ofrezcan productos cuyo precio medio sea mayor o igual a 150 euros.

		SELECT fabricantes.nombre, avg(precio) FROM articulos, fabricantes WHERE fabricante=fabricantes.código GROUP BY fabricantes.nombre HAVING avg(precio)>=150;

6. Obtener el nombre y precio del artículo más barato.

		SELECT articulos.nombre, precio FROM articulos WHERE precio=(SELECT min(precio) FROM articulos);

7. Obtener una lista con el nombre y el precio de los artículos más caros de cada proveedor (incluyendo el nombre del proveedor).

		SELECT articulos.nombre, precio, fabricantes.nombre FROM articulos, fabricantes WHERE fabricante=fabricantes.código AND precio=(SELECT max(precio) FROM articulos WHERE fabricante=fabricantes.código);