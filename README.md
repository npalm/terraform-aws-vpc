# Terraform module for creating a VPC for AWS

This modules is designed for creating a VPC. Private subnet can be activated optionally to spport [Scenario 2: VPC with Public and Private Subnets (NAT)](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Scenario2.html)

For a standalone example see `test/main.tf`

## Example usages:
```
module "vpc" {
  source = "git::https://github.com/npalm/tf-aws-vpc.git?ref=0.5"

  environment = "my-awsome-project"
  aws_region  = "eu-west-1"

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



## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| availability_zones |  | map | `<map>` | no |
| aws_region | The Amazon region. | string | - | yes |
| cidr_block | The CDIR block used for the VPC. | string | `10.0.0.0/16` | no |
| create_private_hosted_zone | If true a privated hosted zone is created. | string | `true` | no |
| create_private_subnets | If true create a private subnet for each availability zone including a NAT gateway. | string | `true` | no |
| environment | A logical name that will be used as prefix and tag for the created resources. | string | `vpc-dev` | no |
| public_subnet_map_public_ip_on_launch | Set the default behavior for instances created in the VPC. If true by default a publi ip will be assigned. | string | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| availability_zones | List of the availability zones. |
| private_dns_zone_id | The id of the private DNS zone, if not created an empty string. |
| private_domain_name | The name assigned to the private DNS zone, if not created an empty string. |
| private_subnets | A list of the private subnets. |
| public_subnets | A list of the public subnets. |
| vpc_cidr | The CDIR block used for the VPC. |
| vpc_id | The id of the VPC. |
