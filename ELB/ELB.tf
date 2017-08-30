variable "NAME" {}
variable "SNET" {
  type = "list"
}
variable "PORT" {}
variable "DESTPORT" {}
variable "PROTOCOL" {}
variable "INSTANCES" {}


resource "aws_elb" "moduleelb" {
  name = "${var.NAME}"
  
  listener {
    instance_port     = "${var.DESTPORT}"
    instance_protocol = "${var.PROTOCOL}"
    lb_port           = "${var.PORT}"
    lb_protocol       = "${var.PROTOCOL}"
  }
  
  instances                   = ["${var.INSTANCES}"]
  cross_zone_load_balancing   = true
  idle_timeout                = 400
  connection_draining         = true
  connection_draining_timeout = 400

}