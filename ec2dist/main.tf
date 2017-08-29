variable "INSTANCES" {}
variable "AMI" {}
variable "AZ" {}


resource "aws_instance" "example" {
  count = "${var.INSTANCES}"
  ami = "${var.AMI}"
  instance_type = "t2.micro"
  availability_zone = "${element(var.AZ, count.index)}"
  tags {
    Name = "example-${count.index}"
  }
}
