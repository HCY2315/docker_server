# mysql
172.20.10.1-10/16

# redis
172.20.10.11-20/16

# tomcat
172.20.10.21-30/16

# rabbitmq
172.20.10.31-40/16

# nginx
172.20.10.41-50/16

# prometheus
172.20.10.51-60/16

# jenkins
172.20.10.61-70/16

# grafana
172.20.10.71-80/16

# openresty
172.20.10.81-90/16

# ansibler
172.20.10.91-100/16

# ansible-api、mission-worker
172.20.10.101-110/16

# influxdb
172.20.10.111-120/16

# host
172.20.0.1-253/16

# network
## create  docker network for subnet

```docker
docker network create -d bridge --gateway 172.20.0.254 --subnet 172.20.0.0/16 pub
```

## example yaml
```docker
version: '2'
networks:
  pub:
    external: true
services:
   c1:
      restart: always
      networks:
         pub:
            ipv4_address: 172.20.0.1
      image:
```
