
resource "aws_s3_bucket" "bucket_s3" {
  bucket = var.bucket_name
  acl    = "public-read"
}

resource "aws_s3_bucket_website_configuration" "s3_website_config" {
  bucket = var.bucket_name
  index_document = {
    suffix = "index.html"
  }
}

resource "aws_s3_bucket_policy" "example-policy" {
  bucket = var.bucket_name
  policy = templatefile("s3-policy.json", { bucket = var.bucket_name })
}