resource "aws_acm_certificate" "cert" {
  domain_name       = "adrienguillement.fr"
  validation_method = "DNS"

  provider = aws.us_east_1

  lifecycle {
    create_before_destroy = true
  }
}