remote_state {
	backend = "s3"
	config = {
		bucket         = "devopshub-tf-state2"
		key            = "${path_relative_to_include()}/terraform.tfstate"
		region         = "us-east-1"
		dynamodb_table = "devopshub-tf-locks"
		encrypt        = true
	}
}