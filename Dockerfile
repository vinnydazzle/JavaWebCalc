#maven to build the project
FROM maven:3-openjdk-8 as dev
WORKDIR /home/centos/JavaWebCalc
COPY . .
RUN mvn clean
RUN mvn package

#tomcat to deploy the war file
FROM tomcat
COPY --from=dev home/centos/JavaWebCalc/target/*.war home/centos/apache-tomcat-7.0.94/webapps/

EXPOSE 9090


