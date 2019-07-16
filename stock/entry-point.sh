#!/bin/sh
java -Djava.security.egd=file:/dev/./urandom $JVM_OPTS -jar /config-server.jar --spring.config.location=${CONFIG_LOCATION} ${APP_OPTS}