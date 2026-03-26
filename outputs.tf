# ------------------------------------------------------------------------------
# Output
# ------------------------------------------------------------------------------
output "arn" {
  description = "The ARN of the certificate that is being validated."
  value       = concat(aws_acm_certificate_validation.main[*].certificate_arn, [""])[0]
}

output "wildcard_arn" {
  description = "The ARN of the wildcard certificate that is being validated."
  value       = concat(aws_acm_certificate_validation.wildcard[*].certificate_arn, [""])[0]
}

output "validation_record_fqdns" {
  description = "The FQDNs of the DNS validation records created in Route 53."
  value       = [for record in aws_route53_record.cert_validation : record.fqdn]
}

