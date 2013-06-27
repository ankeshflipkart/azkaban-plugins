
cd $(dirname $0)

HADOOP_CLIENT_LIB=/usr/lib/hadoop/client/
cp_lib() {
  for i in `ls  -F | grep "/$"`; do
    cp $HADOOP_CLIENT_LIB/$1 $i
  done
}



cp_lib "hadoop-common-*" 
cp_lib "hadoop-auth-*"

cd -
