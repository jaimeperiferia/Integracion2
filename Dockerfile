FROM debian



RUN apt-get update && apt-get install -y \
    apache2 \
    apache2-utils \
    maven \
    openjdk-8-jre

RUN apt-get update -y
	
RUN JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64

RUN PATH=$PATH:$JAVA_HOME/bin

RUN export JAVA_HOME

RUN mvn clean test 



EXPOSE  80

CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
