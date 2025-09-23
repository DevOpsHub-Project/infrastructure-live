include "root" {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../infrastructure-modules/kms"
}

inputs = {
  name_prefix = "devopshub-dev"
  environment = "dev"
}
