# DevOps Practice Project

This repository contains my DevOps practice work including Terraform, Shell scripting, and automation scripts.

## Technologies Used
- Terraform
- AWS
- Linux
- Shell Scripting
- GitHub

## Terraform Project
Using Terraform I practiced Infrastructure as Code concepts and created AWS infrastructure components.

## AWS Architecture
![AWS Architecture] (aws-terraform-architecture.png)

## Files in this Repository
terraform/ - Terraform configuration files  
install.sh - installation automation script  
script.sh - shell scripting practice  
docker.txt - docker notes  
ansible.txt - ansible notes  


## 🏗️ Project Architecture

This project provisions a complete AWS environment using Terraform, following best practices for cloud networking and scalability.

### 🔧 Resources Created:
- 1 VPC
- 2 Public Subnets
- 1 Private Subnet
- Internet Gateway
- Route Tables & Associations
- Security Groups
- EC2 Instances (Public & Private)
- Application Load Balancer (Internet-facing)
- Target Groups & Listener

---

## ⚙️ How to Deploy

```bash
terraform init
terraform plan
terraform apply

## Author
Nisha Jidla
