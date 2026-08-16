terraform {
  backend "azurerm" {
    resource_group_name  = "terraform-grp"
    storage_account_name = "terraform124578"
    container_name       = "terraform-prod"
    key                  = "terraform.tfstate"
    subscription_id      = var.subscription_id
    client_secret        = var.client_secret
    client_id            = var.client_id
    tenant_id            = var.tenant_id


  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}
provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  client_secret   = var.client_secret
  client_id       = var.client_id
  tenant_id       = var.tenant_id


}