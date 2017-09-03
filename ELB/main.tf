resource "aws_elb" "moduleelb" {
  name = "${var.NAME}"
  subnets = ["${var.SNET}"]
  lifecycle {
    ignore_changes = ["security_groups"]
  }
  
  listener {
    instance_port     = "${var.DESTPORT}"
    instance_protocol = "tcp"
    lb_port           = "${var.PORT}"
    lb_protocol       = "tcp"
  }
  
  instances                   = ["${var.INSTANCES}"]
  cross_zone_load_balancing   = true
  idle_timeout                = 400
  connection_draining         = true
  connection_draining_timeout = 400

}