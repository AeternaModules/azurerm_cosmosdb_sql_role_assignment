output "cosmosdb_sql_role_assignments_id" {
  description = "Map of id values across all cosmosdb_sql_role_assignments, keyed the same as var.cosmosdb_sql_role_assignments"
  value       = { for k, v in azurerm_cosmosdb_sql_role_assignment.cosmosdb_sql_role_assignments : k => v.id }
}
output "cosmosdb_sql_role_assignments_account_name" {
  description = "Map of account_name values across all cosmosdb_sql_role_assignments, keyed the same as var.cosmosdb_sql_role_assignments"
  value       = { for k, v in azurerm_cosmosdb_sql_role_assignment.cosmosdb_sql_role_assignments : k => v.account_name }
}
output "cosmosdb_sql_role_assignments_name" {
  description = "Map of name values across all cosmosdb_sql_role_assignments, keyed the same as var.cosmosdb_sql_role_assignments"
  value       = { for k, v in azurerm_cosmosdb_sql_role_assignment.cosmosdb_sql_role_assignments : k => v.name }
}
output "cosmosdb_sql_role_assignments_principal_id" {
  description = "Map of principal_id values across all cosmosdb_sql_role_assignments, keyed the same as var.cosmosdb_sql_role_assignments"
  value       = { for k, v in azurerm_cosmosdb_sql_role_assignment.cosmosdb_sql_role_assignments : k => v.principal_id }
}
output "cosmosdb_sql_role_assignments_resource_group_name" {
  description = "Map of resource_group_name values across all cosmosdb_sql_role_assignments, keyed the same as var.cosmosdb_sql_role_assignments"
  value       = { for k, v in azurerm_cosmosdb_sql_role_assignment.cosmosdb_sql_role_assignments : k => v.resource_group_name }
}
output "cosmosdb_sql_role_assignments_role_definition_id" {
  description = "Map of role_definition_id values across all cosmosdb_sql_role_assignments, keyed the same as var.cosmosdb_sql_role_assignments"
  value       = { for k, v in azurerm_cosmosdb_sql_role_assignment.cosmosdb_sql_role_assignments : k => v.role_definition_id }
}
output "cosmosdb_sql_role_assignments_scope" {
  description = "Map of scope values across all cosmosdb_sql_role_assignments, keyed the same as var.cosmosdb_sql_role_assignments"
  value       = { for k, v in azurerm_cosmosdb_sql_role_assignment.cosmosdb_sql_role_assignments : k => v.scope }
}

