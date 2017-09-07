resource "aws_volume_attachment" "EBSAttach" {
  count = "${var.Count}"
  device_name = "/dev/sd${var.mountLetter}"
  volume_id = "${element(var.VolID, count.index)}"
  instance_id = "${element(var.InstID, count.index)}"
  skip_destroy = "${var.skipDestroy}"
}