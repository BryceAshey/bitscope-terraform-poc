terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/bitscoperm"
      version = "=1.0.0"
    }
  }
}

# Configure the BitScope Provider
provider "bitscoperm" {
  features {}
}
