# Terraform module for creating a VPC for AWS

This modules is designed for creating a VPC. Private subnet can be activated optionally to spport [Scenario 2: VPC with Public and Private Subnets (NAT)](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Scenario2.html)

For a standalone example see `test/main.tf`

Example usages:
```
module "vpc" {
  source = "git::https://github.com/npalm/tf-aws-vpc.git?ref=0.5"

  key        = "my-awsome-project"
  aws_region = "eu-west-1"

  // optional, defaults
  create_private_hosted_zone = "true"
  create_private_subnets     = "true"
  cidr_block = "10.0.0.0/16"

  // example to override default availability_zones
  availability_zones = {
    eu-west-1 = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
  }
}

```
