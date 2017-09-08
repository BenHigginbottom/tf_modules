output "volid" {
  value = ["${aws_ebs_volume.*.id}"]
}