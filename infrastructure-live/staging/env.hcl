locals {
	environment = "staging"
	aws_region  = "us-east-1"

	# Environment-specific settings
    instance_types = {
	    web = "t3.small"
	    app = "t3.medium"
	    db  = "t3.small"
	}

	# Network configuration
	vpc_cidr = "10.1.0.0/16"

	# Scaling configuration
	min_size = 2
	max_size = 6
	desired_capacity = 3

	# Cost optimization
	enable_spot_instances = false
	enable_nat_gateway = true
}
