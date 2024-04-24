resource "aws_route53_record" "pass" {
  zone_id = data.aws_route53_zone.primary.zone_id
  name    = "dns.freebeer.site"
  type    = "A"
  ttl     = "300"
  records = [aws_eip.fixed.public_ip]
}
