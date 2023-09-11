resource "aws_instance" "ec2" {
    ami = local.ami_id
    instance_type = local.instance_type
    key_name = local.public_key
  
}

# resource "aws_route53_record" "record" {
#     count = 5
#     zone_id = var.hosted_zone_id
#     name = "${var.aws_instance_names[count.index]}.${var.domain_name}"
#     type = "A"
#     ttl = 1
#     records = [aws_instance.loops[count.index].private_ip]
  
# }



