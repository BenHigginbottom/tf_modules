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

/*
module "ec2dist" {
  source = "./ec2dist"
  INSTANCES = 3
  AZ = "${module.scan.names}"
  AMI = "${module.latestAMI.amiid}"
}
*/
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

output "INFO" {
  value = "${module.latestAMI.amiidlatest}"
}