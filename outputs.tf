output "core_public_ip_pools_lookup_id" {
  description = "Map of id values across all core_public_ip_pools_lookup, keyed the same as var.core_public_ip_pools_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_core_public_ip_pools.core_public_ip_pools_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "core_public_ip_pools_lookup_byoip_range_id" {
  description = "Map of byoip_range_id values across all core_public_ip_pools_lookup, keyed the same as var.core_public_ip_pools_lookup except keys with no byoip_range_id are omitted"
  value       = { for k, v in data.oci_core_public_ip_pools.core_public_ip_pools_lookup : k => v.byoip_range_id if v.byoip_range_id != null && length(v.byoip_range_id) > 0 }
}
output "core_public_ip_pools_lookup_compartment_id" {
  description = "Map of compartment_id values across all core_public_ip_pools_lookup, keyed the same as var.core_public_ip_pools_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_core_public_ip_pools.core_public_ip_pools_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "core_public_ip_pools_lookup_display_name" {
  description = "Map of display_name values across all core_public_ip_pools_lookup, keyed the same as var.core_public_ip_pools_lookup except keys with no display_name are omitted"
  value       = { for k, v in data.oci_core_public_ip_pools.core_public_ip_pools_lookup : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "core_public_ip_pools_lookup_filter" {
  description = "Map of filter values across all core_public_ip_pools_lookup, keyed the same as var.core_public_ip_pools_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_core_public_ip_pools.core_public_ip_pools_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "core_public_ip_pools_lookup_public_ip_pool_collection" {
  description = "Map of public_ip_pool_collection values across all core_public_ip_pools_lookup, keyed the same as var.core_public_ip_pools_lookup except keys with no public_ip_pool_collection are omitted"
  value       = { for k, v in data.oci_core_public_ip_pools.core_public_ip_pools_lookup : k => v.public_ip_pool_collection if v.public_ip_pool_collection != null && length(v.public_ip_pool_collection) > 0 }
}

