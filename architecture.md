# Architecture

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
EC2 → CloudWatch Agent → CloudWatch Dashboard → Alarm → SNS
```
