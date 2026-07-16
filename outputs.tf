output "cosmosdb_sql_role_assignments_id" {
  description = "Map of id values across all cosmosdb_sql_role_assignments, keyed the same as var.cosmosdb_sql_role_assignments"
  value       = { for k, v in azurerm_cosmosdb_sql_role_assignment.cosmosdb_sql_role_assignments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cosmosdb_sql_role_assignments_account_name" {
  description = "Map of account_name values across all cosmosdb_sql_role_assignments, keyed the same as var.cosmosdb_sql_role_assignments"
  value       = { for k, v in azurerm_cosmosdb_sql_role_assignment.cosmosdb_sql_role_assignments : k => v.account_name if v.account_name != null && length(v.account_name) > 0 }
}
output "cosmosdb_sql_role_assignments_name" {
  description = "Map of name values across all cosmosdb_sql_role_assignments, keyed the same as var.cosmosdb_sql_role_assignments"
  value       = { for k, v in azurerm_cosmosdb_sql_role_assignment.cosmosdb_sql_role_assignments : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cosmosdb_sql_role_assignments_principal_id" {
  description = "Map of principal_id values across all cosmosdb_sql_role_assignments, keyed the same as var.cosmosdb_sql_role_assignments"
  value       = { for k, v in azurerm_cosmosdb_sql_role_assignment.cosmosdb_sql_role_assignments : k => v.principal_id if v.principal_id != null && length(v.principal_id) > 0 }
}
output "cosmosdb_sql_role_assignments_resource_group_name" {
  description = "Map of resource_group_name values across all cosmosdb_sql_role_assignments, keyed the same as var.cosmosdb_sql_role_assignments"
  value       = { for k, v in azurerm_cosmosdb_sql_role_assignment.cosmosdb_sql_role_assignments : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "cosmosdb_sql_role_assignments_role_definition_id" {
  description = "Map of role_definition_id values across all cosmosdb_sql_role_assignments, keyed the same as var.cosmosdb_sql_role_assignments"
  value       = { for k, v in azurerm_cosmosdb_sql_role_assignment.cosmosdb_sql_role_assignments : k => v.role_definition_id if v.role_definition_id != null && length(v.role_definition_id) > 0 }
}
output "cosmosdb_sql_role_assignments_scope" {
  description = "Map of scope values across all cosmosdb_sql_role_assignments, keyed the same as var.cosmosdb_sql_role_assignments"
  value       = { for k, v in azurerm_cosmosdb_sql_role_assignment.cosmosdb_sql_role_assignments : k => v.scope if v.scope != null && length(v.scope) > 0 }
}

