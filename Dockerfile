FROM openjdk

COPY target/*.jar . 

#CMD ["java","-jar","catalogue-1.0.0.jar","--spring.cloud.consul.host=consul"]
CMD ["java","-jar","catalogue-1.0.0.jar", "--spring.datasource.url=jdbc:postgresql://postgres:5432/catalogue"]