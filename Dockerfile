FROM maxpain62/maven-3.9:jre11
ADD target/ether-0.0.1-RELEASE.jar ether.jar
CMD ["java","-jar","ether.jar"]
