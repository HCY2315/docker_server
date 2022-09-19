#/bin/bash
# SERVER_NAME:为服务的名字
# ONLIVE：获取当前集群中当前所有的节点名字
# START：当前运行的节点名字

#注意：这个脚本只能在本地执行，需要解决远程管理的问题；

SERVER_NAME=`clustat  | grep 'started' | awk {'print$1'} | awk -F: {'print$2'} > ./server.txt`
ONLINE=`clustat  | grep 'Online' | awk {'print$1'} > ./online.txt`
START=`clustat  | grep 'started' | awk {'print$2'} > ./started.txt`

for online in `cat online.txt`
do
        for started in `cat started.txt`
        do
                for server_name in `cat server.txt`
                do
                        if [ $online != $started ];then
                                clusvcadm -m $online -r $server_name
                                echo "-----------------------------"
                        fi
                done
        done
done
