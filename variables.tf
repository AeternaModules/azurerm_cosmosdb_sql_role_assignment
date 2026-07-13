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
  # --- Unconfirmed validation candidates, derived from azurerm_cosmosdb_sql_role_assignment's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   condition: can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", value))
  #   message:   must be a valid UUID
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: account_name
  #   source:    [from validate.CosmosAccountName] !matched
  # path: principal_id
  #   condition: can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", value))
  #   message:   must be a valid UUID
  # path: scope
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: role_definition_id
  #   source:    [from rbacs.ValidateSqlRoleDefinitionID] !ok
  # path: role_definition_id
  #   source:    [from rbacs.ValidateSqlRoleDefinitionID] err != nil
}

