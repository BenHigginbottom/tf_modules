data "aws_ami" "ec2linux" {
  most_recent = true
  filter {
    name = "name"
    values = ["amzn-ami-*-x86_64-gp2"]
  }
  filter {
    name = "virtualization_type"
    values = ["hvm"]
  }
  filter {
    name = "owner-alias"
    values = ["amazon"]
  }
}


output "latest_amazon_ami" {
  value = "${data.aws_ami.ec2linux.id}"
}