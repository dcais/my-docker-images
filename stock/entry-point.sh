#!/bin/sh
java -Djava.security.egd=file:/dev/./urandom $JVM_OPTS -jar /${EXEC_TARGET_JAR} --spring.config.location=${CONFIG_LOCATION} ${APP_OPTS}