resource "aws_instance" "ec2" {
    ami = var.ami_id
    instance_type = var.instance_type
    security_groups = [ aws_security_group.allow_all_sg.name ]
    tags = var.tags
}

