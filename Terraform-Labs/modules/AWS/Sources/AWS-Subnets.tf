# ***************************************
# *** Subnets association to the VPC ****
# ***************************************
resource "aws_subnet" "MVPC-Public-Subnet" {
    vpc_id = aws_vpc.VPC-creation[0].id
    availability_zone = "us-west-1a"
    cidr_block = var.vpcA-subnets[0]
    map_public_ip_on_launch = true

    tags = {
        Name = "Subnet-${var.vpc-name[0]}"
    }
}

resource "aws_subnet" "MVPC-Private-Subnet" {
    vpc_id = aws_vpc.VPC-creation[0].id
    availability_zone = "us-west-1a"
    cidr_block = var.vpcA-subnets[1]
    map_public_ip_on_launch = false

    tags = {
        Name = "MVPC-Private-Subnet"
    }
}

# ***************************************
# *** Subnets association to the VPC ****
# ***************************************

resource "aws_subnet" "SVPC-Subnet_A" {
    vpc_id = aws_vpc.VPC-creation[1].id
    availability_zone = "us-west-1a"
    cidr_block = var.vpcB-subnets[0]
    map_public_ip_on_launch = false

    tags = {
        Name = "SVPC-Subnet_A-Private"
    }
}


           
 








