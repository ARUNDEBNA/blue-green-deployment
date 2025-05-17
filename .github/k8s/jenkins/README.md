# AWS Blue-Green Deployment with Terraform and GitHub Actions

This project demonstrates a complete CI/CD pipeline for blue-green deployments on AWS EKS using Terraform and GitHub Actions.

## Features
- Automated infrastructure provisioning
- Jenkins deployment on Kubernetes
- Blue-green deployment strategy
- GitHub Actions workflows

## Prerequisites
- AWS account with IAM permissions
- GitHub account
- Terraform installed locally (for development)

## Setup
1. Create AWS IAM user with programmatic access
2. Store AWS credentials in GitHub Secrets
3. Push code to main branch to trigger pipeline

## Workflows
- *Terraform CI/CD*: Provisions infrastructure on push to main
- *Blue-Green Deployment*: Manual workflow to switch versions

## Access
After deployment:
- Jenkins URL: http://<load-balancer-dns>
- Node.js App URL: http://<load-balancer-dns>