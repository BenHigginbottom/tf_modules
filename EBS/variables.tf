variable "Count" {
  default = 1
}
variable "AvZ" {
  type = "list"
}
variable "EBSKey" {}
variable "Size" {}
variable "Type" {
  default = "gp2"
}
variable "IOPS" {
  default = "0"
}
variable "snapshotID" {
  default = ""
}