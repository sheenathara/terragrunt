include {
  path = find_in_parent_folders("terragrunt.hcl")
}

terraform {
  source = "../../../modules/s3"
}

inputs = {
  region      = "us-east-1"
  bucket_name = "testim-prod-bucket"
}
