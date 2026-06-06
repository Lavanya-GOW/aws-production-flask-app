# Deployment Notes

## Project Objective

Deploy and operate a production-style Flask application on AWS using industry-standard deployment and monitoring practices.

---

# Day 1

Completed:

- Created Flask Application
- Created Project Structure
- Created Virtual Environment
- Installed Flask and Gunicorn

Learnings:

- Python Virtual Environments
- Flask Application Structure
- Dependency Management

---

# Day 2

Completed:

- Initialized Git Repository
- Created GitHub Repository
- Pushed Code to GitHub

Learnings:

- Git Workflow
- Source Control Management
- Documentation Practices

---

# Day 3

Completed:

- Launched AWS EC2 Instance
- Configured Security Groups
- Connected Through SSH
- Installed Required Packages
- Cloned Repository

Learnings:

- EC2 Administration
- SSH Access
- Linux Package Management

---

# Day 4

Completed:

- Configured Gunicorn
- Tested Worker Processes
- Verified Application Hosting

Learnings:

- WSGI Servers
- Process Management
- Production Application Hosting

---

# Day 5

Completed:

- Installed Nginx
- Configured Reverse Proxy
- Connected Nginx to Gunicorn

Learnings:

- Reverse Proxy Architecture
- Nginx Configuration
- Request Routing

---

# Day 6

Completed:

- Created systemd Service
- Enabled Automatic Startup
- Tested Reboot Persistence

Learnings:

- Service Management
- systemd Configuration
- Linux Service Operations

---

# Day 7

Completed:

- Monitored Services
- Inspected Logs
- Tested Failure Recovery

Learnings:

- journalctl
- Access Logs
- Error Logs
- Troubleshooting Workflow

---

# Day 8

Completed:

- Created CloudWatch Alarm
- Configured SNS Notification
- Installed CloudWatch Agent
- Configured Metrics Collection

Learnings:

- Infrastructure Monitoring
- Alerting
- Operational Visibility

---

# Day 9

Completed:

- Created CloudWatch Dashboard
- Added CPU Monitoring
- Added Memory Monitoring
- Added Disk Monitoring
- Added Network Monitoring

Learnings:

- Dashboard Design
- Metrics Visualization
- Monitoring Best Practices

---

# Day 10

Completed:

- Created Amazon S3 Bucket
- Configured IAM Role Permissions
- Integrated boto3
- Implemented File Upload Endpoint
- Verified File Uploads

Learnings:

- S3 Integration
- IAM Role Authentication
- Cloud-Native Application Design

---

# Final Architecture

```text
User
 ↓
Internet
 ↓
Nginx
 ↓
Gunicorn
 ↓
Flask
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

# Key Commands

## Service Status

```bash
sudo systemctl status flaskapp
```

## Restart Service

```bash
sudo systemctl restart flaskapp
```

## Service Logs

```bash
sudo journalctl -u flaskapp
```

## Follow Logs

```bash
sudo journalctl -u flaskapp -f
```

## Nginx Access Logs

```bash
sudo tail -f /var/log/nginx/access.log
```

## Nginx Error Logs

```bash
sudo tail -f /var/log/nginx/error.log
```

---

# Major Lessons Learned

1. Production deployments require more than application code.
2. Reverse proxies improve security and flexibility.
3. Service management is essential for reliability.
4. Monitoring and alerting are critical for operations.
5. IAM Roles are safer than storing credentials.
6. Cloud services can be integrated directly into applications.
7. Observability is a core cloud engineering skill.

---

# Project Outcome

Successfully designed, deployed, monitored and extended a production-style Flask application on AWS using cloud-native services and Linux operational practices.