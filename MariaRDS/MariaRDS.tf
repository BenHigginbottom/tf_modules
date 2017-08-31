variable "identifier" {}
variable "storageamount" {}
variable "instance_class" {}
variable "db_name" {}
variable "username" {}
variable "password" {}
variable "dbkms" {}
variable "dbsnetgroup" {}

resource "aws_db_instance" "mariadb" {
  identifier                 = "${var.identifier}"
  allocated_storage          = "${var.storageamount}"
  storage_type               = "gp2"
  engine                     = "mariadb"
  instance_class             = "${var.instance_class}"
  name                       = "${var.db_name}"
  username                   = "${var.username}"
  password                   = "${var.password}"
  storage_encrypted          = "true"
  maintenance_window         = "SUN:00:00-SUN:03:00"
  auto_minor_version_upgrade = "true"
  multi_az                   = "true"
  backup_window              = "03:30-04:00"
  backup_retention_period    = "30"
  kms_key_id                 = "${var.dbkms}"
  db_subnet_group_name       = "${var.dbsnetgroup}"
}
