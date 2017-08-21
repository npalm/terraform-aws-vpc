variable "environment" {
  type    = "string"
  default = "vpc-dev"
}

variable "aws_region" {
  type        = "string"
  description = "The Amazon region"
}

variable "cidr_block" {
  default = "10.0.0.0/16"
}

variable "availability_zones" {
  type = "map"

  default = {
    us-east-1      = ["us-east-1a", "eu-east-1b", "us-east-1c", "eu-east-1e"]
    us-east-2      = ["us-east-2a", "eu-east-2b", "eu-east-2c"]
    us-west-1      = ["us-west-1b", "us-west-1c"]
    us-west-2      = ["us-west-2a", "us-west-2b", "us-west-2c"]
    ca-central-1   = ["ca-central-1a", "ca-central-1b"]
    eu-west-1      = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
    eu-central-1   = ["eu-west-1a", "eu-west-1b"]
    ap-northeast-1 = ["ap-northeast-1a", "ap-northeast-1c"]
    ap-southeast-1 = ["ap-southeast-1a", "ap-southeast-1b"]
    ap-southeast-1 = ["ap-southeast-2a", "ap-southeast-2b"]
  }
}

variable "create_private_subnets" {
  default = "true"
}

variable "create_private_hosted_zone" {
  default = "true"
}

variable "public_subnet_map_public_ip_on_launch" {
  default = "false"
}
