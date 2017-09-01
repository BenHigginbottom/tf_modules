output "privips" {
  value = ["${aws_instance.example.*.private_ip}"]
}