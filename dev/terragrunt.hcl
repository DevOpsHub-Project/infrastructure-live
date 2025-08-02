remote_state {
	backend = "s3"
	config = {
		bucket         = "devopshub-tf-state"
		key            = "dev/vpc/terraform.tfstate"
		region         = "us-east-1"
		dynamodb_table = "devopshub-tf-locks"
		encrypt        = true
	}
}