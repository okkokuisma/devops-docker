CHOCO-OCCO:~ okkokuisma$ docker container ls
CONTAINER ID   IMAGE                                      COMMAND                 CREATED          STATUS          PORTS     NAMES
ee1422bce049   devopsdockeruh/simple-web-service:ubuntu   "/usr/src/app/server"   55 seconds ago   Up 54 seconds             frosty_galileo
CHOCO-OCCO:~ okkokuisma$ docker exec -it ee bash
root@ee1422bce049:/usr/src/app# tail -f ./text.log
2021-08-30 14:58:13 +0000 UTC
2021-08-30 14:58:15 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
