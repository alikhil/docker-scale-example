# docker-compose scale example


```sh
docker-compose up -d
docker-compose scale app=5

# make somechanges
docker-compose build app
docker-compose scale app=10
docker stop $(ids of first 5 containers)
```