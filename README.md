# AWS Production Flask Application

A production-style Flask application deployed on AWS using modern cloud engineering practices.

This project demonstrates how to deploy, operate, monitor and extend a Python web application using AWS services and Linux administration skills.

---

## Project Overview

The application is hosted on an AWS EC2 instance and served through Nginx and Gunicorn.

It also integrates with Amazon S3 for file uploads and uses Amazon CloudWatch for monitoring, metrics collection and alerting.

The goal of this project was to learn real-world deployment workflows rather than simply run a Flask application.

---

## Architecture

```text
User
 ↓
Internet
 ↓
Nginx (Port 80)
 ↓
Gunicorn (WSGI Server)
 ↓
Flask Application
 ↓
Amazon S3

Monitoring:

EC2
 ↓
CloudWatch Agent
 ↓
CloudWatch Dashboard
 ↓
CloudWatch Alarm
 ↓
SNS Notification
```

---

## Features

### Application

- Flask Web Application
- Health Check Endpoint
- About Endpoint
- File Upload Endpoint

### Deployment

- AWS EC2 Hosting
- Nginx Reverse Proxy
- Gunicorn Application Server
- systemd Service Management
- Automatic Startup on Reboot

### Cloud Integration

- Amazon S3 File Uploads
- IAM Role Authentication
- No Hardcoded AWS Credentials

### Monitoring

- CloudWatch Agent
- CPU Monitoring
- Memory Monitoring
- Disk Monitoring
- Network Monitoring
- CloudWatch Dashboard
- CloudWatch Alarms

### Operations

- Linux Log Monitoring
- Nginx Access Logs
- Nginx Error Logs
- Service Monitoring with journalctl

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

### Upload

```http
GET /upload
POST /upload
```

Uploads files directly to Amazon S3.

---

## Technologies Used

### Cloud

- AWS EC2
- AWS S3
- AWS IAM
- AWS CloudWatch
- AWS SNS

### Backend

- Python
- Flask
- boto3

### Web Layer

- Nginx
- Gunicorn

### Operating System

- Ubuntu Linux

### Monitoring

- CloudWatch Agent
- CloudWatch Dashboard
- CloudWatch Alarms

### Version Control

- Git
- GitHub

---

## Monitoring Setup

The EC2 instance is monitored using Amazon CloudWatch Agent.

Metrics collected:

- CPU Utilization
- Memory Utilization
- Disk Usage
- Network Traffic

CloudWatch alarms notify administrators when predefined thresholds are exceeded.

---

## Security Practices

- Root Account Protected with MFA
- Daily Operations Performed Using IAM User
- EC2 Uses IAM Role Authentication
- No AWS Access Keys Stored on Server
- Security Groups Restrict Access
- Gunicorn Bound to Localhost
- Nginx Used as Reverse Proxy

---

## Deployment Workflow

1. Develop application locally
2. Push code to GitHub
3. Launch AWS EC2 Instance
4. Configure Security Groups
5. Clone Repository
6. Create Python Virtual Environment
7. Install Dependencies
8. Configure Gunicorn
9. Configure Nginx
10. Configure systemd Service
11. Configure Monitoring
12. Integrate Amazon S3
13. Validate Application Health

---

## Skills Demonstrated

- AWS EC2 Administration
- AWS IAM Roles
- AWS S3 Integration
- AWS CloudWatch Monitoring
- Linux Server Administration
- Nginx Configuration
- Gunicorn Deployment
- Python Application Hosting
- Service Management with systemd
- Monitoring and Troubleshooting
- Cloud Application Architecture

---

## Future Improvements

- Docker Containerization
- GitHub Actions CI/CD Pipeline
- Terraform Infrastructure as Code
- ECS Deployment
- Kubernetes Deployment
- HTTPS with SSL Certificates
- Application Load Balancer
- Auto Scaling Group

---

## Screenshots

Screenshots are available in the screenshots directory.

Examples include:

- EC2 Instance
- Flask Application
- CloudWatch Dashboard
- CloudWatch Alarms
- systemd Service Status
- S3 Upload Verification

---

## Author

Lavanya Sharma

Cloud Computing and DevOps Learning Journey