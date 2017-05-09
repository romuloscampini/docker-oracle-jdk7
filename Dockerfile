FROM centos:7

LABEL MAINTAINER Romulo Scampini <contato@romuloscampini.com.br>

# Instalação do Java 7
RUN curl -SLo /tmp/jdk-7u79-linux-x64.rpm -b oraclelicense=accept-securebackup-cookie \
                http://download.oracle.com/otn-pub/java/jdk/7u79-b15/jdk-7u79-linux-x64.rpm \
 && yum install -y /tmp/jdk-7u79-linux-x64.rpm \
 && rm /tmp/jdk-7u79-linux-x64.rpm

#Configuração da variável de ambiente
ENV JAVA_HOME /usr/java/default