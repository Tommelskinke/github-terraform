terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.4.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-backend-tfstate-esh" # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
    storage_account_name = "sabetfs0h22mzsx99"      # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "tfstate"                # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "web.terraform.tfstate"  # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.

  }
}
