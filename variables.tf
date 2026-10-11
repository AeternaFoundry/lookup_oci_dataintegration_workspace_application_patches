variable "dataintegration_workspace_application_patches_lookup" {
  description = <<EOT
Map of dataintegration_workspace_application_patches_lookup, attributes below
Required:
    - application_key
    - workspace_id
Optional:
    - fields
    - identifier
    - name
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    application_key = string
    workspace_id    = string
    fields          = optional(list(string))
    identifier      = optional(list(string))
    name            = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

