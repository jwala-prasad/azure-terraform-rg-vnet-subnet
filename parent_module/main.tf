module "rgs" {
  source = "../child_module/azurerm_rg"
  rgs    = var.rgs
}
module "vnts" {
  depends_on = [module.rgs]
  source     = "../child_module/azurerm_vent"
  vnts       = var.vnts
}
module "snts" {
  depends_on = [module.rgs, module.vnts]
  source     = "../child_module/azurerm_subnet"
  snts       = var.snts
}
