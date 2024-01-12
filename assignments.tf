# assign reader role for team working on subscription 
resource "azurerm_role_assignment" "subscription1" {
  scope = var.subscription
  #scope                = "/subscriptions/${var.subscription}"
  role_definition_name = "Contributor"
  principal_id         = azuread_group.example.object_id
}
# assign reader role for team working on Management group 
resource "azurerm_role_assignment" "management1" {
  scope                = azurerm_management_group.managementgroup_childA0.id
  role_definition_name = "reader"
  principal_id         = azuread_group.example.object_id
}