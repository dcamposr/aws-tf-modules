# ***************************************************
# ***** IGW creatioion & attachment to the VPC ******
# ***************************************************
resource "aws_internet_gateway" "main_vpc_IGW" {
   vpc_id = aws_vpc.VPC-creation.id

   tags = {
    Name = "Main VPC IGW"
   }
}

