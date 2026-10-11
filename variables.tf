variable "connections" {
  description = <<EOT
Map of connections, attributes below
Optional:
    - comment
    - connection_type
    - name
    - options
    - owner
    - parent
    - properties
    - read_only
    - environment_settings (block):
        - environment_version (optional)
        - java_dependencies (optional)
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    comment         = optional(string)
    connection_type = optional(string)
    name            = optional(string)
    options         = optional(map(string))
    owner           = optional(string)
    parent          = optional(string)
    properties      = optional(map(string))
    read_only       = optional(bool)
    environment_settings = optional(object({
      environment_version = optional(string)
      java_dependencies   = optional(list(string))
    }))
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

