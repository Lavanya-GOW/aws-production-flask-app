# Deployment Notes

## Objective

Deploy a production-style Flask application on AWS EC2 using Nginx, Gunicorn and Systemd.

---

# Day 1

Completed:

- Created Flask Application
- Created Project Structure
- Created Virtual Environment
- Installed Flask and Gunicorn

Learnings:

- Flask Project Structure
- Python Virtual Environments
- Dependency Management

---

# Day 2

Completed:

- Initialized Git Repository
- Created GitHub Repository
- Pushed Project to GitHub

Learnings:

- Git Workflow
- Repository Management
- Documentation Practices

---

# Day 3

Completed:

- Launched EC2 Instance
- Connected through SSH
- Installed Python and Git
- Cloned Repository
- Deployed Flask Application

Learnings:

- EC2 Administration
- Security Groups
- Linux Package Management

---

# Day 4

Completed:

- Configured Gunicorn
- Tested Multiple Workers
- Verified Gunicorn Processes

Learnings:

- WSGI Servers
- Worker Processes
- Process Management

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

- Created Systemd Service
- Enabled Automatic Startup
- Tested Reboot Persistence

Learnings:

- Service Management
- Systemd Configuration
- Production Application Hosting

---

# Day 7

Completed:

- Service Monitoring
- Log Analysis
- Failure Testing

Learnings:

- journalctl
- Nginx Access Logs
- Nginx Error Logs
- Application Troubleshooting

---

# Final Architecture

```text
Internet
   │
   ▼
Nginx
   │
   ▼
Gunicorn
   │
   ▼
Flask
```

---

# Key Commands

## Service Status

```bash
systemctl status flaskapp
```

## View Logs

```bash
journalctl -u flaskapp
```

## Restart Service

```bash
systemctl restart flaskapp
```

## Nginx Logs

```bash
tail -f /var/log/nginx/access.log
```

---

# Lessons Learned

1. A deployment is more than just running code.
2. Production applications require process management.
3. Monitoring and logs are essential.
4. Reverse proxies improve security and scalability.
5. Automation is critical for reliability.
