# Creating 1st subnet 
resource "aws_subnet" "websubnet" {
  vpc_id                  = "${aws_vpc.webvpc.id}"
  cidr_block             = "${var.subnet_cidr}"
  map_public_ip_on_launch = true
  availability_zone = "us-east-1a"
tags = {
    Name = "Demo subnet"
  }
}
# Creating 2nd subnet 
resource "aws_subnet" "websubnet1" {
  vpc_id                  = "${aws_vpc.webvpc.id}"
  cidr_block             = "${var.subnet1_cidr}"
  map_public_ip_on_launch = true
  availability_zone = "us-east-1b"
tags = {
    Name = "Demo subnet 1"
  }
}
