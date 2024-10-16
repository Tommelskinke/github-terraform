terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.4.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-backend-tfstate-esh"    # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
    storage_account_name = "sabetfs0h22mzsx99"         # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "tfstate"                   # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "backend.terraform.tfstate" # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.

  }
}

provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
  }
  subscription_id = "683886f5-1985-4666-a868-6e00a44de5bd"
  client_id       = "6b067221-787a-4af1-9db4-23b857f8be83"
  client_secret   = "k.t8Q~K5PUrDx~wuN5RHbFoOfdmk777o4B1naa~s"
  tenant_id       = "dd606718-fb9d-4d8c-b04b-9b5143d2976c"
}
