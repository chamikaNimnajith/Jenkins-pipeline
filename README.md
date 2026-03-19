# Jenkins CI/CD Pipeline Project

This project demonstrates a Jenkins pipeline that automates the deployment of a web application (2048 game) on an AWS EC2 instance using Docker.

## Features

- Automates infrastructure provisioning and application deployment
- Uses Jenkins for CI/CD
- Provisions EC2 instance with Terraform
- Installs Docker and runs the 2048 game container
- Outputs EC2 public IP for easy access

## Project Structure

## Prerequisites

- Jenkins installed
- Terraform installed
- AWS account with access key & secret key
- SSH key for EC2 access

## How It Works

1. Jenkins pulls the repository from GitHub.  
2. Terraform provisions an AWS EC2 instance.  
3. Jenkins retrieves the EC2 public IP.  
4. Docker is installed on the instance.  
5. 2048 game is deployed inside a Docker container.  
6. Access the game via the EC2 public IP.

## Learning Outcomes

- Understanding CI/CD pipelines  
- Automating deployment and server setup  
- Hands-on experience with Jenkins, Terraform, AWS, and Docker  

## Tech Stack

- Jenkins  
- Terraform  
- AWS EC2  
- Docker  
- Ubuntu  
