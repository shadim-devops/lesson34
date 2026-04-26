include "root" {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../modules/vpc"
}

inputs = {
  name = "dev-vpc"
  cidr = "10.0.0.0/16"
}