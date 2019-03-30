resource "aws_vpc" "shekhar" {
  cidr_block       = "172.16.0.0/16"
  instance_tenancy = "dedicated"
  enable_dns_support = true
  enable_dns_hostnames = true

  tags {
    Name = "IBM_VPC"
  }
}

