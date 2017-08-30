data "aws_ami" "ec2linux" {
  most_recent = true
  filter {
    name = "name"
    values = ["amzn-ami-hvm-*-x86_64-gp2"]
  }
  filter {
    name = "owner-alias"
    values = ["amazon"]
  }
}

output "amiidlatest" {
  value = "${data.aws_ami.ec2linux.image_id}"
}