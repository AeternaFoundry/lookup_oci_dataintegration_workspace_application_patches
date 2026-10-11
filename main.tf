data "oci_dataintegration_workspace_application_patches" "dataintegration_workspace_application_patches_lookup" {
  for_each = var.dataintegration_workspace_application_patches_lookup

  application_key = each.value.application_key
  workspace_id    = each.value.workspace_id
  fields          = each.value.fields
  identifier      = each.value.identifier
  name            = each.value.name

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

