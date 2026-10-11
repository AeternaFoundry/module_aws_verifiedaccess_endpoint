variable "verifiedaccess_endpoints" {
  description = <<EOT
Map of verifiedaccess_endpoints, attributes below
Required:
    - attachment_type
    - endpoint_type
    - verified_access_group_id
Optional:
    - application_domain
    - description
    - domain_certificate_arn
    - endpoint_domain_prefix
    - policy_document
    - region
    - security_group_ids
    - tags
    - tags_all
    - cidr_options (block):
        - cidr (required)
        - port_range (required, block):
            - from_port (required)
            - to_port (required)
        - protocol (optional)
        - subnet_ids (optional)
    - load_balancer_options (block):
        - load_balancer_arn (optional)
        - port (optional)
        - port_range (optional, block):
            - from_port (required)
            - to_port (required)
        - protocol (optional)
        - subnet_ids (optional)
    - network_interface_options (block):
        - network_interface_id (optional)
        - port (optional)
        - port_range (optional, block):
            - from_port (required)
            - to_port (required)
        - protocol (optional)
    - rds_options (block):
        - port (optional)
        - protocol (optional)
        - rds_db_cluster_arn (optional)
        - rds_db_instance_arn (optional)
        - rds_db_proxy_arn (optional)
        - rds_endpoint (optional)
        - subnet_ids (optional)
    - sse_specification (block):
        - customer_managed_key_enabled (optional)
        - kms_key_arn (optional)
EOT

  type = map(object({
    attachment_type          = string
    endpoint_type            = string
    verified_access_group_id = string
    application_domain       = optional(string)
    description              = optional(string)
    domain_certificate_arn   = optional(string)
    endpoint_domain_prefix   = optional(string)
    policy_document          = optional(string)
    region                   = optional(string)
    security_group_ids       = optional(set(string))
    tags                     = optional(map(string))
    tags_all                 = optional(map(string))
    cidr_options = optional(object({
      cidr = string
      port_range = list(object({
        from_port = number
        to_port   = number
      }))
      protocol   = optional(string)
      subnet_ids = optional(set(string))
    }))
    load_balancer_options = optional(object({
      load_balancer_arn = optional(string)
      port              = optional(number)
      port_range = optional(list(object({
        from_port = number
        to_port   = number
      })))
      protocol   = optional(string)
      subnet_ids = optional(set(string))
    }))
    network_interface_options = optional(object({
      network_interface_id = optional(string)
      port                 = optional(number)
      port_range = optional(list(object({
        from_port = number
        to_port   = number
      })))
      protocol = optional(string)
    }))
    rds_options = optional(object({
      port                = optional(number)
      protocol            = optional(string)
      rds_db_cluster_arn  = optional(string)
      rds_db_instance_arn = optional(string)
      rds_db_proxy_arn    = optional(string)
      rds_endpoint        = optional(string)
      subnet_ids          = optional(set(string))
    }))
    sse_specification = optional(object({
      customer_managed_key_enabled = optional(bool)
      kms_key_arn                  = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.verifiedaccess_endpoints : (
        v.cidr_options == null || (length(v.cidr_options.port_range) >= 1)
      )
    ])
    error_message = "Each port_range list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.verifiedaccess_endpoints : (
        v.cidr_options == null || (alltrue([for item in v.cidr_options.port_range : (item.from_port >= 0 && item.from_port <= 65535)]))
      )
    ])
    error_message = "must be a valid port number (0-65535)"
  }
  validation {
    condition = alltrue([
      for k, v in var.verifiedaccess_endpoints : (
        v.cidr_options == null || (alltrue([for item in v.cidr_options.port_range : (item.to_port >= 0 && item.to_port <= 65535)]))
      )
    ])
    error_message = "must be a valid port number (0-65535)"
  }
  validation {
    condition = alltrue([
      for k, v in var.verifiedaccess_endpoints : (
        v.load_balancer_options == null || (v.load_balancer_options.port_range == null || alltrue([for item in v.load_balancer_options.port_range : (item.from_port >= 0 && item.from_port <= 65535)]))
      )
    ])
    error_message = "must be a valid port number (0-65535)"
  }
  validation {
    condition = alltrue([
      for k, v in var.verifiedaccess_endpoints : (
        v.load_balancer_options == null || (v.load_balancer_options.port_range == null || alltrue([for item in v.load_balancer_options.port_range : (item.to_port >= 0 && item.to_port <= 65535)]))
      )
    ])
    error_message = "must be a valid port number (0-65535)"
  }
  validation {
    condition = alltrue([
      for k, v in var.verifiedaccess_endpoints : (
        v.network_interface_options == null || (v.network_interface_options.port_range == null || alltrue([for item in v.network_interface_options.port_range : (item.from_port >= 0 && item.from_port <= 65535)]))
      )
    ])
    error_message = "must be a valid port number (0-65535)"
  }
  validation {
    condition = alltrue([
      for k, v in var.verifiedaccess_endpoints : (
        v.network_interface_options == null || (v.network_interface_options.port_range == null || alltrue([for item in v.network_interface_options.port_range : (item.to_port >= 0 && item.to_port <= 65535)]))
      )
    ])
    error_message = "must be a valid port number (0-65535)"
  }
  # Note: 16 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

