terraform {
  backend "local" {
    path = "C:\Users\SANJANITH\Documents\Terraform\StateFile\terraform.tfstate"
  }
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.5.1"
    }
  }
}