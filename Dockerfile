FROM debian

RUN chmod 644 /etc/resolv.conf
RUN JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
RUN PATH=$PATH:$JAVA_HOME/bin
RUN export JAVA_HOME
RUN sudo add-apt-repository ppa:openjdk-r/ppa
RUN sudo add-apt-repository ppa:ondrej/apache2

RUN apt-get update -y  
RUN apt install -y \
    apache2 \
    apache2-utils \
    default-jdk \
    maven 
RUN mvn clean test 

EXPOSE  80

CMD ["/usr/sbin/httpd","-D","FOREGROUND"]







