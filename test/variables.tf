variable "aws_instance_names" {
    type = list
    default = ["mongodb","web","mysql","cart","payment"]
  
}

variable "ami_id" {
    default = "ami-03265a0778a880afb"
  
}

variable "aws_instance_type" {
    default = "t2.micro"
  
}

variable "hosted_zone_id" {
    default = "Z0927921122BLDOJC9Z5D"
  
}

variable "domain_name" {
  default = "awsdevopschandu.tk"
}