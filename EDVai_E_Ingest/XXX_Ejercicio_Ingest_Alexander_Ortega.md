# Práctica Ingest

### Q_01. 
Ingresar a la vm, luego ir a la carpeta "data engineer" y a consola_hadoop. Luego seleccionar Run.

### Q_02. 
Ingresar al directorio `/home/hadoop/scripts`. (Esto lo hacemos al interio de la consola de hadoop).
```bash
cd /home/hadoop/scripts
```

Podemos leer lo que hay al interior de cualquier archivo con el comando `cat`
 ```bash
cat ingest.sh
```

Podemos editar un archivo  con el editor `nano`
 ```bash
nano ingest.sh
```

##### Comandos de nano
Podemos editar un archivo  lo que hay al interior de cualquier archivo con el comando `cat`
 ```bash
cat ingest.sh
```
Ctrl - X: Salir

##### Comandos de hdfs 
Podemos enlistar lo que se encuntra al interior de HDFS.
 ```bash
hdfs dfs -ls /
hdfs dfs -ls /ingest
```

Podemos enlistar lo que se encuntra al interior de HDFS.
 ```bash
hdfs dfs -ls /
hdfs dfs -ls /ingest
```




##### que son los archivos .sh
Los archivos ".sh" en Linux son archivos de script de shell utilizados para automatizar tareas y ejecutar comandos de shell.











### Q_03. 
Crear un script llamado landing.sh que baje el archivo `https://github.com/fpineyro/homework-0/blob/master/starwars.csv` al directorio temporal `/home/hadoop/landing` y luego lo envíe al directorio de Hadoop file system (HDFS) `/ingest`. Antes de finalizar el script que borre el archivo `starwars.csv` del directorio temporal.

- **Paso 01.** Creamos el archivo con `touch`:
```bash
touch landing.sh
```
- **Paso 02.** Contenido del archivo `touch landing.sh`:
```bash
#!/bin/bash
wget -P /home/hadoop/landing https://github.com/fpineyro/homework-0/blob/master/starwars.csv
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
