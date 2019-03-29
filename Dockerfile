FROM debian

RUN sudo apt-get update -y
	
RUN sudo apt-get install apache2  -y

RUN sudo apt-get install apache2-utils  -y

RUN sudo apt-get install maven -y

RUN sudo apt-get install openjdk-8-jre  -y

RUN JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64

RUN PATH=$PATH:$JAVA_HOME/bin

RUN export JAVA_HOME

RUN mvn clean test 

RUN java -jar Aritmetica.jar



EXPOSE  80

CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
