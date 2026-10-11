data "aws_availability_zones" "availability_zones_lookup" {
  for_each = var.availability_zones_lookup

  all_availability_zones = each.value.all_availability_zones
  exclude_names          = each.value.exclude_names
  exclude_zone_ids       = each.value.exclude_zone_ids
  region                 = each.value.region
  state                  = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      values = filter.value.values
    }
  }
}

