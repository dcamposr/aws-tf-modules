# ***************************************
# *** Subnets association to the VPC ****
# ***************************************

resource "aws_subnet" "Private-Subnet" {
    vpc_id = aws_vpc.VPC-creation[0].id
    availability_zone = var.az[3]
    cidr_block = var.vpcB-subnets[0]
    map_public_ip_on_launch = false

    tags = {
        Name = "PrivateSubnet ${var.vpc-name[0]}"
    }
}



           
 








