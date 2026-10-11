variable "availability_zones_lookup" {
  description = <<EOT
Map of availability_zones_lookup, attributes below
Optional:
    - all_availability_zones
    - exclude_names
    - exclude_zone_ids
    - region
    - state
    - filter (block):
        - name (required)
        - values (required)
EOT

  type = map(object({
    all_availability_zones = optional(bool)
    exclude_names          = optional(set(string))
    exclude_zone_ids       = optional(set(string))
    region                 = optional(string)
    state                  = optional(string)
    filter = optional(list(object({
      name   = string
      values = set(string)
    })))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

