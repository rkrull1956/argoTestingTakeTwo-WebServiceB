FROM alpine
    
ENV JAVA_VERSION="21.0.1+12"
ENV JAVA_VERSION_TRUNC="21.0.1"

ENV JAVA_HOME /opt/jdk/jdk-${JAVA_VERSION_TRUNC}
ENV PATH $JAVA_HOME/bin:$PATH

RUN apk add --no-cache wget tar 
RUN wget -q https://download.bell-sw.com/java/${JAVA_VERSION}/bellsoft-jdk${JAVA_VERSION}-linux-x64-musl.tar.gz -O /tmp/jdk.tar.gz \
    && mkdir -p /opt/jdk \
    && tar -xzf /tmp/jdk.tar.gz -C /opt/jdk \
    && rm /tmp/jdk.tar.gz

RUN echo $PATH

RUN ls /opt/jdk/jdk-21.0.1/bin

ARG JAR_FILE=build/libs/WebServiceA-0.0.1-SNAPSHOT.jar
COPY build/libs/WebServiceA-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]