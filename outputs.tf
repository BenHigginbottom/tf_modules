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