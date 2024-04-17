resource "azurerm_container_registry" "george_acr" {
  name                = "${local.name_prefix}acr"
  resource_group_name = azurerm_resource_group.docker_agentpool_rg.name
  location            = azurerm_resource_group.docker_agentpool_rg.location
  sku                 = "Premium"
  admin_enabled       = true

}

#resource "azurerm_private_endpoint" "acr_private_endpoint" {
#  name                = "acrPrivateEndpoint"
#  resource_group_name = azurerm_resource_group.docker_agentpool_rg.name
#  location            = azurerm_resource_group.docker_agentpool_rg.location
#  subnet_id           = azurerm_subnet.private_subnet.id
#
#  private_service_connection {
#    name                           = "acrPrivateConnection"
#    private_connection_resource_id = azurerm_container_registry.george_acr.id
#    is_manual_connection           = false
#    subresource_names              = ["registry"]
#  }
#}

