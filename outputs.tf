output "cosmosdb_sql_role_assignments" {
  description = "All cosmosdb_sql_role_assignment resources"
  value       = azurerm_cosmosdb_sql_role_assignment.cosmosdb_sql_role_assignments
}
output "cosmosdb_sql_role_assignments_account_name" {
  description = "List of account_name values across all cosmosdb_sql_role_assignments"
  value       = [for k, v in azurerm_cosmosdb_sql_role_assignment.cosmosdb_sql_role_assignments : v.account_name]
}
output "cosmosdb_sql_role_assignments_name" {
  description = "List of name values across all cosmosdb_sql_role_assignments"
  value       = [for k, v in azurerm_cosmosdb_sql_role_assignment.cosmosdb_sql_role_assignments : v.name]
}
output "cosmosdb_sql_role_assignments_principal_id" {
  description = "List of principal_id values across all cosmosdb_sql_role_assignments"
  value       = [for k, v in azurerm_cosmosdb_sql_role_assignment.cosmosdb_sql_role_assignments : v.principal_id]
}
output "cosmosdb_sql_role_assignments_resource_group_name" {
  description = "List of resource_group_name values across all cosmosdb_sql_role_assignments"
  value       = [for k, v in azurerm_cosmosdb_sql_role_assignment.cosmosdb_sql_role_assignments : v.resource_group_name]
}
output "cosmosdb_sql_role_assignments_role_definition_id" {
  description = "List of role_definition_id values across all cosmosdb_sql_role_assignments"
  value       = [for k, v in azurerm_cosmosdb_sql_role_assignment.cosmosdb_sql_role_assignments : v.role_definition_id]
}
output "cosmosdb_sql_role_assignments_scope" {
  description = "List of scope values across all cosmosdb_sql_role_assignments"
  value       = [for k, v in azurerm_cosmosdb_sql_role_assignment.cosmosdb_sql_role_assignments : v.scope]
}

