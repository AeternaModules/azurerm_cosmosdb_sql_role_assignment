variable "cosmosdb_sql_role_assignments" {
  description = <<EOT
Map of cosmosdb_sql_role_assignments, attributes below
Required:
    - account_name
    - principal_id
    - resource_group_name
    - role_definition_id
    - scope
Optional:
    - name
EOT

  type = map(object({
    account_name        = string
    principal_id        = string
    resource_group_name = string
    role_definition_id  = string
    scope               = string
    name                = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_sql_role_assignments : (
        v.name == null || (can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.name)))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_sql_role_assignments : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_sql_role_assignments : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_sql_role_assignments : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_sql_role_assignments : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.principal_id))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_sql_role_assignments : (
        length(v.scope) > 0
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

