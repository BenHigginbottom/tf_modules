variable "INSTANCES" {}
variable "AMI" {}
variable "VPCSG" {}
variable "INSTTYPE" {}
variable "AZ" {
  type = "list"
}

resource "aws_instance" "example" {
  count = "${var.INSTANCES}"
  ami = "${var.AMI}"
  vpc_security_group_ids = ["${var.VPCSG}"]
  instance_type = "${var.INSTTYPE}"
  availability_zone = "${element(var.AZ, count.index)}"
}


output "privips" {
  value = ["${aws_instance.example.*.private_ip}"]
}