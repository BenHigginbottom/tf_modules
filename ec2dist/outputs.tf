output "ids" {
  value = ["${aws_instance.example.*.id}"]
}