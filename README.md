# 一、public server
## 1、mysql
172.20.10.1-10/16

## 2、redis、phpredisadmin
172.20.10.11-20/16

## 3、tomcat
172.20.10.21-30/16

## 4、rabbitmq
172.20.10.31-40/16

## 5、nginx
172.20.10.41-50/16

## 6、prometheus
172.20.10.51-60/16

## 7、jenkins
172.20.10.61-70/16

## 8、grafana
172.20.10.71-80/16

## 9、openresty
172.20.10.81-90/16

## 10、ansibler
172.20.10.91-100/16

## 11、ansible-api、mission-worker
172.20.10.101-110/16

## 12、influxdb
172.20.10.111-120/16

## 13、etcd
172.20.10.121-130/16

## 13、hostByTesting
172.20.0.1-253/16


# 二、other server
```text
1、ip range：172.20.100.1 开始
2、IP地址维护的力度比公共服务小
```

# 三、network
## 1、create  docker network for subnet

```docker
docker network create -d bridge --gateway 172.20.0.254 --subnet 172.20.0.0/16 pub
```

## 2、example yaml
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
