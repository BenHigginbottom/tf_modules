data "aws_availability_zones" "available" { 
  state = "available"
}

data "aws_vpc" "default" { 
  filter {
    name = "tag:Name"
    values = ["Testing"]
  }
}

data "aws_subnet_ids" "Testing" {
  vpc_id = "${data.aws_vpc.default.id}"
}

data "aws_security_group" "Testing" {
  vpc_id = "${data.aws_vpc.default.id}"
  filter{
    name = "group-name"
    values = ["default"]
  }
}

data "aws_subnet" "databasesnet" {
	filter {
	name = "tag:Usage"
	values = ["Data"]
	}
}

data "aws_kms_alias" "rds" {
  name = "alias/dbencryptkey"
}

output "names" {
  value = "${data.aws_availability_zones.available.names}"
}

output "vpcstuff" {
  value = "${data.aws_vpc.default.id}"
}

output "subnets" {
  value = "${data.aws_subnet_ids.Testing.ids}"
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