resource "aws_s3_bucket" "site" {
  bucket = "shoorkathevarenik.com"
  acl    = "public-read"

  website {
    index_document = "index.html"
    error_document = "error.html"
  }
}

resource "aws_s3_bucket_policy" "site" {
  bucket = aws_s3_bucket.site.id
  policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Sid" : "",
        "Action" : ["s3:GetObject"],
        "Effect" : "Allow",
        "Resource" : "${aws_s3_bucket.site.arn}/*",
        "Principal" : "*"
      }
    ]
  })
}
