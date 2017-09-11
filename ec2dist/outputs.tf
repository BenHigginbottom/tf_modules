output "ids" {
  value = ["${aws_instance.example.*.id}"]
}

output "AvZ" {
  value = ["${aws_instance.example.*.availability_zone}"]
}