resource "aws_instance" "ec2" {
    for_each = var.instance_type
    ami = var.ami_id
    instance_type = each.value
    tags = {
      Name = each.key
    }
  
}

#if web is public and remains all are private ips
resource "aws_route53_record" "route_record" {
    for_each = aws_instance.ec2
    zone_id = var.zone_id
    name = "${each.key}.${var.domain}"
    type = "A"
    ttl = 1
    records = [each.key == "web" ? each.value.public_ip : each.value.private_ip]
  
}
resource "aws_instance" "sample" {
    ami = var.ami_id
    instance_type = "t2.micro"
  
}


output "ec2_public_ip" {
    value = aws_instance.ec2
}
