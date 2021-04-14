FROM openjdk

COPY target/*.jar . 

#CMD ["java","-jar","catalogue-1.0.0.jar","--spring.cloud.consul.host=consul"]
CMD ["java","-jar","catalogue-1.0.0.jar", "--spring.datasource.url=jdbc:postgresql://172.17.0.4:5432/catalogue"]