# Performance Benchmarking Tool for REST APIs
## Table of Contents
- Overview
- Features
- Architecture
- Tech Stack
- Setup
- Usage
- Screenshots
- Example Results
- Future Work
- License

---

## Overview

This tool automates API performance testing using Apache JMeter and/or Locust, collects results into InfluxDB, and visualizes key metrics in real time using Grafana. An optional Flask API allows you to submit test jobs and retrieve dashboard links for analysis. Ideal for benchmarking REST endpoints under load and identifying performance bottlenecks.

---

## Features

- Run load tests on any REST API
- Supports JMeter and Locust
- Real-time performance dashboards via Grafana
- Automatically stores test metrics in InfluxDB
- Optional Flask API for remote test submission and dashboard access
- Fully containerised using Docker and Docker Compose

---

## Architecture

User → Flask API (optional) → Run test (JMeter/Locust)
                                  ↓
                              Parse results
                                  ↓
                           Push to InfluxDB
                                  ↓
                             Grafana Dashboard

---

## Tech Stack

- Load Testing: Apache JMeter, Locust
- Backend Logic: Python
- Metrics Storage: InfluxDB
- Dashboard Visualisation: Grafana
- Containerisation: Docker, Docker Compose
- Optional API Interface: Flask + Celery

---

## Setup

### Prerequisites

- Docker and Docker Compose installed
- Python 3.8+ (if running outside of containers)

### Clone the Repository

