module "rg_preprod" {
  source = "../../module/azurerm_resource_group"
  rgs1    = var.rgs2
}
