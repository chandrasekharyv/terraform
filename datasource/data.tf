data "aws_ami" "ami_id" {
  most_recent = true 
  owners = [ "amazon" ]

  filter {
    name = "name"
    values = ["al2023-ami-2023.1.20230825.0-kernel-6.1-x86_64"]
  }
}

output "ami_id" {
    value = data.aws_ami.ami_id.id
  
}

data "aws_vpc" "default" {
  default = true
} 

output "name" {
  value = data.aws_vpc.default
}
resource "aws_security_group" "sg_group" {
  name = "allow all"
  vpc_id = data.aws_vpc.default.id
  description = "allow all ports"

  ingress{
    description = "inbound rules"
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress{
    description = "allow outbound rules"
    from_port = 80
    to_port = 80
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}

