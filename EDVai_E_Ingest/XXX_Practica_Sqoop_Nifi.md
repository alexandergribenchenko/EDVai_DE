# Sección 01. Práctica Sqoop.

## 01.01. Comandos Sqoop.

### Ver versión de sqoop
```bash
sqoop-version
```

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
Los ejercicios ejecutados a continuación se desarrollan al interior del container de hadoop.
Verificaremos con `docker inspect edvai_postgres` cual es el puerto que esta utilizando el container. Comunmente el `172.17.0.3` en el `IPAdress` y el `5432` en el `HostPort`, dado que estos datos los emplearemos en la conexion `jdbc`.

Se debe verificar ademas que ambos containers (`edvai_postgres` y `edvai_hadoop`) estan levantados. De no ser asi levantarlos en tal caso con `docker start edvai_postgres`.

### Q_01. 
Mostrar las tablas de la base de datos `northwind`.
```bash
sqoop list-tables \
--connect jdbc:postgresql://172.17.0.3:5432/northwind \
--username postgres \
-P
```

### Q_02. 
Mostrar los clientes de `Argentina`.
```bash
sqoop eval \
--connect jdbc:postgresql://172.17.0.3:5432/northwind \
--username postgres \
--P \
--query "select company_name, contact_name from customers where country = 'Argentina'"
```
PDT: incluir el AND \$CONDITIONS que aparece en el video principal de Fede.


### Q_03. 
Importar un archivo `.parquet` que contenga toda la tabla orders. Luego ingestar el archivo a HDFS (carpeta `/sqoop/ingest`).
- **Paso 03.01.**
Verificar si el directorio donde se va a ingestar existe, y sino crearlo.
```bash
hdfs dfs -ls / 
hdfs dfs -mkdir /sqoop/ingest
```
- **Paso 03.02.**
Hacer la ingesta.
```bash
sqoop import \
--connect jdbc:postgresql://172.17.0.3:5432/northwind \
--username postgres \
--table orders \
--m 1 \
--P \
--target-dir /sqoop/ingest \
--as-parquetfile \
--delete-target-dir
```

### Q_04. 
Importar un archivo `.parquet` que contenga solo los productos con mas 20 unidades en stock, de la tabla `Products`. Luego ingestar el archivo a HDFS (carpeta `ingest`).
```bash
sqoop import \
--connect jdbc:postgresql://172.17.0.3:5432/northwind \
--username postgres \
--table products \
--m 1 \
--P \
--target-dir /sqoop/ingest \
--as-parquetfile \
--where "units_in_stock>20" \
--delete-target-dir
```

# Sección 02. Práctica Nifi.

## 02.01. Pasos preliminares Nifi.
- **Bajar la imagen de docker de Nifi:** ejecutamos `docker pull apache/nifi` en el terminal de la VM.
- **Levantar el container de Nifi:** ejecutamos `docker run --name nifi -p 8443:8443 --dns=8.8.8.8 -d apache/nifi` en el terminal de la VM.
- **Abrir la url de Nifi:** Abrimos la UI web de nifi (desde el icono que esta en la carpeta DE en la VM o desde `https://localhost:8443/nifi`).
- **Obtener las credenciales de Nifi:** Buscamos en los logs el usr y pass. Para ello ejecutamos `docker logs nifi | grep Generated` en la terminal de la VM.
- **Nos logueamos en la url con las credenciales de Nifi:** ingresamos finalmente a Nifi.


### Q_01. 
En el shell de Nifi, crear un script `.sh` que descargue el archivo `starwars.csv` al directorio `/home/nifi/ingest` (crearlo si es necesario). Ejecutarlo con `./home/nifi/ingest/ingest.sh`. El archivo se encuentra en el enlace: `https://github.com/fpineyro/homework-0/blob/master/starwars.csv`.


```bash

```












