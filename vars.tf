variable "aws_region" {
  description = "AWS region for deployment"
  type        = string
  default     = "us-east-1"
}

variable "ami_id" {
  description = "AMI ID used for EC2 instances"
  type        = string
  default     = "ami-0bb26f3c35206d22d"
}

variable "instance_names" {
  description = "Names for EC2 instances to create"
  type        = list(string)
  default     = ["web-server", "app-server", "db-server"]
}

variable "enable_monitoring" {
  description = "Enable detailed monitoring for EC2 instances"
  type        = bool
  default     = false
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "common_tags" {
  description = "Common tags applied to all supported resources"
  type        = map(string)
  default = {
    Project = "terraform-aws-lab"
  }
}
