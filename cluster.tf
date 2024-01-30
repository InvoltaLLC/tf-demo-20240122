# resource "azurerm_kubernetes_cluster" "myfirstcluster" {
#   name                = "demo1dev_cluster"
#   location            = azurerm_resource_group.myfirstrg.location
#   resource_group_name = azurerm_resource_group.myfirstrg.name
#   dns_prefix          = "exampleaks1"

#   default_node_pool {
#     name       = "default"
#     node_count = 1
#     vm_size    = "Standard_D2_v2"
#   }

#   identity {
#     type = "SystemAssigned"
#   }

#   tags = var.tags
# }