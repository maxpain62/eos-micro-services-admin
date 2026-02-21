FROM eclipse-temurin:11.0.30_7-jre-jammy:sha256:f759ce4ed131a0d13807c9cd7ab372acab6bf67e57f1987da9fd7beb462ce7b8
ADD target/ether-0.0.1-RELEASE.jar ether.jar
CMD ["java","-jar","ether.jar"]
