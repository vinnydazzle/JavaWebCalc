#maven to build the project
FROM maven:3-openjdk-8 as dev
WORKDIR /JavaWebCalc
COPY . .
RUN mvn clean package

#tomcat to deploy the war file
FROM tomcat
COPY --from=dev /JavaWebCalc/target/*.war /usr/local/tomcat/webapps
EXPOSE 9090



