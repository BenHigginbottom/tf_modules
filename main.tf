provider "aws" {
  region                  = "${var.aws_region}"
  shared_credentials_file = "/home/ben/.aws/credentials"
}


module "caller" {
	source = "./modules"
}

module "scan" {
	source = "./scan"
}

/*
module "caller" {
	source = "github.com/BenHigginbottom/tf_modules//modules"
}
*/

module "latestAMI" {
  source = "./latestAMI"
}

module "ec2dist" {
  source = "./ec2dist"
  INSTANCES = 3
  AZ = "${module.scan.names}"
  AMI = "${module.latestAMI.ec2linuxd}"
  INSTTYPE = "t2.micro"
  VPCSG = "${module.scan.security_group}"
}


module "ELB" {
  source = "./ELB"
  NAME = "Bens-Test-ELB"
  SNET = "${module.scan.subnets}"
  PORT = "80"
  DESTPORT = "443"
  INSTANCES = "${module.ec2dist.privips}"
}

module "MariaRDS" {
  source = "./MariaRDS"
  identifier = "developmentdb"
  storageamount = "10"
  instance_class = "t2.micro"
  db_name = "IAMDATABASE"
  username = "IAMUSER"
  password = "IAMPASSWORD"
  dbkms = "${module.scan.rdsenckey}"
  dbsnetgroup = "{module.scan.dbsnet}"
}

/*Debug Outputs*/

output "account_id" {
  value = "${module.caller.account_id}"
}

output "caller_arn" {
  value = "${module.caller.caller_arn}"
}

output "caller_user" {
  value = "${module.caller.caller_user}"
}

output "AZ" {
  value = "${module.scan.names}"
}

output "VPCID" {
  value = "${module.scan.vpcstuff}"
}

output "SnetIDS" {
  value = "${module.scan.subnets}"
}

output "SG" {
  value = "${module.scan.security_group}"
}

output "info" {
  value = "${module.latestAMI.ec2linuxd}"
}

output "DataSnet" {
  value = "${module.scan.dbsnet}"
}

output "rds_kms_arn" {
  value = "${module.scan.rdsenckey}"
}