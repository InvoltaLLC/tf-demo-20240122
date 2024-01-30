module "vnet" {
  for_each = azurerm_resource_group.myfirstrg
  source = "./vnet"

  vnet_name = "${each.key}_vnet"
  rg_name = each.value.name
  location = each.value.location
}