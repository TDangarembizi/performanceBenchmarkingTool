FROM justb4/jmeter:5.5

# Copy test plans and scripts into container
COPY jmeter/test-plans /test-plans
COPY jmeter/run_test.sh /run_test.sh

# Make the script executable
RUN chmod +x /run_test.sh

WORKDIR /

ENTRYPOINT ["/run_test.sh"]
