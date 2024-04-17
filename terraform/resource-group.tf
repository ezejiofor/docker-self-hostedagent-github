locals {
  name_prefix      = "george"
  project          = "aks"
  environment      = "dev"
  private_key_path = "/mnt/c/Users/OEZEJIOF/Documents/devops/repos/GEORGE-POC/george-aks-demo/ssh-keys/demokey.pem"
}

data "azurerm_subscription" "primary" {}

data "azurerm_client_config" "current" {}

resource "random_string" "main" {
  length  = 8
  upper   = false
  special = false
}

resource "azurerm_resource_group" "docker_agentpool_rg" {
  name     = var.resource_group
  location = var.location
}
