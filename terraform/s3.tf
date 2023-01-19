resource "aws_s3_bucket" "bucket_s3" {
  bucket = var.bucket_name
}

resource "aws_s3_bucket_website_configuration" "example" {
  bucket = aws_s3_bucket.bucket_s3.bucket

  index_document {
    suffix = "index.html"
  }
}

resource "aws_s3_bucket_public_access_block" "example" {
  bucket = aws_s3_bucket.bucket_s3.id
}

data aws_iam_policy_document policy {
  statement {
    principals {
      type        = "*"
      identifiers = ["*"]
    }
    actions   = ["s3:GetObject"]
    resources = ["${aws_s3_bucket.bucket_s3.arn}/*"]
  }
}

resource aws_s3_bucket_policy bucket_policy {
  bucket = aws_s3_bucket.bucket_s3.id
  policy = data.aws_iam_policy_document.policy.json
}