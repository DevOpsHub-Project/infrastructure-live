include "root" {
  path = find_in_parent_folders()
}

terraform {
	source = "../../../infrastructure-modules/vpc"
}

inputs = {
	name       = "dev-vpc"
	cidr_block = "10.0.0.0/16"
	public_subnet_count = 2
	private_subnet_count = 2
	enable_nat_gateway  = true
}