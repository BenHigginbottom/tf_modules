variable "INSTANCES" {}
variable "AMI" {}
variable "VPCSG" {}
variable "INSTTYPE" {}
variable "AZ" {
  type = "list"
  default = [""]
}
variable "SUBNETS" {
  type = "list"
}
