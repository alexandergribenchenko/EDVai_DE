# Práctica Ingest

1. Ingresar a la vm, luego ir a la carpeta "data engineer" y a consola_hadoop. Luego seleccionar Run.

2. Ingresar al directorio /home/hadoop/scripts.
```bash
cat /home/hadoop/scripts
```


3. Crear un script llamado landing.sh que baje el archivo `https://github.com/fpineyro/homework-0/blob/master/starwars.csv` al
directorio temporal /home/hadoop/landing y luego lo envíe al directorio de Hadoop file system (HDFS) /ingest. Antes de finalizar el
script que borre el archivo starwars.csv del directorio temporal.

- Creamos el archivo con `touch`:
```bash
touch landing.sh
```
- Contenido del archivo `touch landing.sh`:
```bash
#!/bin/bash
wget -P /home/hadoop/landing https://github.com/fpineyro/homework-0/blob/master>
hdfs dfs -put /home/hadoop/landing/starwars.csv /ingest
rm /home/hadoop/landing/starwars.csv
```

4. Cambiar permisos para que el script pueda ser ejecutado

```chmod 777 landing.sh```

5. Ejecutar el script para que baje el archivo starwars.csv de Github y lo
envíe al directorio /ingest de HDFS

```./landing.sh```

6. Verificar que el archivo se encuentre en el directorio /ingest de HDFS

```hdfs dfs -ls /ingest```


