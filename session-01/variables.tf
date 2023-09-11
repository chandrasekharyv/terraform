variable "ami_id" {
    
    default = "ami-051f7e7f6c2f40dc1"
}

variable "instance_type" {
    default = "t2.micro"
  
}

variable "security_group_id" {
    default = "allow all"
   
}

variable "sg_cidr" {
    type = list 
    default = ["0.0.0.0/0"]
  
}

variable "tags" {
    default = {
        name = "mongodb"
        environment = "dev"
        terraform = true
        project = "roboshop"
        component = "mongodb"
    }
  
}