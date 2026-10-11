output "verifiedaccess_endpoints_id" {
  description = "Map of id values across all verifiedaccess_endpoints, keyed the same as var.verifiedaccess_endpoints"
  value       = { for k, v in aws_verifiedaccess_endpoint.verifiedaccess_endpoints : k => v.id if v.id != null && length(v.id) > 0 }
}
output "verifiedaccess_endpoints_application_domain" {
  description = "Map of application_domain values across all verifiedaccess_endpoints, keyed the same as var.verifiedaccess_endpoints"
  value       = { for k, v in aws_verifiedaccess_endpoint.verifiedaccess_endpoints : k => v.application_domain if v.application_domain != null && length(v.application_domain) > 0 }
}
output "verifiedaccess_endpoints_attachment_type" {
  description = "Map of attachment_type values across all verifiedaccess_endpoints, keyed the same as var.verifiedaccess_endpoints"
  value       = { for k, v in aws_verifiedaccess_endpoint.verifiedaccess_endpoints : k => v.attachment_type if v.attachment_type != null && length(v.attachment_type) > 0 }
}
output "verifiedaccess_endpoints_cidr_options" {
  description = "Map of cidr_options values across all verifiedaccess_endpoints, keyed the same as var.verifiedaccess_endpoints"
  value       = { for k, v in aws_verifiedaccess_endpoint.verifiedaccess_endpoints : k => one(v.cidr_options) if v.cidr_options != null && length(v.cidr_options) > 0 }
}
output "verifiedaccess_endpoints_description" {
  description = "Map of description values across all verifiedaccess_endpoints, keyed the same as var.verifiedaccess_endpoints"
  value       = { for k, v in aws_verifiedaccess_endpoint.verifiedaccess_endpoints : k => v.description if v.description != null && length(v.description) > 0 }
}
output "verifiedaccess_endpoints_device_validation_domain" {
  description = "Map of device_validation_domain values across all verifiedaccess_endpoints, keyed the same as var.verifiedaccess_endpoints"
  value       = { for k, v in aws_verifiedaccess_endpoint.verifiedaccess_endpoints : k => v.device_validation_domain if v.device_validation_domain != null && length(v.device_validation_domain) > 0 }
}
output "verifiedaccess_endpoints_domain_certificate_arn" {
  description = "Map of domain_certificate_arn values across all verifiedaccess_endpoints, keyed the same as var.verifiedaccess_endpoints"
  value       = { for k, v in aws_verifiedaccess_endpoint.verifiedaccess_endpoints : k => v.domain_certificate_arn if v.domain_certificate_arn != null && length(v.domain_certificate_arn) > 0 }
}
output "verifiedaccess_endpoints_endpoint_domain" {
  description = "Map of endpoint_domain values across all verifiedaccess_endpoints, keyed the same as var.verifiedaccess_endpoints"
  value       = { for k, v in aws_verifiedaccess_endpoint.verifiedaccess_endpoints : k => v.endpoint_domain if v.endpoint_domain != null && length(v.endpoint_domain) > 0 }
}
output "verifiedaccess_endpoints_endpoint_domain_prefix" {
  description = "Map of endpoint_domain_prefix values across all verifiedaccess_endpoints, keyed the same as var.verifiedaccess_endpoints"
  value       = { for k, v in aws_verifiedaccess_endpoint.verifiedaccess_endpoints : k => v.endpoint_domain_prefix if v.endpoint_domain_prefix != null && length(v.endpoint_domain_prefix) > 0 }
}
output "verifiedaccess_endpoints_endpoint_type" {
  description = "Map of endpoint_type values across all verifiedaccess_endpoints, keyed the same as var.verifiedaccess_endpoints"
  value       = { for k, v in aws_verifiedaccess_endpoint.verifiedaccess_endpoints : k => v.endpoint_type if v.endpoint_type != null && length(v.endpoint_type) > 0 }
}
output "verifiedaccess_endpoints_load_balancer_options" {
  description = "Map of load_balancer_options values across all verifiedaccess_endpoints, keyed the same as var.verifiedaccess_endpoints"
  value       = { for k, v in aws_verifiedaccess_endpoint.verifiedaccess_endpoints : k => one(v.load_balancer_options) if v.load_balancer_options != null && length(v.load_balancer_options) > 0 }
}
output "verifiedaccess_endpoints_network_interface_options" {
  description = "Map of network_interface_options values across all verifiedaccess_endpoints, keyed the same as var.verifiedaccess_endpoints"
  value       = { for k, v in aws_verifiedaccess_endpoint.verifiedaccess_endpoints : k => one(v.network_interface_options) if v.network_interface_options != null && length(v.network_interface_options) > 0 }
}
output "verifiedaccess_endpoints_policy_document" {
  description = "Map of policy_document values across all verifiedaccess_endpoints, keyed the same as var.verifiedaccess_endpoints"
  value       = { for k, v in aws_verifiedaccess_endpoint.verifiedaccess_endpoints : k => v.policy_document if v.policy_document != null && length(v.policy_document) > 0 }
}
output "verifiedaccess_endpoints_rds_options" {
  description = "Map of rds_options values across all verifiedaccess_endpoints, keyed the same as var.verifiedaccess_endpoints"
  value       = { for k, v in aws_verifiedaccess_endpoint.verifiedaccess_endpoints : k => one(v.rds_options) if v.rds_options != null && length(v.rds_options) > 0 }
}
output "verifiedaccess_endpoints_region" {
  description = "Map of region values across all verifiedaccess_endpoints, keyed the same as var.verifiedaccess_endpoints"
  value       = { for k, v in aws_verifiedaccess_endpoint.verifiedaccess_endpoints : k => v.region if v.region != null && length(v.region) > 0 }
}
output "verifiedaccess_endpoints_security_group_ids" {
  description = "Map of security_group_ids values across all verifiedaccess_endpoints, keyed the same as var.verifiedaccess_endpoints"
  value       = { for k, v in aws_verifiedaccess_endpoint.verifiedaccess_endpoints : k => v.security_group_ids if v.security_group_ids != null && length(v.security_group_ids) > 0 }
}
output "verifiedaccess_endpoints_sse_specification" {
  description = "Map of sse_specification values across all verifiedaccess_endpoints, keyed the same as var.verifiedaccess_endpoints"
  value       = { for k, v in aws_verifiedaccess_endpoint.verifiedaccess_endpoints : k => one(v.sse_specification) if v.sse_specification != null && length(v.sse_specification) > 0 }
}
output "verifiedaccess_endpoints_tags" {
  description = "Map of tags values across all verifiedaccess_endpoints, keyed the same as var.verifiedaccess_endpoints"
  value       = { for k, v in aws_verifiedaccess_endpoint.verifiedaccess_endpoints : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "verifiedaccess_endpoints_tags_all" {
  description = "Map of tags_all values across all verifiedaccess_endpoints, keyed the same as var.verifiedaccess_endpoints"
  value       = { for k, v in aws_verifiedaccess_endpoint.verifiedaccess_endpoints : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "verifiedaccess_endpoints_verified_access_group_id" {
  description = "Map of verified_access_group_id values across all verifiedaccess_endpoints, keyed the same as var.verifiedaccess_endpoints"
  value       = { for k, v in aws_verifiedaccess_endpoint.verifiedaccess_endpoints : k => v.verified_access_group_id if v.verified_access_group_id != null && length(v.verified_access_group_id) > 0 }
}
output "verifiedaccess_endpoints_verified_access_instance_id" {
  description = "Map of verified_access_instance_id values across all verifiedaccess_endpoints, keyed the same as var.verifiedaccess_endpoints"
  value       = { for k, v in aws_verifiedaccess_endpoint.verifiedaccess_endpoints : k => v.verified_access_instance_id if v.verified_access_instance_id != null && length(v.verified_access_instance_id) > 0 }
}

