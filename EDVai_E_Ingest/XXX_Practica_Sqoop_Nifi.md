# Práctica Sqoop

## Comandos

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





































### Q_02. 
Ingresar al directorio `/home/hadoop/scripts`.
```bash
cat /home/hadoop/scripts
```


### Q_03. 
Crear un script llamado landing.sh que baje el archivo `https://github.com/fpineyro/homework-0/blob/master/starwars.csv` al
directorio temporal `/home/hadoop/landing` y luego lo envíe al directorio de Hadoop file system (HDFS) `/ingest`. Antes de finalizar el script que borre el archivo `starwars.csv` del directorio temporal.

- **Paso 01.** Creamos el archivo con `touch`:
```bash
touch landing.sh
```
- **Paso 02.** Contenido del archivo `touch landing.sh`:
```bash
#!/bin/bash
wget -P /home/hadoop/landing https://github.com/fpineyro/homework-0/blob/master>
hdfs dfs -put /home/hadoop/landing/starwars.csv /ingest
rm /home/hadoop/landing/starwars.csv
```

### Q_04. 
Cambiar permisos para que el script pueda ser ejecutado
```bash
chmod 777 landing.sh
```

### Q_05. 
Ejecutar el script para que baje el archivo starwars.csv de Github y lo envíe al directorio `/ingest` de HDFS.
```bash
./landing.sh
```

### Q_06. 
Verificar que el archivo se encuentre en el directorio /ingest de HDFS
```bash
hdfs dfs -ls /ingest
```

### Q_07. 
Al finalizar por favor apagar la VM
