data "aws_acm_certificate" "issued" {
  domain   = "shoorkathevarenik.com"
  statuses = ["ISSUED"]
}
