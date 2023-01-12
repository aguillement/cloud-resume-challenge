
resource "aws_s3_bucket" "bucket_s3" {
  bucket = var.bucket_name
}
resource "aws_s3_bucket_website_configuration" "example" {
  bucket = aws_s3_bucket.bucket_s3.bucket

  index_document {
    suffix = "index.html"
  }
}