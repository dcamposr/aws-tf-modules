variable "vpc-name" {
    type = list
    default = ["Main_VPC","Remote_VPC"]  
    description = "Creación de VPCs"
}
variable "ec2-name" {
    type = list
    default = ["JumpHost","VPC-A_EC2","VPC-B_EC2"]
}

variable "cidr-block" {
    type = list
    default = ["10.0.0.0/16","10.10.0.0/16"]
  
}

variable "vpcA-subnets" {
    type = list
    default = ["10.0.0.0/24","10.0.1.0/24"]
  
}

variable "vpcB-subnets" {
    type = list
    default = ["10.10.0.0/24","10.10.1.0/24"]
  
}

