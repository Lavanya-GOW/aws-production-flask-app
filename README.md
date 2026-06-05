# AWS Production Flask App

A production-style Flask application deployed on AWS using industry-standard deployment practices.

## Project Overview

This project demonstrates how to deploy and operate a Python Flask application on AWS EC2 using:

- Nginx as Reverse Proxy
- Gunicorn as WSGI Application Server
- Systemd for Service Management
- Ubuntu EC2 Instance
- Git and GitHub for Version Control

The application is designed to simulate a real-world deployment workflow rather than a simple development environment.

---

## Architecture

```text
Internet
   │
   ▼
Nginx (Port 80)
   │
   ▼
Gunicorn (127.0.0.1:8000)
   │
   ▼
Flask Application
```

---

## Features

- Flask Web Application
- Health Check Endpoint
- About Endpoint
- Nginx Reverse Proxy
- Gunicorn Multi-Worker Deployment
- Systemd Service Management
- Automatic Startup on Reboot
- Linux Log Monitoring
- AWS Cloud Deployment

---

## Endpoints

### Home

```http
GET /
```

Returns application status.

### Health Check

```http
GET /health
```

Returns application health.

### About

```http
GET /about
```

Returns project information.

---

## Technologies Used

### Cloud

- AWS EC2

### Operating System

- Ubuntu Server

### Web Server

- Nginx

### Application Server

- Gunicorn

### Backend

- Python
- Flask

### Version Control

- Git
- GitHub

---

## Deployment Workflow

1. Develop application locally
2. Push code to GitHub
3. Clone repository on EC2
4. Create Python Virtual Environment
5. Install Dependencies
6. Configure Gunicorn
7. Configure Nginx Reverse Proxy
8. Create Systemd Service
9. Verify Application Availability
10. Monitor Logs and Services

---

## Linux Commands Used

### Service Management

```bash
systemctl status flaskapp
systemctl start flaskapp
systemctl stop flaskapp
systemctl restart flaskapp
```

### Monitoring

```bash
journalctl -u flaskapp
tail -f /var/log/nginx/access.log
tail -f /var/log/nginx/error.log
```

---

## Skills Demonstrated

- AWS EC2 Administration
- Linux Server Management
- Nginx Configuration
- Gunicorn Deployment
- Python Application Hosting
- Systemd Service Creation
- Troubleshooting and Monitoring
- Production Deployment Workflow

---

## Future Improvements

- Docker Containerization
- CI/CD Pipeline
- Terraform Infrastructure as Code
- Load Balancer Integration
- Auto Scaling Group
- CloudWatch Monitoring
- HTTPS using SSL Certificates

---

## Author

Lavanya Sharma

Cloud Computing and DevOps Learning Journey
