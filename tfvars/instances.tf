resource "aws_instance" "ec2" {
    for_each = var.instance_type
    ami = var.ami_id
    instance_type = each.value
    tags = {
      Name = each.key
    }
  
}

resource "aws_route53_record" "aws-record" {
    for_each = aws_instance.ec2
    zone_id = var.zone_id
    name = "${each.key}.${var.domain}"
    type = "A"
    ttl = 1
    records = [each.key == "web" ? each.value.public_ip : each.value.private_ip]
  
}