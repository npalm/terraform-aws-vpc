output "vpc_id" {
  value = "${module.vpc.vpc_id}"
}

output "vpc_cidr" {
  value = "${module.vpc.vpc_cidr}"
}

output "public_subnets" {
  value = "${module.vpc.public_subnets}"
}

output "private_subnets" {
  value = "${module.vpc.private_subnets}"
}

output "availability_zones" {
  value = "${module.vpc.availability_zones}"
}

# output "private_dns_zone_id" {
#   value = "${module.vpc.private_dns_zone_id}"
# }
#
# output "private_domain_name" {
#   value = "${module.vpc.private_domain_name}"
# }

