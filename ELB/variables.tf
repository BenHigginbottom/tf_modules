variable "NAME" {}
variable "SNET" {
  type = "list"
}
variable "PORT" {}
variable "DESTPORT" {}
variable "INSTANCES" {
  type = "list"
	default = [""]
}
variable "Count" {
  default = "1"
}
