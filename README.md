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

aws-flask-app/
│
├── app/
│   ├── app.py
│   ├── Dockerfile
│   └── requirements.txt
│
├── terraform/
│   ├── main.tf
│   ├── provider.tf
│   ├── variables.tf
│   ├── outputs.tf
│   ├── userdata.sh
│   └── .terraform.lock.hcl
│
├── screenshots/
│   ├── architecture-diagram.png
│   ├── terraform-validate.png
│   ├── terraform-plan.png
│   ├── terraform-apply.png
│   ├── ec2-instance.png
│   ├── docker-container.png
│   ├── flask-output.png
│   └── github-repository.png
│
├── .gitignore
├── README.md
└── architecture-diagram.png




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

# Trade-offs Considered
Used a single EC2 instance instead of Auto Scaling to keep the project simple.
Used Docker containers instead of installing the Flask application directly on the EC2 instance for easier deployment and consistency.
Did not use a Load Balancer because this is a small demo project.
Chose Terraform to automate infrastructure provisioning instead of creating AWS resources manually.
# Cost Awareness
Selected the AWS Free Tier eligible t2.micro EC2 instance to minimize costs.
Used only the required AWS resources (EC2 and Security Group).
Avoided additional paid services such as RDS, Load Balancer, and NAT Gateway.
Resources can be removed using terraform destroy to prevent unnecessary AWS charges.

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

