provider "aws" {
  region                  = "${var.aws_region}"
  shared_credentials_file = "/home/ben/.aws/credentials"
}

/*
module "caller" {
	source = "./modules"
}
*/

module "caller" {
	source = "github.com/BenHigginbottom/tf_modules//modules"
}

output "account_id" {
  value = "${module.caller.account_id}"
}

output "caller_arn" {
  value = "${module.caller.caller_arn}"
}

output "caller_user" {
  value = "${module.caller.caller_user}"
}


