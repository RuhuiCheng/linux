### java
export JAVA_HOME=/mnt/c/linux/opt/jdk1.8.0_201
export PATH=$JAVA_HOME/bin:$PATH
export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar

# Hadoop Environment Variables
export HADOOP_HOME=/opt/hadoop-2.7.7
export HADOOP_INSTALL=$HADOOP_HOME
export HADOOP_MAPRED_HOME=$HADOOP_HOME
export HADOOP_COMMON_HOME=$HADOOP_HOME
export HADOOP_HDFS_HOME=$HADOOP_HOME
export YARN_HOME=$HADOOP_HOME
export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native
export HADOOP_OPTS="-Djava.library.path=$HADOOP_HOME/lib"
export PATH=$PATH:$HADOOP_HOME/sbin:$HADOOP_HOME/bin

### maven
export PATH=/mnt/c/linux/opt/apache-maven-3.6.0/bin:$PATH

### spark
export SPARK_HOME=/mnt/c/linux/opt/spark-2.3.3-bin-hadoop2.7
export PYTHONPATH=$SPARK_HOME/python:$SPARK_HOME/python/lib/py4j-0.10.7-src.zip:$PYTHONPATH
export PYSPARK_PYTHON=/home/crh/miniconda3/envs/progress-report/bin/python
export PATH=$SPARK_HOME/bin:$SPARK_HOME/python:$PATH

### conda
export PATH="/home/crh/miniconda3/bin:$PATH"

###  SBT
export SBT_HOME="/home/crh/app/sbt-0.13.13"
export PATH="$SBT_HOME/bin:$PATH"

### scala
export SCALA_HOME="/home/crh/app/scala-2.11.12"
export PATH="$SCALA_HOME/bin:$PATH"
