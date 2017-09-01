output "ec2linuxd" {
  value = "${data.aws_ami.ec2-linux.image_id}"
}
