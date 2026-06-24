variable "instance_names" {
  description = "List of instance names"
  type        = list(string)
  default     = ["web-server", "app-server", "db-server"]
}

variable "enable_monitoring" {
  type    = bool
  default = true
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}
