# Sección 01. Práctica Sqoop.

## 01.01. Comandos Sqoop.

### Listar databases
```bash
sqoop list-databases \
--connect jdbc:postgresql://172.17.0.3:5432/northwind \
--username postgres -P
```

### Listar tablas 
```bash
sqoop list-tables \
--connect jdbc:postgresql://172.17.0.3:5432/northwind \
--username postgres -P
```

### Ejecutar queries
```bash
sqoop eval \
--connect jdbc:postgresql://172.17.0.3:5432/northwind \
--username postgres \
--P \
--query "select * from region limit 10"
```

### Importar tablas
```bash
sqoop import \
--connect jdbc:postgresql://172.17.0.3:5432/northwind \
--username postgres\
--table region\
--m 1 \
--P \
--target-dir /sqoop/ingest \
--as-parquetfile \
--delete-target-dir
```

### Importar tablas con filtro
```bash
sqoop import \
--connect jdbc:postgresql://172.17.0.3:5432/northwind \
--username postgres\
--table region\
--m 1 \
--P \
--target-dir /sqoop/ingest/southern \
--as-parquetfile \
--where "region_description = 'Southern' " \
--delete-target-dir
```

## 01.02. Ejercicios Sqoop

### Q_01. 
Mostrar las tablas de la base de datos `northwind`.
```bash

```

### Q_02. 
Mostrar los clientes de `Argentina`.
```bash

```

### Q_03. 
Importar un archivo `.parquet` que contenga toda la tabla orders. Luego ingestar el archivo a HDFS (carpeta `/sqoop/ingest`).
```bash

```

### Q_04. 
Importar un archivo `.parquet` que contenga solo los productos con mas 20 unidades en stock, de la tabla `Products`. Luego ingestar el archivo a HDFS (carpeta `ingest`).
```bash

```


