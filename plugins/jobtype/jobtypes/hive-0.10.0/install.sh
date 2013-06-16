
cd $(dirname $0)
HIVE_HOME=/usr/lib/hive

cp_lib() {
  cp $HIVE_HOME/lib/$1 lib/
}


mkdir lib

cp_lib "antlr-runtime*"
cp_lib "commons-dbcp*"
cp_lib "commons-pool*"
cp_lib "datanucleus-connectionpool*"
cp_lib "datanucleus-core-2.0.3-ZD5977*"
cp_lib "datanucleus-enhancer*"
cp_lib "datanucleus-rdbms*"
cp_lib "derby*"
cp_lib "hive-builtins-0.10.0*"
cp_lib "hive-cli-0.10.0*"
cp_lib "hive-common-0.10.0*"
cp_lib "hive-exec-0.10.0*"
cp_lib "hive-jdbc-0.10.0*"
cp_lib "hive-metastore-0.10.0*"
cp_lib "hive-service-0.10.0*"
cp_lib "hive-shims-0.10.0*"
cp_lib "jdo2-api*"
cp_lib "libfb303*"
cp_lib "mysql-*"
cp_lib "guava-*"
cp_lib "*hbase*"


cp /usr/lib/hadoop/client/hadoop-common-2.0.0* lib/
cp /usr/lib/hadoop/client/hadoop-auth-2.0.0* lib/
cp /usr/lib/hadoop-0.20-mapreduce/hadoop-core-2.0.0-mr1* lib/
cp /usr/lib/hadoop-hdfs/hadoop-hdfs-2.0.0* lib/

cd -
