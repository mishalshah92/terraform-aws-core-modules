resource "aws_acm_certificate" "acm_cert" {
  private_key       = var.private_key
  certificate_body  = var.certificate_body
  certificate_chain = var.certificate_chain

  tags = local.tags
}