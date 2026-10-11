output "connections_id" {
  description = "Map of id values across all connections, keyed the same as var.connections except keys with no id are omitted"
  value       = { for k, v in databricks_connection.connections : k => v.id if v.id != null && length(v.id) > 0 }
}
output "connections_comment" {
  description = "Map of comment values across all connections, keyed the same as var.connections except keys with no comment are omitted"
  value       = { for k, v in databricks_connection.connections : k => v.comment if v.comment != null && length(v.comment) > 0 }
}
output "connections_connection_id" {
  description = "Map of connection_id values across all connections, keyed the same as var.connections except keys with no connection_id are omitted"
  value       = { for k, v in databricks_connection.connections : k => v.connection_id if v.connection_id != null && length(v.connection_id) > 0 }
}
output "connections_connection_type" {
  description = "Map of connection_type values across all connections, keyed the same as var.connections except keys with no connection_type are omitted"
  value       = { for k, v in databricks_connection.connections : k => v.connection_type if v.connection_type != null && length(v.connection_type) > 0 }
}
output "connections_created_at" {
  description = "Map of created_at values across all connections, keyed the same as var.connections except keys with no created_at are omitted"
  value       = { for k, v in databricks_connection.connections : k => v.created_at if v.created_at != null }
}
output "connections_created_by" {
  description = "Map of created_by values across all connections, keyed the same as var.connections except keys with no created_by are omitted"
  value       = { for k, v in databricks_connection.connections : k => v.created_by if v.created_by != null && length(v.created_by) > 0 }
}
output "connections_credential_type" {
  description = "Map of credential_type values across all connections, keyed the same as var.connections except keys with no credential_type are omitted"
  value       = { for k, v in databricks_connection.connections : k => v.credential_type if v.credential_type != null && length(v.credential_type) > 0 }
}
output "connections_environment_settings" {
  description = "Map of environment_settings values across all connections, keyed the same as var.connections except keys with no environment_settings are omitted"
  value       = { for k, v in databricks_connection.connections : k => one(v.environment_settings) if v.environment_settings != null && length(v.environment_settings) > 0 }
}
output "connections_full_name" {
  description = "Map of full_name values across all connections, keyed the same as var.connections except keys with no full_name are omitted"
  value       = { for k, v in databricks_connection.connections : k => v.full_name if v.full_name != null && length(v.full_name) > 0 }
}
output "connections_metastore_id" {
  description = "Map of metastore_id values across all connections, keyed the same as var.connections except keys with no metastore_id are omitted"
  value       = { for k, v in databricks_connection.connections : k => v.metastore_id if v.metastore_id != null && length(v.metastore_id) > 0 }
}
output "connections_name" {
  description = "Map of name values across all connections, keyed the same as var.connections except keys with no name are omitted"
  value       = { for k, v in databricks_connection.connections : k => v.name if v.name != null && length(v.name) > 0 }
}
output "connections_options" {
  description = "Map of options values across all connections, keyed the same as var.connections except keys with no options are omitted"
  value       = { for k, v in databricks_connection.connections : k => v.options if v.options != null && length(v.options) > 0 }
  sensitive   = true
}
output "connections_owner" {
  description = "Map of owner values across all connections, keyed the same as var.connections except keys with no owner are omitted"
  value       = { for k, v in databricks_connection.connections : k => v.owner if v.owner != null && length(v.owner) > 0 }
}
output "connections_parent" {
  description = "Map of parent values across all connections, keyed the same as var.connections except keys with no parent are omitted"
  value       = { for k, v in databricks_connection.connections : k => v.parent if v.parent != null && length(v.parent) > 0 }
}
output "connections_properties" {
  description = "Map of properties values across all connections, keyed the same as var.connections except keys with no properties are omitted"
  value       = { for k, v in databricks_connection.connections : k => v.properties if v.properties != null && length(v.properties) > 0 }
}
output "connections_provider_config" {
  description = "Map of provider_config values across all connections, keyed the same as var.connections except keys with no provider_config are omitted"
  value       = { for k, v in databricks_connection.connections : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "connections_provisioning_info" {
  description = "Map of provisioning_info values across all connections, keyed the same as var.connections except keys with no provisioning_info are omitted"
  value       = { for k, v in databricks_connection.connections : k => v.provisioning_info if v.provisioning_info != null && length(v.provisioning_info) > 0 }
}
output "connections_read_only" {
  description = "Map of read_only values across all connections, keyed the same as var.connections except keys with no read_only are omitted"
  value       = { for k, v in databricks_connection.connections : k => v.read_only if v.read_only != null }
}
output "connections_securable_type" {
  description = "Map of securable_type values across all connections, keyed the same as var.connections except keys with no securable_type are omitted"
  value       = { for k, v in databricks_connection.connections : k => v.securable_type if v.securable_type != null && length(v.securable_type) > 0 }
}
output "connections_updated_at" {
  description = "Map of updated_at values across all connections, keyed the same as var.connections except keys with no updated_at are omitted"
  value       = { for k, v in databricks_connection.connections : k => v.updated_at if v.updated_at != null }
}
output "connections_updated_by" {
  description = "Map of updated_by values across all connections, keyed the same as var.connections except keys with no updated_by are omitted"
  value       = { for k, v in databricks_connection.connections : k => v.updated_by if v.updated_by != null && length(v.updated_by) > 0 }
}
output "connections_url" {
  description = "Map of url values across all connections, keyed the same as var.connections except keys with no url are omitted"
  value       = { for k, v in databricks_connection.connections : k => v.url if v.url != null && length(v.url) > 0 }
}

