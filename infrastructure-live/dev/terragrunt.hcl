remote_state {
	backend = "s3"
	generate = {
		path      = "backend.tf"
		if_exists = "overwrite_terragrunt"
	}
	config = {
		bucket         = "devopshub-tf-state-${get_aws_account_id()}"
		key            = "${path_relative_to_include()}/terraform.tfstate"
		region         = "us-east-1"
		encrypt        = true
		dynamodb_table = "devopshub-tf-locks"
	}
}

# Generate provider configuration
generate "provider" {
	path = "provider.tf"
	if_exists = "overwrite_terragrunt"
	contents = <<EOF
provider "aws" {
	region = "${local.aws_region}"

	default_tags {
		tags = {
			Environment = "${local.environment}"
			Project     = "DevOpsHub"
			ManagedBy   = "Terraform"
		}
	}
}
EOF
}

# Common variables
locals {
	aws_region  = "us-east-1"
	environment = "dev"
}
