# assign reader role for team working on Management group 
resource "azurerm_role_assignment" "management1" {
  scope                = var.managementgroup
  role_definition_name = "reader"
  principal_id         = azuread_group.example.object_id
}

