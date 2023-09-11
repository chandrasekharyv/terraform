resource "aws_instance" "loops" {
    ami = var.ami_id
    #instance_type = var.aws_instance_names[count.index] == "mongodb" || var.aws_instance_names[count.index] == "mysql" ? "t3.micro" : "t2.micro"
    instance_type = var.aws_instance_type
    #instance_type = var.aws_instance_type
    count = 5

    tags = {
        Name = var.aws_instance_names[count.index]
        #name = var.aws_instance_names[count.index]
        
    }
    
  
}

resource "aws_route53_record" "record" {
    count = 5
    zone_id = var.hosted_zone_id
    name = "${var.aws_instance_names[count.index]}.${var.domain_name}"
    type = "A"
    ttl = 1
    records = [aws_instance.loops[count.index].private_ip]
  
}

resource "aws_key_pair" "public_key" {
    key_name = "devops-pub"
    public_key = file("${path.module}/devops.pub")
  
}

resource "aws_instance" "ec2" {
    ami = var.ami_id
    instance_type = var.aws_instance_type
    key_name = aws_key_pair.public_key.key_name
  
}


