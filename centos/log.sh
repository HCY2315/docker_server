#!/bin/bash

#find：linux的查找命令，用户查找指定条件的文件；
#/opt/soft/log/：想要进行清理的任意目录；
#-mtime：标准语句写法；
#+3：查找3天前的文件，这里用数字代表天数；
#"*.log"：希望查找的数据类型，"*.jpg"表示查找扩展名为jpg的所有文件，"*"表示查找所有文件，这个可以灵活运用，举一反三；
#-exec：固定写法；
#rm -rf：强制删除文件，包括目录；
# {} \; ：固定写法，一对大括号+空格+\+; 

#注意：
#1、rm -rf 会删除所有的匹配的文件和目录

DATE=`date +'%Y-%m-%d-%H:%M:%S'`
echo "del file start....."

#find /var/log  -mtime +30 |  xargs tar czvf ./${DATE}.tar

find /var/log -mtime +30 -name "*.log"  -exec rm -rf {} \;
# find /usr/local/tomcat/tomcat7-8034-TaskOutside/logs -mtime +0 -name "*.out.*"  -exec rm -rf {} \;
# find /usr/local/tomcat/springboot-MIA-exchange/logs/islife -mtime +1 -name "*.log"  -exec rm -rf {} \;
# find /root/logs/islife -mtime +0 -name "*.log"  -exec rm -rf {} \;
# find /home/yw/logs  -mtime +1 -name "*.log*"  -exec rm -rf {} \;

echo "del file end"