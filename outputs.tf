output "availability_zones_lookup_id" {
  description = "Map of id values across all availability_zones_lookup, keyed the same as var.availability_zones_lookup"
  value       = { for k, v in data.aws_availability_zones.availability_zones_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "availability_zones_lookup_all_availability_zones" {
  description = "Map of all_availability_zones values across all availability_zones_lookup, keyed the same as var.availability_zones_lookup"
  value       = { for k, v in data.aws_availability_zones.availability_zones_lookup : k => v.all_availability_zones if v.all_availability_zones != null }
}
output "availability_zones_lookup_exclude_names" {
  description = "Map of exclude_names values across all availability_zones_lookup, keyed the same as var.availability_zones_lookup"
  value       = { for k, v in data.aws_availability_zones.availability_zones_lookup : k => v.exclude_names if v.exclude_names != null && length(v.exclude_names) > 0 }
}
output "availability_zones_lookup_exclude_zone_ids" {
  description = "Map of exclude_zone_ids values across all availability_zones_lookup, keyed the same as var.availability_zones_lookup"
  value       = { for k, v in data.aws_availability_zones.availability_zones_lookup : k => v.exclude_zone_ids if v.exclude_zone_ids != null && length(v.exclude_zone_ids) > 0 }
}
output "availability_zones_lookup_filter" {
  description = "Map of filter values across all availability_zones_lookup, keyed the same as var.availability_zones_lookup"
  value       = { for k, v in data.aws_availability_zones.availability_zones_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "availability_zones_lookup_group_names" {
  description = "Map of group_names values across all availability_zones_lookup, keyed the same as var.availability_zones_lookup"
  value       = { for k, v in data.aws_availability_zones.availability_zones_lookup : k => v.group_names if v.group_names != null && length(v.group_names) > 0 }
}
output "availability_zones_lookup_names" {
  description = "Map of names values across all availability_zones_lookup, keyed the same as var.availability_zones_lookup"
  value       = { for k, v in data.aws_availability_zones.availability_zones_lookup : k => v.names if v.names != null && length(v.names) > 0 }
}
output "availability_zones_lookup_region" {
  description = "Map of region values across all availability_zones_lookup, keyed the same as var.availability_zones_lookup"
  value       = { for k, v in data.aws_availability_zones.availability_zones_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}
output "availability_zones_lookup_state" {
  description = "Map of state values across all availability_zones_lookup, keyed the same as var.availability_zones_lookup"
  value       = { for k, v in data.aws_availability_zones.availability_zones_lookup : k => v.state if v.state != null && length(v.state) > 0 }
}
output "availability_zones_lookup_zone_ids" {
  description = "Map of zone_ids values across all availability_zones_lookup, keyed the same as var.availability_zones_lookup"
  value       = { for k, v in data.aws_availability_zones.availability_zones_lookup : k => v.zone_ids if v.zone_ids != null && length(v.zone_ids) > 0 }
}

