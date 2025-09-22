locals {
	environment = "dev"
	aws_region  = "us-east-1"

	# Environment-specific settings
	instance_types = {
		web = "t3.micro"
		app = "t3.small"
		db  = "t3.micro"
	}

	# Network configuration
	vpc_cidr = "10.0.0.0/16"

	# Scaling configuration
	min_size = 1
	max_size = 3
	desired_capacity = 2

	# Cost optimization
	enable_spot_instances = true
	enable_nat_gateway = true
}
