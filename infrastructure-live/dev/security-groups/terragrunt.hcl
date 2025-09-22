terraform {
	source = "../../../infrastructure-modules/security-groups"
}

dependency "vpc" {
	config_path = "../vpc"
}

inputs = {
	name_prefix = "dev"
	vpc_id      = dependency.vpc.outputs.vpc_id
}
