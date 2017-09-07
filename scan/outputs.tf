output "names" {
  value = "${data.aws_availability_zones.available.names}"
}

output "vpcstuff" {
  value = "${data.aws_vpc.default.id}"
}

output "subnets" {
  value = "${data.aws_subnet_ids.Testing.ids}"
}

output "computesubnet" {
  value = "${data.aws_subnet_ids.TestingCompute.ids}"
}

output "security_group" {
  value = "${data.aws_security_group.Testing.id}"
}

output "dbsnet" {
  value = "${data.aws_subnet.databasesnet.id}"
}


output "rdsenckey" {
  value = "${data.aws_kms_alias.rds.arn}"
}

output "ebsenckey" {
  value = "${data.aws_kms_alias.ebs.arn}"
}

output "wildcardtest" {
  value = "${data.aws_iam_role.lambda.arn}"
}