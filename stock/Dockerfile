FROM openjdk:8-jdk-alpine
#ARG STOCK_VER=0.0.1-SNAPSHOT
ARG ARG_EXEC_TARGET_JAR=/stock.jar 

ENV EXEC_TARGET_JAR ${ARG_EXEC_TARGET_JAR}
COPY ./jar/stock-0.0.1-SNAPSHOT.jar ${ARG_EXEC_TARGET_JAR}
COPY entry-point.sh /entry-point.sh
ENTRYPOINT ["./entry-point.sh"]