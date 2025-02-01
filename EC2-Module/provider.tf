provider "aws" {
  region = "us-east-1"
}

terraform{
    backend "S3" {
        bucket="sunil-prod-bucket"
        key="sample-ec2"
        region   = "us-east-1"
        dynamodb_table = "sunil-dev-lock"
    }
}
