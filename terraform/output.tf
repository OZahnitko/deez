output "bucket_name" {
  value = aws_s3_bucket.site.bucket
}

output "certificate" {
  value = data.aws_acm_certificate.issued
}

output "distribution" {
  value = aws_cloudfront_distribution.s3_distribution.id
}
