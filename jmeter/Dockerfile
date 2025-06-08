FROM openjdk:17-slim

ENV JMETER_HOME=/opt/jmeter \
    PATH=$PATH:/opt/jmeter/bin

# Copy your local unzipped JMeter 5.6.3 directory into the container
COPY apache-jmeter-5.6.3 $JMETER_HOME
COPY test-plans /test-plans
COPY run_test.sh /run_test.sh

RUN chmod +x /run_test.sh

WORKDIR /
ENTRYPOINT ["/run_test.sh"]
