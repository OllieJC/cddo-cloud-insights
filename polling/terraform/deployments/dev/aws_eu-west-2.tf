provider "aws" {
  region = "eu-west-2"
}

module "co-cddo-cloud-insights" {
  source           = "../../code"
  role_suffix      = "-dev"
  policy_suffix    = "-dev"
  lambda_suffix    = "-dev"
  s3_bucket_suffix = "-dev"
  additional_tags  = {
    "Environment": "development"
  }
}
