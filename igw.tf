resource "aws_internet_gateway" "webgateway" {
  vpc_id = "${aws_vpc.webvpc.id}"
}
