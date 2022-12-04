resource "aws_vpc" "webvpc" {
  cidr_block       = "${var.vpc_cidr}"
  instance_tenancy = "default"
tags = {
    Name = "Demo VPC"
  }
}
