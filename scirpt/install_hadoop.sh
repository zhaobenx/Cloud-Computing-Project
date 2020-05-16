#!/bin/bash

wget http://mirror.cc.columbia.edu/pub/software/apache/hadoop/common/hadoop-3.2.1/hadoop-3.2.1.tar.gz
tar -xzf hadoop-3.2.1.tar.gz
sudo mv hadoop-3.2.1 /usr/local/hadoop
export PATH=$PATH:/usr/local/hadoop/bin:/usr/local/hadoop/sbin
###
sudo yum install java-8-openjdk-devel
echo 'export JAVA_HOME=$(readlink -f /usr/bin/java | sed "s:bin/java::")'>>/usr/local/hadoop/etc/hadoop/hadoop-env.sh

###
sudo useradd -m hadoop -s /bin/bash   # 增加 hadoop用户
sudo passwd hadoop  			        # 设置密码，需要输入两次
sudo usermod -aG wheel hadoop
