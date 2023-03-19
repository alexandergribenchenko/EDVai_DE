# Resolucion - Ejercicios SQL Bootcamp Data Engineer - EDVAI

Consignas:

- **A)** Escribir las querys/consultas necesarias para llegar al resultado (print), usando windows
functions.
- **B)** Las consultas deben ser subidas a un proyecto público de github. Generar un script de
sql (.sql) por cada query. El nombre de cada archivo debe indicar el número de ejercicio.
- **C)** Crear un .pdf y agregar las capturas de pantalla de los resultados obtenidos por las
queries del punto B. Subirlo al mismo repositorio del punto B


### Q_01. Obtener el promedio de precios por cada categoría de producto. La cláusula `OVER(PARTITION BY CategoryID)` específica que se debe calcular el promedio de precios por cada valor único de `CategoryID` en la tabla.
```sql
select  
	c.category_name, 
	p.product_name, 
	p.unit_price,
	AVG(p.unit_price) OVER (PARTITION BY c.category_name) AS avgpricebycategory
from products p 
left join categories c on p.category_id  = c.category_id 
```

### Q_02. Obtener el promedio de venta de cada cliente: 
```sql

```

### Q_03. Obtener el promedio de cantidad de productos vendidos por categoría `(product_name, quantity_per_unit, unit_price, quantity, avgquantity)' 
```sql

```

### Q_04. Selecciona el ID del cliente, la fecha de la orden y la fecha más antigua de la orden para cada cliente de la tabla 'Orders'.
```sql

```

### Q_05. Seleccione el id de producto, el nombre de producto, el precio unitario, el id de categoría y el precio unitario máximo para cada categoría de la tabla `Products`.
```sql

```

### Q_06. Obtener el ranking de los productos más vendidos:
```sql

```

### Q_07. Asignar numeros de fila para cada cliente, ordenados por customer_id
```sql

```

### Q_08. Obtener el ranking de los empleados más jóvenes () ranking, nombre y apellido del empleado, fecha de nacimiento)
```sql

```

### Q_09. Obtener la suma de venta de cada cliente
```sql

```

### Q_10. Obtener la suma total de ventas por categoría de producto
```sql

```

### Q_11. Calcular la suma total de gastos de envío por país de destino
```sql

```

### Q_12. Ranking de ventas por cliente
```sql
 
```

### Q_13. Ranking de empleados por fecha de contratacion
Print:
```sql

```

### Q_14. Ranking de productos por precio unitario
```sql

```

### Q_15. Mostrar por cada producto de una orden, la cantidad vendida y la cantidad vendida del producto previo.
```sql

```

### Q_16. Obtener un listado de ordenes mostrando el id de la orden, fecha de orden, id del cliente y última fecha de orden
```sql

```

### Q_17. Obtener un listado de productos que contengan: id de producto, nombre del producto, precio unitario, precio del producto anterior, diferencia entre el precio del producto y precio del producto anterior.
```sql
 
```

### Q_18. Obtener un listado que muestra el precio de un producto junto con el precio del producto siguiente:
```sql

```

### Q_19. Obtener un listado que muestra el total de ventas por categoría de producto junto con el total de ventas de la categoría siguiente
```sql

```
