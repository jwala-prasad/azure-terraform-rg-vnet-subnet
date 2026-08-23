variable"rgs"{}
resource "azurerm_resource_group" "rg-name" {
    for_each = var.rgs
  name     = each.value.name
  location = each.value.location
  # Testing feature branch
}
