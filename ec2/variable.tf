variable "ec2_name" {
    type = string
    default = "Mozilla"
  }
variable "ec2_security_group_ids" {
    default= ["sg-0dd7433128cea3c2d"]
      
}
variable "ec2_subnet_ids" {
    default = "subnet-0d4f2f3d49a134a28"
  
}
variable "ec2_instance_id" {
    default="ami-08c40ec9ead489470"
  
}
variable "ec2_instance_type" {
  default = "t2.micro"
}
variable "ec2_key_name" {
    default = "hello"
}
  
