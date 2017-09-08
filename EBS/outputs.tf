output "volid" {
  value = ["${aws_ebs_volume.example.*.id}"]
}