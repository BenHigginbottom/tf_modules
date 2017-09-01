resource "aws_instance" "example" {
  count = "${var.INSTANCES}"
  ami = "${var.AMI}"
  vpc_security_group_ids = ["${var.VPCSG}"]
  instance_type = "${var.INSTTYPE}"
  availability_zone = "${element(var.AZ, count.index)}"
}


