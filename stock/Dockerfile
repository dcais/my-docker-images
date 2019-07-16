FROM openjdk:8-jdk-alpine
#ARG STOCK_VER=0.0.1-SNAPSHOT
COPY entry-point.sh /entry-point.sh
COPY ./jar/stock-0.0.1-SNAPSHOT.jar /stock.jar
ENTRYPOINT ["./entry-point.sh"]