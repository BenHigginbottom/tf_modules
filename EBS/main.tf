resource "aws_ebs_volume" "example" {
  count = "${var.Count}"
  availability_zone = "${element(var.AvZ, count.index)}"
  encrypted = "true"
  kms_key_id = "${var.EBSKey}"
  size = "${var.Size}"
  type = "${var.Type}"
  iops = "${var.IOPS}"
}