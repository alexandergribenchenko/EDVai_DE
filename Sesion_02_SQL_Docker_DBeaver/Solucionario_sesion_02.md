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
INSERT INTO Customers (customer_id, company_name, contact_name, contact_title, address, city, region, postal_code, country, phone, fax) 
VALUES ('ABCDE', 'ACME Corporation', 'John Smith', 'Sales Manager', '123 Main St.', 'Anytown', 'CA', '12345', 'USA', '555-555-1212', '555-555-1213')
```

### Q_07. Insertar una nueva región en la tabla Región:
```sql
INSERT INTO region (region_id, region_description) 
VALUES (5, 'Central')
```

### Q_08. Obtener todos los clientes de la tabla Customers donde el campo Región es NULL:
```sql
select *
from customers
where region is null
```

### Q_09. Obtener Product_Name y Unit_Price de la tabla Products, y si Unit_Price es NULL, use el precio estándar de $10 en su lugar:
```sql
SELECT product_name , COALESCE(unit_price , '10') as price
FROM products
```

### Q_10. Obtener el nombre de la empresa, el nombre del contacto y la fecha del pedido de todos los pedidos:
```sql
select company_name, contact_name, order_date
from orders
left join customers on orders.customer_id = customers.customer_id
```

### Q_11. Obtener la identificación del pedido, el nombre del producto y el descuento de todos los detalles del pedido y productos:
```sql
select order_id, product_name, discount 
from order_details
left join products on order_details.product_id = products.product_id 
```

### Q_12. Obtener el identificador del cliente, el nombre de la compañía, el identificador y la fecha de la orden de todas las órdenes y aquellos clientes que hagan match :
```sql
select orders.customer_id, company_name, order_id, order_date 
from orders
left join customers on orders.customer_id = customers.customer_id 
```

### Q_13. Obtener el identificador del empleados, apellido, identificador de territorio y descripción del territorio de todos los empleados y aquellos que hagan match en territorios:
Print:
```sql
select e.employee_id, last_name , et.territory_id, territory_description 
from employees e
left join employee_territories et  on e.employee_id = et.employee_id
left join territories t on et.territory_id = t.territory_id
```

### Q_14. Obtener el identificador de la orden y el nombre de la empresa de todos las órdenes y aquellos clientes que hagan match:
```sql
select order_id, company_name
from orders o
left join customers c on o.customer_id =c.customer_id 
```

### Q_15. Obtener el identificador de la orden, y el nombre de la compañía de todas las órdenes y aquellos clientes que hagan match:
```sql
select order_id, company_name
from orders o
left join customers c on o.customer_id =c.customer_id 
```

### Q_16. Obtener el nombre de la compañía, y la fecha de la orden de todas las órdenes y aquellos transportistas que hagan match. Solamente para aquellas ordenes del año 1996:
```sql
select s.company_name, o.order_date
from orders o
left join shippers s  on o.ship_via = s.shipper_id
where extract(year from o.order_date) = 1996
```

### Q_17. Obtener nombre y apellido del empleados y el identificador de territorio, de todos los empleados y aquellos que hagan match o no de employee_territories:
```sql
select  first_name, last_name, t.territory_id 
from employees e
left join employee_territories et on e.employee_id  = et.employee_id 
full outer join territories t on et.territory_id  = t.territory_id 
```

### Q_18. Obtener el identificador de la orden, precio unitario, cantidad y total de todas las órdenes y aquellas órdenes detalles que hagan match o no:
```sql
select  o.order_id, od.unit_price, od.quantity, od.unit_price*od.quantity as total
from orders o
left join order_details od on o.order_id = od.order_id
```

### Q_19. Obtener la lista de todos los nombres de los clientes y los nombres de los proveedores:
```sql
select distinct(s.company_name)
from suppliers s
union
select distinct(c.company_name)
from customers c
```

### Q_20. Obtener la lista de los nombres de todos los empleados y los nombres de los gerentes de departamento:
```sql
select distinct(e.first_name)
from employees e
```

### Q_21. Obtener los productos del stock que han sido vendidos:
```sql
WITH table_product_id AS (select distinct(od.product_id)
				  from order_details od
				  left join products p on od.product_id = p.product_id
				  order by product_id)
select product_name, product_id
from products
where product_id IN (SELECT product_id FROM table_product_id)
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
