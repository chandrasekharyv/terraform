variable "ami_id" {
    default = "ami-03265a0778a880afb"
  
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
variable "sg_name" {
    default = "allow-all"
  
}
variable "sg_cidr" {
    default = ["0.0.0.0/0"]
  
}
variable "zone_id" {
    default = "Z01915026G869T7ONTDM"
  
}

variable "domain" {
    default = "awsdevopschandu.tk"
  
}

