output "vpc_id" {
  description = "The id of the VPC."
  value       = "${aws_vpc.vpc.id}"
}

output "vpc_cidr" {
  description = "The CDIR block used for the VPC."
  value       = "${aws_vpc.vpc.cidr_block}"
}

output "public_subnets" {
  description = "A list of the public subnets."
  value       = ["${aws_subnet.public_subnet.*.id}"]
}

output "private_subnets" {
  description = "A list of the private subnets."
  value       = ["${aws_subnet.private_subnet.*.id}"]
}

output "availability_zones" {
  description = "List of the availability zones."
  value       = "${var.availability_zones[var.aws_region]}"
}

output "private_dns_zone_id" {
  description = "The id of the private DNS zone, if not created an empty string."
  value       = "${element(concat(aws_route53_zone.local.*.id, list("")), 0)}"
}

output "private_domain_name" {
  description = "The name assigned to the private DNS zone, if not created an empty string."
  value       = "${element(concat(aws_route53_zone.local.*.name, list("")), 0)}"
}
