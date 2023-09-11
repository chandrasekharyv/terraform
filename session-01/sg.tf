resource "aws_security_group" "allow_all_sg" {
    name = var.security_group_id
    description = "allow all ports"
    ingress {
        description = "allo all inbound rules"
        from_port = 0
        to_port = 0
        protocol = "tcp"
        cidr_blocks = var.sg_cidr
    }

    egress {
        description = "allow all outbound"
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = var.sg_cidr
    }
}