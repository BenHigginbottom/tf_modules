variable "NAME" {}
variable "SNET" {
  type = "list"
  default = ["subnet-d18f60b5","subnet-c82a0691"]
}
variable "PORT" {}
variable "DESTPORT" {}
variable "INSTANCES" {
  type = "list"
	default = [""]
}
