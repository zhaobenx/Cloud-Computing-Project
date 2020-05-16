#!/bin/bash
set -e
wget -nc http://apache.spinellicreations.com/spark/spark-2.4.5/spark-2.4.5-bin-without-hadoop.tgz
sudo tar -zxf spark-2.4.5-bin-without-hadoop.tgz -C /usr/local
sudo mv /usr/local/spark-2.4.5-bin-without-hadoop/ /usr/local/spark
sudo chown -R hadoop /usr/local/spark

echo 'export SPARK_HOME=/usr/local/spark
export PATH=$PATH:$SPARK_HOME/bin:$SPARK_HOME/sbin' >> ~/.bashrc
source ~/.bashrc
####
cd /usr/local/spark/conf
# mv /usr/local/spark/conf/slaves.template /usr/local/spark/conf/slaves
echo 'Slave1
Slave2' > slaves
mv spark-env.sh.template spark-env.sh
echo "
export SPARK_DIST_CLASSPATH=\$(/usr/local/hadoop/bin/hadoop classpath)
export HADOOP_CONF_DIR=/usr/local/hadoop/etc/hadoop
export SPARK_MASTER_IP=Master   # 注意这里填的是Master节点的私有IP 
export JAVA_HOME=$(readlink -f /usr/bin/java | sed \"s:bin/java::\")" >> spark-env.sh
