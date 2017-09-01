output "BucketName" {
  value = "${aws_s3_bucket.mybucket.id}"
}