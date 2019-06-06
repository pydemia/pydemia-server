# EMR-spark


```sh
aws emr create-cluster \
  --termination-protected \
  --applications Name=Hadoop Name=Hive Name=Pig Name=Hue Name=JupyterHub Name=Ganglia Name=Spark Name=Zeppelin Name=Livy Name=Flink Name=ZooKeeper Name=TensorFlow \
  --tags 'tfname=ai_bd_architect' 'username=youngju_kim' \
  --ec2-attributes '{"KeyName":"yjkim-aws-default-key","AdditionalSlaveSecurityGroups":["sg-0c7997b108e8d2128"],"InstanceProfile":"EMR_EC2_DefaultRole","SubnetId":"subnet-326d1848","EmrManagedSlaveSecurityGroup":"sg-089be85251da9f2b8","EmrManagedMasterSecurityGroup":"sg-0825c23de97f66d3a","AdditionalMasterSecurityGroups":["sg-0c7997b108e8d2128"]}' \
  --release-label emr-5.23.0 \
  --log-uri 's3n://aws-logs-946648250772-us-east-2/elasticmapreduce/' \
  --steps '[
    {
      "Type":"CUSTOM_JAR",
      "ActionOnFailure":"CONTINUE",
      "Jar":"s3://yjkim-repository/spark/xgboost4j-0.82.jar",
      "Properties":"",
      "Name":"xgboost4j-0.82"
    },
    {
      "Type":"CUSTOM_JAR",
      "ActionOnFailure":"CONTINUE",
      "Jar":"s3://yjkim-repository/spark/xgboost4j-spark-0.82.jar",
      "Properties":"",
      "Name":"xgboost4j-spark-0.82"
    },
    {
      "Type":"CUSTOM_JAR",
      "ActionOnFailure":"CONTINUE",
      "Jar":"s3://yjkim-repository/spark/xgboost4j-flink-0.82.jar",
      "Properties":"",
      "Name":"xgboost4j-flink-0.82"
    }
  ]' \
  --instance-groups '[{"InstanceCount":1,"EbsConfiguration":{"EbsBlockDeviceConfigs":[{"VolumeSpecification":{"SizeInGB":32,"VolumeType":"gp2"},"VolumesPerInstance":1}]},"InstanceGroupType":"MASTER","InstanceType":"m4.large","Name":"Master - 1"},{"InstanceCount":8,"EbsConfiguration":{"EbsBlockDeviceConfigs":[{"VolumeSpecification":{"SizeInGB":32,"VolumeType":"gp2"},"VolumesPerInstance":1}]},"InstanceGroupType":"CORE","InstanceType":"m4.large","Name":"Core - 2"}]' \
  --configurations '[{"Classification":"spark-hive-site","Properties":{"hive.metastore.client.factory.class":"com.amazonaws.glue.catalog.metastore.AWSGlueDataCatalogHiveClientFactory"}}]' \
  --auto-scaling-role EMR_AutoScaling_DefaultRole \
  --ebs-root-volume-size 10 \
  --service-role EMR_DefaultRole \
  --enable-debugging \
  --name 'yjkim-xgboost-spark' \
  --scale-down-behavior TERMINATE_AT_TASK_COMPLETION \
  --region us-east-2 \
  --libjars s3://yjkim-repository/spark/xgboost4j-spark-0.82.jar
```

```sh
aws emr create-cluster \
  --termination-protected \
  --applications \
    Name=Hadoop \
    Name=Hive \
    Name=Pig \
    Name=Hue \
    Name=JupyterHub \
    Name=Ganglia \
    Name=Spark \
    Name=Zeppelin \
    Name=Livy \
    Name=Flink \
    Name=ZooKeeper \
    Name=TensorFlow \
  --tags \
    'tfname=ai_bd_architect' \
    'username=youngju_kim' \
  --ec2-attributes '
    {
      "KeyName":"yjkim-aws-default-key",
      "AdditionalSlaveSecurityGroups":["sg-0c7997b108e8d2128"],
      "InstanceProfile":"EMR_EC2_DefaultRole",
      "SubnetId":"subnet-326d1848",
      "EmrManagedSlaveSecurityGroup":"sg-089be85251da9f2b8",
      "EmrManagedMasterSecurityGroup":"sg-0825c23de97f66d3a",
      "AdditionalMasterSecurityGroups":["sg-0c7997b108e8d2128"]
    }' \
  --release-label emr-5.23.0 \
  --log-uri 's3n://aws-logs-946648250772-us-east-2/elasticmapreduce/' \
  --steps '[
    {
      "Type":"CUSTOM_JAR",
      "ActionOnFailure":"CONTINUE",
      "Jar":"s3://yjkim-repository/spark/xgboost4j-0.82.jar",
      "Properties":"",
      "Name":"xgboost4j-0.82"
    }
    {
      "Type":"CUSTOM_JAR",
      "ActionOnFailure":"CONTINUE",
      "Jar":"s3://yjkim-repository/spark/xgboost4j-spark-0.82.jar",
      "Properties":"",
      "Name":"xgboost4j-spark-0.82"
    },
    {
      "Type":"CUSTOM_JAR",
      "ActionOnFailure":"CONTINUE",
      "Jar":"s3://yjkim-repository/spark/xgboost4j-flink-0.82.jar",
      "Properties":"",
      "Name":"xgboost4j-flink-0.82"
    }
  ]' \
  --instance-groups '[
    {
      "InstanceCount":1,
      "EbsConfiguration":{
        "EbsBlockDeviceConfigs":[
          {
            "VolumeSpecification":{"SizeInGB":32,"VolumeType":"gp2"},
            "VolumesPerInstance":1
          }
        ]
      },
      "InstanceGroupType":"MASTER",
      "InstanceType":"m4.large",
      "Name":"Master - 1"
    },
    {
      "InstanceCount":8,
      "EbsConfiguration":{
        "EbsBlockDeviceConfigs":[
          {
            "VolumeSpecification":{"SizeInGB":32,"VolumeType":"gp2"},
            "VolumesPerInstance":1
          }
        ]
      },
      "InstanceGroupType":"CORE",
      "InstanceType":"m4.large",
      "Name":"Core - 2"
    }
  ]' \
  --configurations '[
    {
      "Classification":"spark-hive-site",
      "Properties":{
        "hive.metastore.client.factory.class":"com.amazonaws.glue.catalog.metastore.AWSGlueDataCatalogHiveClientFactory"
      }
    }
  ]' \
  --auto-scaling-role EMR_AutoScaling_DefaultRole \
  --ebs-root-volume-size 10 \
  --service-role EMR_DefaultRole \
  --enable-debugging \
  --name 'yjkim-xgboost-spark' \
  --scale-down-behavior TERMINATE_AT_TASK_COMPLETION \
  --region us-east-2 \
  --libjars s3://yjkim-repository/spark/xgboost4j-spark-0.82.jar \
  --jars s3://yjkim-repository/spark/xgboost4j-spark-0.82.jar \
  --driver-class-path s3://yjkim-repository/spark/xgboost4j-spark-0.82.jar \

  --class org.springframework.boot.loader.JarLauncher


```


```sh
aws emr create-cluster \
 --termination-protected \
 --applications Name=Hadoop Name=Hive Name=Pig Name=Hue Name=JupyterHub Name=Ganglia Name=Spark Name=Zeppelin Name=Livy Name=Flink Name=ZooKeeper Name=TensorFlow \
 --tags 'tfname=ai_bd_architect' 'username=youngju_kim' \
 --ec2-attributes '{"KeyName":"yjkim-aws-default-key","AdditionalSlaveSecurityGroups":["sg-0c7997b108e8d2128"],"InstanceProfile":"EMR_EC2_DefaultRole","SubnetId":"subnet-326d1848","EmrManagedSlaveSecurityGroup":"sg-089be85251da9f2b8","EmrManagedMasterSecurityGroup":"sg-0825c23de97f66d3a","AdditionalMasterSecurityGroups":["sg-0c7997b108e8d2128"]}' \
 --release-label emr-5.23.0 \
 --log-uri 's3n://aws-logs-946648250772-us-east-2/elasticmapreduce/' \
 --steps '[{"Type":"CUSTOM_JAR","ActionOnFailure":"CONTINUE","Jar":"s3://yjkim-repository/spark/xgboost4j-0.82.jar","Properties":"","Name":"xgboost4j-0.82"},{"Type":"CUSTOM_JAR","ActionOnFailure":"CONTINUE","Jar":"s3://yjkim-repository/spark/xgboost4j-spark-0.82.jar","Properties":"","Name":"xgboost4j-spark-0.82"},{"Type":"CUSTOM_JAR","ActionOnFailure":"CONTINUE","Jar":"s3://yjkim-repository/spark/xgboost4j-flink-0.82.jar","Properties":"","Name":"xgboost4j-flink-0.82"}]' \
 --instance-groups '[{"InstanceCount":1,"EbsConfiguration":{"EbsBlockDeviceConfigs":[{"VolumeSpecification":{"SizeInGB":32,"VolumeType":"gp2"},"VolumesPerInstance":1}]},"InstanceGroupType":"MASTER","InstanceType":"m4.large","Name":"Master - 1"},{"InstanceCount":8,"EbsConfiguration":{"EbsBlockDeviceConfigs":[{"VolumeSpecification":{"SizeInGB":32,"VolumeType":"gp2"},"VolumesPerInstance":1}]},"InstanceGroupType":"CORE","InstanceType":"m4.large","Name":"Core - 2"}]' \
  --configurations '[{"Classification":"spark-hive-site","Properties":{"hive.metastore.client.factory.class":"com.amazonaws.glue.catalog.metastore.AWSGlueDataCatalogHiveClientFactory"}}]' \
  --auto-scaling-role EMR_AutoScaling_DefaultRole \
  --ebs-root-volume-size 10 \
  --service-role EMR_DefaultRole \
  --enable-debugging \
  --name 'yjkim-xgboost-spark' \
  --scale-down-behavior TERMINATE_AT_TASK_COMPLETION \
  --region us-east-2
  --libjars s3://yjkim-repository/spark/xgboost4j-spark-0.82.jar \
  --jars s3://yjkim-repository/spark/xgboost4j-0.82.jar,s3://yjkim-repository/spark/xgboost4j-spark-0.82.jar \
  --driver-class-path s3://emrb/hadoop_jars/emrfs-hadoop-assembly-2.32.0.jar,s3://emrb/gson-2.8.4.jar \
  --class org.springframework.boot.loader.JarLauncher


```
