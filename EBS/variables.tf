variable "AvZ" {}
variable "EBSKey" {}
variable "Size" {}
variable "Type" {
  default = "gp2"
}
variable "IOPS" {
  default = ""
}
variable "snapshotID" {
  default = ""
}