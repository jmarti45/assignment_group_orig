data "azuread_client_config" "current" {}

resource "azuread_group" "group1" {
  display_name     = var.securitygroup
  owners           = [data.azuread_client_config.current.object_id]
  security_enabled = true
}
