FROM debian

RUN chmod 644 /etc/resolv.conf
RUN JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
RUN PATH=$PATH:$JAVA_HOME/bin
RUN export JAVA_HOME
RUN apt-get update -y && apt-get install -y \
    apache2 \
    apache2-utils \
    openjdk-8-jre \
    maven 
RUN mvn clean test 

EXPOSE  80

CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
