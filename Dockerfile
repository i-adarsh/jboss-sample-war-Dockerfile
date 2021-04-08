FROM jboss/base-jdk:11
ADD wildfly-23.0.0.Final.tar.gz /
ENV JBOSS_HOME /wildfly-23.0.0.Final
COPY jboss-as-helloworld.war /wildfly-23.0.0.Final/standalone/deployments
USER jboss
EXPOSE 8080
CMD ["/wildfly-23.0.0.Final/bin/standlone.sh", "-b", "0.0.0.0"]
