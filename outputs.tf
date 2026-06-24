output "security_group_id" {
  description = "Security group ID for lab instances"
  value       = aws_security_group.lab_sg.id
}

output "instance_ids" {
  description = "Created EC2 instance IDs"
  value       = aws_instance.student_vm[*].id
}

output "instance_public_ips" {
  description = "Public IPs of created EC2 instances"
  value       = aws_instance.student_vm[*].public_ip
}

output "instance_private_ips" {
  description = "Private IPs of created EC2 instances"
  value       = aws_instance.student_vm[*].private_ip
}
