# terraform-aws-lab

A reusable Terraform lab project that creates:
- One security group allowing SSH
- Multiple EC2 instances using `instance_names`

## Project Structure
- `providers.tf` provider and Terraform version constraints
- `main.tf` EC2 and security group resources
- `vars.tf` input variables
- `outputs.tf` useful output values
- `terraform.tfvars.example` sample local config

## Prerequisites
- Terraform >= 1.5
- AWS CLI configured (`aws configure`)
- Valid IAM permissions for EC2 and Security Groups

## Quick Start
```bash
terraform init
terraform plan
terraform apply
```

## Customize
Create local variables file:
```bash
cp terraform.tfvars.example terraform.tfvars
```
Then edit values in `terraform.tfvars`.

## Clean Up
```bash
terraform destroy
```

## Notes
- State files are intentionally git-ignored.
- Keep credentials and personal identifiers out of git history.
