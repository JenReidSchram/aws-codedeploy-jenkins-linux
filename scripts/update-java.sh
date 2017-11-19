#!/bin/bash
mkdir /opt/java && cd /opt/java
#TODO: Get proper download link (this doesn't work without the token from the accept license flow)
wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u151-b12/e758a0de34e24606bca991d704f6dcbf/jdk-8u151-linux-x64.tar.gz"

#Unpackage tarball
tar -zxvf jdk-8u151-linux-x64.tar.gz

#Update settings
update-alternatives --install /usr/bin/java java /opt/java/jdk1.8.0_151/bin/java 100  
update-alternatives --config java
update-alternatives --install /usr/bin/javac javac /opt/java/jdk1.8.0_151/bin/javac 100
update-alternatives --config javac
update-alternatives --install /usr/bin/jar jar /opt/java/jdk1.8.0_151/bin/jar 100
update-alternatives --config jar

# Set environment variables
export JAVA_HOME=/opt/java/jdk1.8.0_151/	
export JRE_HOME=/opt/java/jdk1.8.0.0_151/jre 	
export PATH=$PATH:/opt/java/jdk1.8.0_151/bin:/opt/java/jdk1.8.0_151/jre/bin

# Verify correct verion: 
java -version
