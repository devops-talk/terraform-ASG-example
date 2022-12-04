resource "aws_launch_configuration" "web" {
  name_prefix = "web-"
image_id = "ami-087c17d1fe0178315" 
  instance_type = "t2.micro"
  key_name = "webapp"
security_groups = [ "${aws_security_group.websg.id}" ]
  associate_public_ip_address = true
  user_data = "${file("data.sh")}"
lifecycle {
    create_before_destroy = true
  }
}
resource "aws_key_pair" "ec2key" {
  key_name = "publicKey"
  public_key = "${file(var.public_key)}"
}