# Amazon

- `registration code`: SLiad+D4ZZN3
- `username`: agribenchenko
- `password: tcs`





# Docker
- fedepineyro/edvai_postgres:v1 edvai_postgres
- fedepineyro/edvai_ubuntu:v6  edvai_hadoop

`docker inspect edvai_postgres`: nos permite ver la IP donde esta corriendo el contenedor. (IPAdress, comunmente 172.17.0.3)



```
CONTAINER ID   IMAGE                           COMMAND                  CREATED       STATUS                     PORTS                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    NAMES
213777ae4a7d   fedepineyro/edvai_postgres:v1   "docker-entrypoint.s…"   3 weeks ago   Exited (255) 3 weeks ago   0.0.0.0:5432->5432/tcp, :::5432->5432/tcp                                                                                                                                                                                                                                                                                                                                                                                                                                                edvai_postgres
0485e86b7577   fedepineyro/edvai_ubuntu:v6     "/bin/bash -c /home/…"   3 weeks ago   Up About a minute          0.0.0.0:1527->1527/tcp, :::1527->1527/tcp, 0.0.0.0:8010->8010/tcp, :::8010->8010/tcp, 0.0.0.0:8080-8081->8080-8081/tcp, :::8080-8081->8080-8081/tcp, 0.0.0.0:8088->8088/tcp, :::8088->8088/tcp, 0.0.0.0:9864->9864/tcp, :::9864->9864/tcp, 0.0.0.0:9868->9868/tcp, :::9868->9868/tcp, 0.0.0.0:9870->9870/tcp, :::9870->9870/tcp, 0.0.0.0:10000->10000/tcp, :::10000->10000/tcp, 0.0.0.0:10002->10002/tcp, :::10002->10002/tcp, 0.0.0.0:50111->50111/tcp, :::50111->50111/tcp, 9083/tcp   edvai_hadoop
```


