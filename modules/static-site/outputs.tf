output "name_servers" {
  description = "the Route 53 Zone for configuring your domain name provider"
  value       = aws_route53_zone.zone.name_servers
}

output "s3_url" {
  value = aws_s3_bucket.www.bucket_domain_name
}