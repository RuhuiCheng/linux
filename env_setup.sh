### java
export JAVA_HOME=/mnt/c/linux/opt/jdk1.8.0_201
export PATH=$JAVA_HOME/bin:$PATH
export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar

### maven
export PATH=/mnt/c/linux/opt/apache-maven-3.6.0/bin:$PATH

### spark
export SPARK_HOME=/mnt/c/linux/opt/spark-2.3.3-bin-hadoop2.7
export PYTHONPATH=$SPARK_HOME/python:$SPARK_HOME/python/lib/py4j-0.10.7-src.zip:$PYTHONPATH
export PYSPARK_PYTHON=/home/crh/miniconda3/envs/progress-report/bin/python
export PATH=$SPARK_HOME/bin:$SPARK_HOME/python:$PATH 
