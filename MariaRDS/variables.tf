variable "identifier" {}
variable "storageamount" {}
variable "instance_class" {}
variable "db_name" {}
variable "username" {}
variable "password" {}
variable "dbkms" {}
variable "dbsnetgroup" {}
variable "skipSnapshot" {
  default = "true"
}
variable "multiAZ" {
  default = "false"
}
variable "backupWindow" {
  default = "03:30-04:00"
}
variable "autoMinorUpgrade" {
  default = "false"
}
variable "maintenanceWindow" {
  default = "SUN:00:00-SUN:03:00"
}
variable "backupRetention" {
  default = "7"
}
variable "storageType" {
  default = "gp2"
}