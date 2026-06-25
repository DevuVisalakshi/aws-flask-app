# AWS Flask Application Deployment using Terraform & Docker

## Project Overview

This project demonstrates the deployment of a Python Flask web application on an AWS EC2 instance using Terraform for Infrastructure as Code (IaC) and Docker for containerization.

The infrastructure is provisioned using Terraform, and the Flask application is deployed inside a Docker container running on AWS EC2.

---

# Architecture

```
                  User
                    |
             Web Browser
                    |
      http://13.127.96.130:5000
                    |
             AWS EC2 Instance
                    |
          Docker Container
                    |
         Python Flask Application
                    |
      Infrastructure via Terraform
```

---

# Technologies Used

- AWS EC2
- Terraform
- Docker
- Python
- Flask
- Git
- GitHub
- AWS CLI

---

# Project Structure

```
aws-flask-app/
│
├── app/
│   ├── app.py
│   ├── Dockerfile
│   └── requirements.txt
│
├── terraform/
│   ├── provider.tf
│   ├── main.tf
│   ├── variables.tf
│   ├── output.tf
│   └── userdata.sh
│
├── README.md
└── .gitignore
```

---

# Prerequisites

- AWS Account
- AWS CLI
- Terraform
- Docker
- Git
- Python 3

---

# Deployment Steps

## Clone Repository

```bash
git clone https://github.com/DevuVisalakshi/aws-flask-app.git
cd aws-flask-app
```

## Terraform

```bash
cd terraform
terraform init
terraform validate
terraform plan
terraform apply
```

## Connect to EC2

```bash
ssh -i aws-flask-key.pem ec2-user@13.127.96.130
```

## Docker

Build Image

```bash
docker build -t flask-app .
```

Run Container

```bash
docker run -d -p 5000:5000 --name flask-container flask-app
```

Verify

```bash
docker ps
```

---

# Terraform Commands

```bash
terraform init
terraform validate
terraform plan
terraform apply
terraform destroy
```

---

# Docker Commands

```bash
docker build -t flask-app .
docker run -d -p 5000:5000 --name flask-container flask-app
docker ps
docker ps -a
docker stop flask-container
docker rm flask-container
```

---

# Flask Application URL

```
http://13.127.96.130:5000
```

---

# Output

```
Hello from AWS Flask App!
```

---

# Screenshots Included

- Terraform Validate
- Terraform Plan
- Terraform Apply
- EC2 Instance Running
- Docker Container Running
- Flask Application Output
- GitHub Repository

---

# GitHub Repository

https://github.com/DevuVisalakshi/aws-flask-app

---

# Author

**Devu Visalakshi**

