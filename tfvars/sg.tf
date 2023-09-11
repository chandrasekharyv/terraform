resource "aws_security_group" "devops_sg" {
  name = var.sg_name
  description = "allow all ports"
  
   ingress {
    description = "allow all inbound rules"
    from_port = 0
    to_port = 0
    protocol = "tcp"
    cidr_blocks = var.sg_cidr
  }
  egress {
    description = "allow all outbound rules"
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = var.sg_cidr
  }

  tags = {
    Name = "allow-all"
  }
}