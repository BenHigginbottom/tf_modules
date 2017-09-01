data "aws_ami" "ec2-linux" {
  most_recent = true
  filter {
    name = "name"
    values = ["${var.AMIName}"]
  }
  filter {
    name = "virtualization-type"
    values = ["hvm"]
  }
  filter {
    name = "owner-alias"
    values = ["amazon"]
  }
}




