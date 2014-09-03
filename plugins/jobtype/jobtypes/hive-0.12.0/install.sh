cd $(dirname $0)
HIVE_HOME=/usr/lib/hive

cp_lib() {
	  cp $HIVE_HOME/lib/$1 lib/
  }


  mkdir lib

  cp_lib "antlr-runtime*"
  cp_lib "bonecp-*"
  #cp_lib "commons-dbcp*"
  #cp_lib "commons-pool*"
  #cp_lib "datanucleus-connectionpool*"
  cp_lib "datanucleus-core-*"
  #Below 2 Not needed for new b1 cluster 
  #cp_lib "datanucleus-core-2.0.3-ZD5977*"
  #cp_lib "datanucleus-enhancer*"
  cp_lib "datanucleus-rdbms*"
  cp_lib "datanucleus-api-jdo-*"
  cp_lib "derby*"
  #Need to find a replacement jar
  #cp_lib "hive-builtins-0.10.0*"
  cp_lib "hive-cli-0.12.0*"
  cp_lib "hive-common-0.12.0*"
  cp_lib "hive-exec-0.12.0*"
  cp_lib "hive-jdbc-0.12.0*"
  cp_lib "hive-metastore-0.12.0*"
  cp_lib "hive-service-0.12.0*"
  cp_lib "hive-shims-0.12.0*"
  #cp_lib "jdo2-api*"
  cp_lib "libfb303*"
  cp_lib "mysql-*"
  cp_lib "guava-*"
  cp_lib "*hbase*"
  cp_lib "*avro*"


  cp /usr/lib/hadoop/client/hadoop-common-2.3.0* lib/
  cp /usr/lib/hadoop/lib/hadoop-lzo-cdh4* lib/
  cp /usr/lib/hadoop/lib/protobuf-* lib/
  cp /usr/lib/hadoop/client/hadoop-auth-2.3.0* lib/
  #Check the one for YARN
  #cp /usr/lib/hadoop-0.20-mapreduce/hadoop-core-2.3.0-mr1* lib/
  cp /usr/lib/hadoop-hdfs/hadoop-hdfs-2.3.0* lib/

  cd -
