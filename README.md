# MongoDB Docker Images

Docker + Alpine3.6 + MongoDB3.4.4

#### Run a default container
```
$ docker run --name mongo -v /Users/billgo/data/mongo:/var/lib/mongo -d -p 28017:27017 nethost/mongo
```

## 辅助命令
```
$ docker ps -l
$ docker stop $(docker ps -a -q)
$ docker rm $(docker ps -a -q)
$ docker rmi $(docker images -q)
$ docker rmi $(docker images -q -f dangling=true)
```