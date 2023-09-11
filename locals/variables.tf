variable "ifProd" {
    default = false
  
}


variable "aws_instance_names" {
    type = list
    default = ["mongodb","web","mysql","cart","payment"]
  
}


