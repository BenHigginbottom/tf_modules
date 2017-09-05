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

data "aws_subnet_ids" "TestingCompute" {
  vpc_id = "${data.aws_vpc.default.id}"
  filter {
    name = "tag:Usage"
    values = ["Compute"]
  }
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

