# Development environment EC2 configuration
include "root" {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../modules/ec2"
}

inputs = {
  environment   = "development"
  owner         = "dev-team"
  project       = "simple-tg"
  instance_type = "t3.large"
  bucket_name   = "raj-dev-bucket-default"
  db_password   = "DevPassword123!"
}
