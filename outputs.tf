output "vpc_id" {
  value = "${aws_vpc.vpc.id}"
}

output "vpc_cidr" {
  value = "${aws_vpc.vpc.cidr_block}"
}

/*output "public_subnet_a_id" {
  value = "${module.public_subnet.subnet_id}"
}*/

/*output "private_subnet_a_id" {
  value = "${aws_subnet.private_subnet_a.id}"
}

output "public_subnet_b_id" {
  value = "${aws_subnet.public_subnet_b.id}"
}

output "private_subnet_b_id" {
  value = "${aws_subnet.private_subnet_b.id}"
}*/

/*output "private_dns_zone_id" {
  value = "${aws_route53_zone.local.id}"
}

output "private_domain_name" {
  value = "${aws_route53_zone.local.name}"
}*/
