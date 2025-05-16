terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.5.2"
    }
  }
}

locals {
  environment = "dev"
  upper_case = upper(local.environment)
  base_path = "${path.module}/configs/${local.upper_case}"
}

resource "local_file" "server_configs" {
  filename = "${local.base_path}/server.sh"
  content = "this is an example of local variable"
}