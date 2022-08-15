# ***************************************
# ****** First VPC creation tasks *******
# ***************************************
resource "aws_vpc" "VPC-creation" {
    cidr_block = var.cidr-block[count.index]
    instance_tenancy = "default"
    count = 2

    tags = {
        Name = var.vpc-name[count.index]

    }  
}

/*
# ***************************************
# ***** Second VPC creation tasks *******
# ***************************************

resource "aws_vpc" "Secondary_vpc" {
    cidr_block = "10.10.0.0/16"
    instance_tenancy = "default"

    tags = {
        Name = "Secondary_VPC"
    }  
}*/
