FROM docker.elastic.co/logstash/logstash:7.17.0

WORKDIR /usr/share/logstash/logstash-core/lib/jars/

USER root

RUN apt-get install wget -y

# MySQL 8
RUN wget -q http://search.maven.org/remotecontent?filepath=mysql/mysql-connector-java/8.0.19/mysql-connector-java-8.0.19.jar -O mysql-connector-java.jar

# Install github plugin 
WORKDIR /usr/share/logstash/
RUN rm -f /usr/share/logstash/pipeline/logstash.conf && \
  bin/logstash-plugin install logstash-input-github
# MySQL 5
#RUN wget -q https://repo1.maven.org/maven2/mysql/mysql-connector-java/5.1.4/mysql-connector-java-5.1.4.jar -O mysql-connector-java.jar

# PostgreSQL 8.2+
#RUN wget -q https://jdbc.postgresql.org/download/postgresql-42.2.14.jar -O postgresql-42.2.14.jar
