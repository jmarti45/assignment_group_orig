# assign reader role for team working on Management group 
resource "azurerm_role_assignment" "management" {
  scope                = var.mgroup
  role_definition_name = "reader"
  principal_id         = azuread_group.group1.object_id
}

