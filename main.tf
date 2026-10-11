resource "databricks_connection" "connections" {
  for_each = var.connections

  comment         = each.value.comment
  connection_type = each.value.connection_type
  name            = each.value.name
  options         = each.value.options
  owner           = each.value.owner
  parent          = each.value.parent
  properties      = each.value.properties
  read_only       = each.value.read_only

  dynamic "environment_settings" {
    for_each = each.value.environment_settings != null ? [each.value.environment_settings] : []
    content {
      environment_version = environment_settings.value.environment_version
      java_dependencies   = environment_settings.value.java_dependencies
    }
  }

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

