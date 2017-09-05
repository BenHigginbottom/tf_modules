provider "aws" {
  region                  = "${var.aws_region}"
  shared_credentials_file = "/home/ben/.aws/credentials"
}


module "scan" {
	source = "github.com/BenHigginbottom/tf_modules//scan"
}


module "caller" {
	source = "github.com/BenHigginbottom/tf_modules//modules"
}


module "latestAMI" {
  source = "github.com/BenHigginbottom/tf_modules/latestAMI"
}

/*
module "ec2dist" {
  source = "github.com/BenHigginbottom/tf_modules//ec2dist"
  INSTANCES = 3
  AZ = "${module.scan.names}"
  AMI = "${module.latestAMI.ec2linuxd}"
  INSTTYPE = "t2.micro"
  VPCSG = "${module.scan.security_group}"
}


module "ELB" {
  source = "github.com/BenHigginbottom/tf_modules//ELB"
  NAME = "Bens-Test-ELB"
  SNET = "${module.scan.subnets}"
  PORT = "80"
  DESTPORT = "443"
  INSTANCES = "${module.ec2dist.privips}"
}

module "MariaRDS" {
  source = "github.com/BenHigginbottom/tf_modules//MariaRDS"
  identifier = "developmentdb"
  storageamount = "10"
  instance_class = "t2.micro"
  db_name = "IAMDATABASE"
  username = "IAMUSER"
  password = "IAMPASSWORD"
  dbkms = "${module.scan.rdsenckey}"
  dbsnetgroup = "{module.scan.dbsnet}"
}
*/
