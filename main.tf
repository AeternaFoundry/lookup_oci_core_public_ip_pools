data "oci_core_public_ip_pools" "core_public_ip_pools_lookup" {
  for_each = var.core_public_ip_pools_lookup

  compartment_id = each.value.compartment_id
  byoip_range_id = each.value.byoip_range_id
  display_name   = each.value.display_name

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

