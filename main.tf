resource "aws_security_group" "lab_sg" {
  name        = "student-lab-sg"
  description = "Allow SSH for lab instances"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(var.common_tags, {
    Name = "student-lab-sg"
  })
}

resource "aws_instance" "student_vm" {
  count = length(var.instance_names)

  ami                    = var.ami_id
  instance_type          = var.instance_type
  monitoring             = var.enable_monitoring
  vpc_security_group_ids = [aws_security_group.lab_sg.id]

  tags = merge(var.common_tags, {
    Name = var.instance_names[count.index]
  })
}
