resource "aws_s3_bucket" "test_bucket" {
  # bucket is public
  # bucket is not encrypted
  # bucket does not have access logs
  # bucket does not have versioning
  bucket        = "my-test-bucket"
  force_destroy = true
}

resource "aws_s3_bucket_public_access_block" "public_access" {
  bucket = aws_s3_bucket.test_bucket.id

  ignore_public_acls      = var.public_var
  block_public_acls       = var.public_var
  block_public_policy     = var.public_var
  restrict_public_buckets = var.public_var
}

resource "aws_s3_bucket_acl" "access_acl" {
  bucket = aws_s3_bucket.test_bucket.id

  acl = var.acl
}
