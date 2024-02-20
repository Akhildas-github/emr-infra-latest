# apt-get -y install openjdk-11-jdk
sudo mkdir /opt
sudo apt -y update
sudo apt -y install openjdk-11-jdk-headless
cd /opt
#installing Zookeeper
sudo wget https://archive.apache.org/dist/zookeeper/zookeeper-3.7.1/apache-zookeeper-3.7.1-bin.tar.gz
sudo tar -xvf apache-zookeeper-3.7.1-bin.tar.gz
cd apache-zookeeper-3.7.1-bin
sudo cp conf/zoo_sample.cfg conf/zoo.cfg
sudo bin/zkServer.sh start
cd ..
sudo rm -rf apache-zookeeper-3.7.1-bin.tar.gz
 
#installing kafka
sudo wget https://archive.apache.org/dist/kafka/3.0.2/kafka_2.13-3.0.2.tgz
sudo tar -xvf kafka_2.13-3.0.2.tgz
cd kafka_2.13-3.0.2
sudo bin/kafka-server-start.sh -daemon config/server.properties
cd ..
sudo rm -rf kafka_2.13-3.0.2.tgz