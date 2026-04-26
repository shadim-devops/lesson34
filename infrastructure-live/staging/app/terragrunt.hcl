include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../modules/app"
}

dependency "vpc" {
  config_path = "../vpc"

  mock_outputs = {
    subnet_id = "subnet-123456"
  }
}

inputs = {
  subnet_id = dependency.vpc.outputs.subnet_id
}
