terraform{
  backend "s3" {
    bucket         = "terraform-state-backend-vamsee"
    key            = "terraform/two-tier"
    region         = "us-west-1"
    encrypt        = true
    #dynamodb_table = "Dynamodb-lock"
  }
}
