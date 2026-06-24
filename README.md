# terraform-aws-lab

Terraform project for provisioning a reusable EC2 lab in AWS.

## What This Project Creates
- One security group for SSH access
- Multiple EC2 instances based on the instance names list
- Standard project-level tags on all supported resources

## Architecture
```text
AWS Account
	|
	+-- Security Group (student-lab-sg)
	|     +-- Inbound: TCP 22 from 0.0.0.0/0
	|     +-- Outbound: All traffic
	|
	+-- EC2 Instances (count driven by instance_names)
				+-- web-server
				+-- app-server
				+-- db-server
```

## Project Structure
- providers.tf: Terraform and AWS provider configuration
- main.tf: Security group and EC2 resources
- vars.tf: Input variables
- outputs.tf: Useful output values
- terraform.tfvars.example: Sample local variable values
- .github/workflows/terraform.yml: CI checks for formatting and validation

## Prerequisites
- Terraform 1.5 or newer
- AWS CLI configured with valid credentials
- IAM permissions for EC2 and Security Group operations

## Quick Start
```bash
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
```

## Local Configuration
```bash
cp terraform.tfvars.example terraform.tfvars
```
Edit terraform.tfvars with your own values.

## Typical Workflow
```bash
git add .
git commit -m "Update Terraform infrastructure"
git push
```

## Destroy Resources
```bash
terraform destroy
```

## Security Notes
- Terraform state and local variable files are git-ignored.
- Keep secrets and account-specific values out of commits.
