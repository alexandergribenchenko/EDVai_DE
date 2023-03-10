# Sesión 02 EDVai - Bootcamp DE

# 01. Iniciar container
- `docker run --name edvai_postgres -e POSTGRES_PASSWORD=edvai -d -p 5431:5431 fedepineyro/edvai_postgres:v1`: levantar el docker container para el ejercicio. 
- `docker exec -it edvai_postgres bash`: entrar en el container de manera interactiva

# 02. Intalar editor de texto al interior del container
Una vez estamos al interior del container en ejecución hacemos:
- `apt update`: para actualizar el registro de paquetes de linux
- `apt install nano`: para instalar el editor de texto al interior del contenedor.

# 03. Edicion del archivo de configuración de postgres para cambiar puerto
- `nano /var/lib/postgresql/pgdata/postgresql.config: nos permite editar el archivo de configuracion de postgres.
- `ctrl+w`: me permite buscar una palabra en particular, en este caso `port`.
- `port = 5431`: Escribimos sin comentarios el nuevo puerto que deseamos configurar. 
- `ctrl+o`: nos permite salvar.
- `ctrl+x`: nos permite salir y volver a la consola del container.
- `exit`: salimos tambien del contenedor.

# 04. Detener e iniciar nuevamante el contenedor
- `docker stop edvai_postgres`: detenemos el contenedor.
- `docker start edvai_postgres`: detenemos el contenedor.

# 05. Generamos la conexión con postgres empleando DBeaver
- `Connect to database + SQL + PostgreSQL`: Iniciar la conexión.
- `Host`: localhost
- `Database`: northwind
- `Port`: 5431
- `Username`: postgres
- `Password`: edvai
- `Test Connection + Finish`: Probar la conexión y finalizar.









