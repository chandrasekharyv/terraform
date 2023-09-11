resource "aws_security_group" "roboshop" {
  name = "roboshop"
  description = "allow all inbound rules"
  
  dynamic ingress {
    for_each = var.ingress
    content {
        description = ingress.value.description
      from_port = ingress.value.from_port
      to_port = ingress.value.to_port
      protocol = ingress.value.protocal
      cidr_blocks = ingress.value.cidr_blocks
      
    }    
  }
  egress {
    description = "allow all outbound rules"
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "roboshop"
  }
}