# Solucionario sesión # 02

### Q_01. Obtener una lista de todas las categorías distintas:
```sql
select distinct(category_name)
from categories
```

### Q_02. Obtener una lista de todas las regiones distintas para los clientes:
```sql
select distinct(region)
from customers
```

### Q_03. Obtener una lista de todos los títulos de contacto distintos:
```sql
select distinct(contact_title)
from customers
```

### Q_04. Obtener una lista de todos los clientes, ordenados por país:
```sql
select *
from customers
order by country ASC
```

### Q_05. Obtener una lista de todos los pedidos, ordenados por id del empleado y fecha del pedido:
```sql
select *
from orders
order by employee_id, order_date
```

### Q_06. Insertar un nuevo cliente en la tabla Customers:
```sql

```

### Q_07. Insertar una nueva región en la tabla Región:
```sql

```

### Q_08. Obtener todos los clientes de la tabla Customers donde el campo Región es NULL:
```sql

```

### Q_09. Obtener Product_Name y Unit_Price de la tabla Products, y si Unit_Price es NULL, use el precio estándar de $10 en su lugar:
```sql

```

### Q_10. Obtener el nombre de la empresa, el nombre del contacto y la fecha del pedido de todos los pedidos:
```sql

```

### Q_11. Obtener la identificación del pedido, el nombre del producto y el descuento de todos los detalles del pedido y productos:
```sql

```

### Q_12. Obtener el identificador del cliente, el nombre de la compañía, el identificador y la fecha de la orden de todas las órdenes y aquellos clientes que hagan match :
```sql

```

### Q_13. Obtener el identificador del empleados, apellido, identificador de territorio y descripción del territorio de todos los empleados y aquellos que hagan match en territorios:
Print:
```sql

```

### Q_14. Obtener el identificador de la orden y el nombre de la empresa de todos las órdenes y aquellos clientes que hagan match:
```sql

```

### Q_15. Obtener el identificador de la orden, y el nombre de la compañía de todas las órdenes y aquellos clientes que hagan match:
```sql

```

### Q_16. Obtener el nombre de la compañía, y la fecha de la orden de todas las órdenes y aquellos transportistas que hagan match. Solamente para aquellas ordenes del año 1996:
```sql

```

### Q_17. Obtener nombre y apellido del empleados y el identificador de territorio, de todos los empleados y aquellos que hagan match o no de employee_territories:
```sql

```

### Q_18. Obtener el identificador de la orden, precio unitario, cantidad y total de todas las órdenes y aquellas órdenes detalles que hagan match o no:
```sql

```

### Q_19. Obtener la lista de todos los nombres de los clientes y los nombres de los proveedores:
```sql

```

### Q_20. Obtener la lista de los nombres de todos los empleados y los nombres de los gerentes de departamento:
```sql

```

### Q_21. Obtener los productos del stock que han sido vendidos:
```sql

```

### Q_22. Obtener los clientes que han realizado un pedido con destino a Argentina:
```sql

```

### Q_23. Obtener el nombre de los productos que nunca han sido pedidos por clientes de Francia:
```sql

```

### Q_24. Obtener la cantidad de productos vendidos por identificador de orden:
```sql

```

### Q_25. Obtener el promedio de productos en stock por producto:
```sql

```

### Q_26. Cantidad de productos en stock por producto, donde haya más de 100 productos en stock:
```sql

```

### Q_27. Obtener el promedio de frecuencia de pedidos por cada compañía y solo mostrar aquellas con un promedio de frecuencia de pedidos superior a 10:
```sql

```

### Q_28. Obtener el nombre del producto y su categoría, pero muestre "Discontinued" en lugar del nombre de la categoría si el producto ha sido descontinuado:
```sql

```

### Q_29. Obtener el nombre del empleado y su título, pero muestre "Gerente de Ventas" en lugar del título si el empleado es un gerente de ventas (Sales Manager):
```sql

```
