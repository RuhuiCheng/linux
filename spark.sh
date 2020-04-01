# 1.start hdfs and spark thriftserver
/opt/hadoop-2.7.7/sbin/start-dfs.sh
/opt/spark-2.3.3-bin-hadoop2.7/sbin/start-thriftserver.sh

# 2. stop spark thriftserver and hdfs
/opt/spark-2.3.3-bin-hadoop2.7/sbin/stop-thriftserver.sh
/opt/hadoop-2.7.7/sbin/stop-dfs.sh

# 3. UI for hdfs and spark
http://myspark.com:50070
http://myspark.com:4040
