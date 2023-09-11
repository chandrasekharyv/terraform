variable "ami_id" {
    default = "ami-051f7e7f6c2f40dc1"
  
}

variable "instance_type" {
   type = map
   default={
    mongodb = "t2.micro" 
    web = "t2.micro"
    cart = "t2.micro"
    catalogue = "t2.micro"
    mysql = "t2.micro"
   }
  
}

variable "zone_id" {
    default = "Z01799112WGUX2F86Z6H7"
  
}

variable "domain" {
    default = "awsdevopschandu.tk"
  
}

variable "ingress" {
    type = list 
    default = [
    {
        from_port = 80
        to_port = 80
        description = "allow PORT 80 "
        protocal = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    },
    {
        from_port = 22
        to_port = 22
        description = "allow PORT 22"
        protocal = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    },
    {
        from_port = 443
        to_port = 443
        description = "allow PORT 443"
        protocal = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    },
    {
        from_port = 0
        to_port = 0
        description = "allow all PORT"
        protocal = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ]
  
}