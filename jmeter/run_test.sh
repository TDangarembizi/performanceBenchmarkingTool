#!/bin/bash

echo "Starting JMeter load test..."

# Set default test plan file
TEST_PLAN=${TEST_PLAN:-/test-plans/basic_test.jmx}
RESULTS_FILE=${RESULTS_FILE:-/results/results.csv}

# Create results folder if not exists
mkdir -p /results

# Run JMeter
jmeter -n -t "$TEST_PLAN" -l "$RESULTS_FILE"

echo "Load test completed. Results saved to $RESULTS_FILE"
