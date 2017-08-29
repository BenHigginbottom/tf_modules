variable "INSTANCES" {}
variable "AMI" {}
variable "AZ" {
  type = "list"
}


resource "aws_instance" "example" {
  count = "${var.INSTANCES}"
  ami = "${var.AMI}"
  instance_type = "t2.micro"
  availability_zone = "${element(var.AZ, count.index)}"
}


output "privips" {
  value = ["${aws_instance.example.*.private_ip}"]
}