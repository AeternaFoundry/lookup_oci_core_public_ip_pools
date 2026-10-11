variable "core_public_ip_pools_lookup" {
  description = <<EOT
Map of core_public_ip_pools_lookup, attributes below
Required:
    - compartment_id
Optional:
    - byoip_range_id
    - display_name
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id = string
    byoip_range_id = optional(string)
    display_name   = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

